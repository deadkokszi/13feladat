
import axios from 'axios';

const API_KEY = '210d6a5dd3f16419ce349c9f1b200d6d';

export const bringTopRated = async () => {

    return await axios.get(`https://api.themoviedb.org/3/movie/top_rated?api_key=${API_KEY}&language=en-US&page=1`);

}