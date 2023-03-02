
import './Register.css';
import { useEffect, useState } from 'react';

    const [user, setUser] = useState({

        name: '',
        surname: '',
        email: '',
        phone: '',
        Street: '',

        Credit: {
            creditNumber: '',
            owner: '',
            exDate: ''
        }


    })

const [page, setPage] = useState(0);



export const Register = () =>{

    return(

        <div className="Registerdesign">
            <div className='registercardtop'></div>
            <div className="registercardcenter"></div>
            <div className="registercardbotton"></div>
        </div>

    )

}