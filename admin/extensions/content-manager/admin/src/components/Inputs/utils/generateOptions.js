import React from 'react';
import { FormattedMessage } from 'react-intl';
import { useIntl } from 'react-intl';

const generateOptions = (options, isRequired = false) => {
    const { formatMessage } = useIntl();
    return [
        <FormattedMessage id="components.InputSelect.option.placeholder" key="__enum_option_null">
            {msg => (
                <option disabled={isRequired} hidden={isRequired} value="">
                    {msg}
                </option>
            )}
        </FormattedMessage>,
        ...options.map(v => (
            <option key={v} value={v}>
                {formatMessage({ id: v, defaultMessage: v })}
            </option>
        )),
    ]
};

export default generateOptions;
