
import React from 'react';
import './MovieCard.css';

export const MovieCard = ({film}) => {

    return (
        <div className='movieCardDesign'>

            <div>{film.title}</div>
            <div><img className="posterDesign" src={`https://image.tmdb.org/t/p/original/${film.poster_path}`} alt={film.id}/></div>
            <div>{film.release_date}</div>
        </div>
    )
}