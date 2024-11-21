/*
 *
 * HomePage
 *
 */
/* eslint-disable */
import React, { memo, useMemo } from "react";
import { FormattedMessage } from "react-intl";
import { get, upperFirst } from "lodash";
import { auth, LoadingIndicatorPage } from "strapi-helper-plugin";
import PageTitle from "../../components/PageTitle";
import { useModels } from "../../hooks";

import useFetch from "./hooks";
import { Block, Container, Separator } from "./components";
import BlogPost from "./BlogPost";

const HomePage = ({ history: { push } }) => {
  const { error, isLoading, posts } = useFetch();
  // Temporary until we develop the menu API
  const {
    collectionTypes,
    singleTypes,
    isLoading: isLoadingForModels,
  } = useModels();

  const hasAlreadyCreatedContentTypes = useMemo(() => {
    // const filterContentTypes = (contentTypes) =>
    //   contentTypes.filter((c) => c.isDisplayed);

    return (
      filterContentTypes(collectionTypes).length > 1 ||
      filterContentTypes(singleTypes).length > 0
    );
  }, [collectionTypes, singleTypes]);

  if (isLoadingForModels) {
    return <LoadingIndicatorPage />;
  }

  const headerId = hasAlreadyCreatedContentTypes
    ? "HomePage.greetings"
    : "app.components.HomePage.welcome";
  const username = get(auth.getUserInfo(), "firstname", "");

  return (
    <>
      <FormattedMessage id="HomePage.helmet.title">
        {(title) => <PageTitle title={title} />}
      </FormattedMessage>
      <Container className="container-fluid">
        <div className="row">
          <div className="col-lg-12 col-md-12">
            <Block>
              <FormattedMessage
                id={headerId}
                values={{
                  name: upperFirst(username),
                }}
              >
                {(msg) => <h2 id="mainHeader">{msg}</h2>}
              </FormattedMessage>
              <p className="pt-2">
                <FormattedMessage
                  id="home.welcome"
                  defaultMessage="Welcome to Aidea Admin. Here you can control the config rules of the Aidea application."
                />
              </p>
              <Separator style={{ marginTop: 37, marginBottom: 36 }} />
              <h3>
                <FormattedMessage
                  id="home.modules"
                  defaultMessage="System Modules"
                />
              </h3>
              <ul>
                <li>
                  <FormattedMessage
                    id="home.promotion"
                    defaultMessage="Promotion"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.donation"
                    defaultMessage="Donation"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.serology"
                    defaultMessage="Serology"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.processing"
                    defaultMessage="Processing"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.inventory"
                    defaultMessage="Inventory"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.patient"
                    defaultMessage="Patient"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.billing"
                    defaultMessage="Billing"
                  />
                </li>
                <li>
                  <FormattedMessage
                    id="home.distribution"
                    defaultMessage="Distribution"
                  />
                </li>
              </ul>
            </Block>
          </div>
        </div>
      </Container>
    </>
  );
};

export default memo(HomePage);
