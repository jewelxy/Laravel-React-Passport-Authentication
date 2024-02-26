import { createBrowserRouter, RouterProvider } from 'react-router-dom';
import Main from './Components/Main';
import UserDashboard from './Components/User/UserDashboard';
import BookList from './Components/Book/BookList';


function App() {
  const router = createBrowserRouter([
    { path: '/', element: <Main /> },
    { path: '/user', element: <UserDashboard /> },
    { path: '/book', element: <BookList /> },
  ])
  return (
    <div>
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
