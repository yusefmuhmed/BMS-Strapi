import React from 'react';
import PropTypes from 'prop-types';
import { Checkbox } from '@buffetjs/core';
import Wrapper from './Wrapper';
import { useGlobalContext } from 'strapi-helper-plugin';

const Field = ({ name, onChange, value }) => {
    const { formatMessage } = useGlobalContext();

    const handleChange = ({ target: { name, value } }) => {
        onChange({ name, value: !value });
    };

    return (
        <Wrapper>
            <Checkbox name={name} message={formatMessage({id: name, defaultMessage: name})} onChange={handleChange} value={value} />
        </Wrapper>
    );
};

Field.propTypes = {
    name: PropTypes.string.isRequired,
    onChange: PropTypes.func.isRequired,
    value: PropTypes.bool.isRequired,
};

export default Field;
