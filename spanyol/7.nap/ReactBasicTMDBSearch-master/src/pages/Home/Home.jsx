
import React, { useState, useEffect } from 'react';
import { bringTopRated } from '../../services/apiCalls';
import './Home.css';

export const Home = () => {

    const [movies, setMovies] = useState([]);

    useEffect(() => {

        if (movies.length === 0) {

            bringTopRated()
                .then(apiData => {
                    console.log(apiData)

                    setMovies(apiData.data.results);
                })
                .catch(error => console.log(error));


        }


    }, [movies]);

    return (

        <div>
            {
                (movies.length > 0) ? (
                    <div>
                        {
                            movies.map(
                                movie => {
                                    return (
                                        <div key={movie.id}><card film={movie}/></div>
                                    )
                                }
                            )
                        }
                    </div>
                )

                    : (

                        <div>there are no movies yet</div>
                    )


            }
        </div>



    )
}