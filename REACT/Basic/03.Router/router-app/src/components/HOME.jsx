import React from 'react'
import { Link } from 'react-router-dom'

const HOME = () => {
    return (
        <div>
            <h1>HOME</h1>
            <Link to="/about">about으로 가기</Link>
        </div>
    )
}

export default HOME