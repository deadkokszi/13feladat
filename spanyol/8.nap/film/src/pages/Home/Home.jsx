
import React, { useState, useEffect } from 'react';
import { MovieCard } from '../../common/MovieCard/MovieCard';
import { bringTopRated, bringFilmsTitle } from '../../services/apiCalls';
import './Home.css';

export const Home = () => {

    const [movies, setMovies] = useState([]);
    const [searchedMovies, setSearchedMovies] = useState([])

    const [search, setSearch] = useState('');

    const inputHandler = (e) => {

        setSearch(e.target.value);
    }

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

    useEffect(() => {

        if (search !== '') {

            bringFilmsTitle(search)
                .then(
                    searchResults => {
                        setSearchedMovies(searchResults.data.results);
                    }
                )
                .catch(error => console.log(error));
        }

    }, [search]);

    return (
        <div>

            {/* I place the search bar here which will always be available */}

            <div className="searchDesign">
                <input
                    className="inputDesign"
                    name="search"
                    type="text"
                    placeholder="search your movies here..."
                    onChange={(e) => inputHandler(e)}
                />
            </div>

            {
                (movies.length > 0) ? (

                    (search !== '') ? (

                        <div className="showcaseDesign">

                            {

                                searchedMovies.map(
                                    movie => {
                                        return (
                                            <div key={movie.id}><MovieCard film={movie} /></div>
                                        )
                                    }
                                )
                            }

                        </div>

                    ) : (

                        <div className="showcaseDesign">
                            {
                                movies.slice(0, 10).map(
                                    movie => {
                                        return (
                                            <div key={movie.id}><MovieCard film={movie} /></div>
                                        )
                                    }
                                )
                            }
                        </div>

                    )


                )

                    : (

                        <div>there are no movies yet</div>
                    )


            }
        </div >
    )
}