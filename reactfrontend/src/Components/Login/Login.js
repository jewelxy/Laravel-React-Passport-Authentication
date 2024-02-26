import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

const Login = () => {
      const baseurl = process.env.REACT_APP_BASE_API_URL;
      const navigate = useNavigate();
      const [email, setEmail] = useState('');
      const [password, setPassword] = useState('');

      const handleSubmit = async (event) => {
        event.preventDefault();
        try {
            let response;
            const url = `${baseurl}/api/login`
            response = await axios.post(url, {
                email: email,
                password: password,
            });

            toast.success('Login successful!', {
              position: 'top-right',
              autoClose: 3000,
              hideProgressBar: false,
              closeOnClick: true,
              pauseOnHover: true,
              draggable: true,
            });

            sessionStorage.setItem('token', response.data.token);
            sessionStorage.setItem('usertype', response.data.usertype);

            if (response.data.usertype === 'admin') {
                navigate('/user');
            } else if (response.data.usertype === 'user') {
                navigate('/book');
            } 
        } catch (error) {
          toast.error('Invalid email or password. Please try again.', {
            position: 'top-right',
            autoClose: 5000,
            hideProgressBar: false,
            closeOnClick: true,
            pauseOnHover: true,
            draggable: true,
          });
            console.error(error);
        }
    };
    return (
        <div className="flex items-center justify-center min-h-screen bg-gray-100">
        <div className="px-8 py-6 bg-white rounded-lg shadow-md text-left">
          <h3 className="text-2xl font-bold first-line:uppercase text-center">Book Store <span classNameName='text-gray-400 text-lg'>(Test Job)</span></h3>
          <form onSubmit={handleSubmit} className="mt-4 space-y-4">
            <div>
              <label for="email" className="block text-sm font-medium text-gray-700">Email</label>
              <div className="mt-1">
                <input
                 type="email"
                 id="email" 
                 value={email}
                 name="email"
                 onChange={(event) => setEmail(event.target.value)}
                 placeholder="Enter your email"
                className="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-1 focus:ring-blue-500 focus:border-blue-500" />
              </div>
            </div>
            <div>
              <label for="password" className="block text-sm font-medium text-gray-700">Password</label>
              <div className="mt-1">
                <input 
                type="password"
                id="password"
                value={password}
                name="password"
                onChange={(event) => setPassword(event.target.value)}
                placeholder="Enter your password"
                
                  className="w-full px-3 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-1 focus:ring-blue-500 focus:border-blue-500" />
              </div>
            </div>
            <button type="submit" className="inline-flex items-center px-4 py-2 rounded-lg bg-blue-500 text-white font-bold hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500">
              Login
            </button>
          </form>
        </div>
        <ToastContainer position='top-right' autoClose={5000} hideProgressBar={false} newestOnTop closeOnClick rtl={false} pauseOnFocusLoss draggable pauseOnHover />
      </div>
    );
};

export default Login;