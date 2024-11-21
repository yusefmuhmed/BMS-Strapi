/**
 *
 * LeftMenuFooter
 *
 */

 import React from 'react';
 import { PropTypes } from 'prop-types';
 import Wrapper, { A } from './Wrapper';
 
 function LeftMenuFooter({ version }) {
   // PROJECT_TYPE is an env variable defined in the webpack config
   // eslint-disable-next-line no-undef
   const projectType = PROJECT_TYPE;
 
   return (
     <Wrapper>
       <div className="poweredBy">
         <A key="website" href="http://localhost:4000" target="_blank" rel="noopener noreferrer">
           Aidea Admin V1.0
         </A>
       </div>
     </Wrapper>
   );
 }
 
 LeftMenuFooter.propTypes = {
   version: PropTypes.string.isRequired,
 };
 
 export default LeftMenuFooter;
 