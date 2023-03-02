import React, { useState, useEffect } from "react";
import { bringTopRated } from "../../../services/apiCalls";
import './Home.css'

export const home = () =>{

    conts[movies, setMovies] = useState([]);

    useEffect(() =>{

        if(movies.length === 0){
            bringTopRated()
            .then(apiData => {
                console.log(apiData)

            .setMovies()    

            })
            .catch(error => console.log(error))
        }
        },[movies]);


    return(
        
        <div>
            {
                movies.get
            }


            
        </div>

       
    )

}