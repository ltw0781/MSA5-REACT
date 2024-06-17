async function 
fetchData() {
    const response = await fetch/* promise를 반환함 */('https://httpbin.org/get') // GET방식의 데이터를 기본으로 요청함
    // async awaite를 쓰면 비동기 응답을 기다린다.
    console.log(response);
    const data = await response.json()
    return data

    // response.then((result) => {
    //     console.log(result);
    // }) async awaite를 쓰지 않을때는 이런 형식으로 가져와야함

}

fetchData()
    .then((data) => {
        console.log(data);
    })           

console.log(`async awaite 비동기 요청처리`);













