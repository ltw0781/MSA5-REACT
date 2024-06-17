import React from 'react'

// const Card = (props) => {
const Card = ({title, content}) => {
  return (
    <div className='card'>
        <h3>{title}</h3>
        <p>{content}</p>
    </div>
  )
}

export default Card