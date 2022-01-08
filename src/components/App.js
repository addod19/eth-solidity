import React from 'react';

import { Navbar, Welcome, Loader, Services, Transactions, Footer } from './index';


const App = () => {
  return (
    <div className='min-h-screen'>
      <div className='gradient-bg-welcome'>
        <Navbar />
        <Welcome />
      </div>
      <div>
        <Services />
        <Transactions />
        <Footer />
      </div>
    </div>
  )
}

export default App;
