import styled from 'styled-components';
import { Button as Base } from '@buffetjs/core';

const Button = styled(Base)`
  width: 100%;
  background: #B0000D;
  border: 1px solid #B0000D;
  text-transform: ${({ textTransform }) => textTransform};
`;

Button.defaultProps = {
  color: 'primary',
  type: 'button',
  textTransform: 'none',
};

export default Button;
