@GetMapping("/img/{no}")
public void thumbnail(@PathVariable("no") Integer no, HttpServletResponse response) throws Exception {
    if (no == null) return;

    // 1. 파일번호로 파일 정보 조회
    Files file = fileService.select(no);

    // 2. 파일 정보에서 파일 경로 추출
    String filePath = (file != null) ? file.getFilePath() : null;

    File imgFile = null;
    // 이미지가 없을 때 -> no-image.png 로 지정
    boolean existFile = filePath != null && new File(filePath).exists();
    String noImagePath = "classpath:static/img/no-image.png";
    Resource resource = resourceLoader.getResource(noImagePath);

    if (file == null || !existFile) {
        // 기본 이미지 no-image.png
        imgFile = resource.getFile();
    } else {
        imgFile = new File(filePath);
    }

    // 3. 파일 시스템에서 이미지 파일 입력 (이미 imgFile로 설정됨)

    // 4. 이미지의 확장자를 확인해서 Content-Type 응답헤더 지정
    String ext = (filePath != null) ? filePath.substring(filePath.lastIndexOf(".") + 1) : "png"; // png, jpg...
    MediaType mediaType = MediaUtil.getMediaType(ext);
    if (mediaType == null) {
        mediaType = MediaType.IMAGE_PNG;
        imgFile = resource.getFile();
    }
    response.setContentType(mediaType.toString());

    // 5. 이미지 파일 응답
    try (FileInputStream fis = new FileInputStream(imgFile);
         ServletOutputStream sos = response.getOutputStream()) {
        FileCopyUtils.copy(fis, sos);
    } catch (IOException e) {
        // 에러 처리
        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
}
