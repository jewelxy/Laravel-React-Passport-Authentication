import React from 'react';
import { useNavigate } from 'react-router-dom';

const Logout = () => {
    const baseurl = process.env.REACT_APP_BASE_API_URL;
    const navigate = useNavigate();

    const handleLogout = async () => {
        try {
            const response = await fetch(`${baseurl}/api/logout`, {
                method: 'GET',
                headers: {
                    'Authorization': `Bearer ${sessionStorage.getItem('token')}`,
                },
            });

            if (response.ok) {
                // Clear sessionStorage data
                sessionStorage.removeItem('token');
                sessionStorage.removeItem('usertype');

                navigate('/');
            } else {
                console.error('Logout failed');
            }

        } catch (error) {
            console.error('Error during logout:', error);
        }
    };

    return (
        <div className='flex justify-between items-center py-4'>
            <div className='text-lg text-blue-400'>
                <h3>User Type : {sessionStorage.getItem('usertype') === 'admin' ? 'Admin' : 'Reader'}</h3>
            </div>
            <button
                onClick={handleLogout}
                className='text-red-400'>Logout
            </button>
        </div>
    );
};

export default Logout;
