import React, { useEffect, useState } from 'react';
import Logout from '../Login/Logout';
import axios from 'axios';
import { Link } from 'react-router-dom';
import AddBook from './AddBook';

const BookList = () => {
    const baseurl = process.env.REACT_APP_BASE_API_URL;
    const [books, setBooks] = useState([]);
    useEffect(() => {
        const headers = { 'Authorization': `Bearer ${sessionStorage.getItem('token')}` };
        const url = `${baseurl}/api/book`;
        axios.get(url, { headers })
            .then(response => {
                setBooks(response.data);
            });
    }, []);

    const [bookModalOpen, setBookModalOpen] = useState(false);
    const handleBookModalOpen = () => { setBookModalOpen(true) }
    const handleBookModalClose = () => { setBookModalOpen(false) }

    const userType = sessionStorage.getItem('usertype');
    return (
        <>
            {
                userType == null ?
                    (
                        <div className="bg-gray-100 text-gray-700 font-sans">
                            <div className="flex justify-center items-center h-screen">
                                <div className="w-full max-w-sm bg-white rounded-lg shadow-md p-8">
                                    <h1 className="text-3xl font-bold text-center mb-4">Whoops!</h1>
                                    <p className="text-lg text-center mb-8">The page you were looking for could not be found.</p>
                                    <a href="/" className="inline-flex items-center px-4 py-2 bg-blue-500 hover:bg-blue-700 text-white rounded-md font-bold">
                                        <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 14l9-9 9 9"></path></svg>
                                        Go Back Home
                                    </a>
                                </div>
                            </div>
                        </div>
                    )
                    :
                    (
                        <div className="container mx-auto p-4 bg-gray-100">
                            <Logout />
                            <div className="flex justify-between items-center pb-4">
                                {
                                    userType === 'admin' && (
                                        <Link to='/user'><h1 className="text-2xl font-bold text-blue-700">User</h1></Link>
                                    )
                                }
                                <h1 className="text-2xl font-bold text-blue-700">Book</h1>
                                <div className="flex items-center space-x-2">
                                    <div className="relative">
                                        <input type="text" className="px-3 py-2 border rounded focus:outline-none focus:ring-1 focus:ring-blue-500 w-full" placeholder="Search" />
                                        <div className="absolute right-3 top-0 mt-3">
                                            <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 text-gray-400" viewBox="0 0 20 20" fill="currentColor">
                                                <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd" />
                                            </svg>
                                        </div>
                                    </div>
                                    {
                                        userType === 'admin' && (
                                            <button onClick={() => {
                                                handleBookModalOpen()
                                            }} className="px-3 py-2 text-white bg-blue-500 rounded hover:bg-blue-700">

                                                Add Book

                                            </button>

                                        )
                                    }

                                    {
                                        bookModalOpen && (
                                            <AddBook onClose={handleBookModalClose} />
                                        )
                                    }
                                </div>

                            </div>
                            <div className="overflow-x-auto rounded-lg shadow-md bg-white">
                                <table className="w-full text-left table-auto border-collapse">
                                    <thead>
                                        <tr className="text-xs text-center font-medium text-gray-500 border-b border-gray-200">
                                            <th className="px-4 py-2">ID</th>
                                            <th className="px-4 py-2">Book Name</th>
                                            <th className="px-4 py-2">Description</th>
                                            <th className="px-4 py-2">Image</th>
                                            {
                                                userType === 'admin' && (
                                                    <th className="px-4 py-2">Action</th>
                                                )
                                            }

                                        </tr>
                                    </thead>
                                    <tbody>
                                        {
                                            books.map((book, index) => (
                                                <tr key={book.id} className="border-b border-gray-200 hover:bg-gray-100">
                                                    <td className="px-4 py-2">{index + 1}</td>
                                                    <td className="px-4 py-2 text-center">{book.name}</td>
                                                    <td className="px-4 py-2 w-[350px]">{book.description}</td>
                                                    <td className="px-4 py-2 text-center flex justify-center"><img src={book.image} /></td>
                                                    <td className="px-4 py-2 text-center">
                                                        {
                                                            userType === 'admin' && (
                                                                <>
                                                                    <button
                                                                    className='mx-2 text-green-500'>Edit
                                                                    
                                                                    </button>
                                                                    <button className='mx-2 text-red-400'>Delete</button>
                                                                </>
                                                            )
                                                        }
                                                    </td>
                                                </tr>
                                            ))
                                        }
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )
            }
        </>
    );
};

export default BookList;