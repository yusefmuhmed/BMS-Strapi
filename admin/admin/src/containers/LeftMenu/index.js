import React, { memo, useEffect } from "react";
import PropTypes from "prop-types";
import { useLocation } from "react-router-dom";
import {
  LeftMenuLinksSection,
  LeftMenuFooter,
  LeftMenuHeader,
  LinksContainer,
} from "../../components/LeftMenu";
import Loader from "./Loader";
import Wrapper from "./Wrapper";
import useMenuSections from "./useMenuSections";

const LeftMenu = ({ shouldUpdateStrapi, version, plugins, setUpdateMenu }) => {
  const location = useLocation();

  const {
    state: {
      isLoading,
      collectionTypesSectionLinks,
      singleTypesSectionLinks,
      campaignSectionLinks,
      campaignMetaSectionLinks,
      donationSectionLinks,
      donationMetaSectionLinks,
      serologySectionLinks,
      systemSectionLinks,
      generalSectionLinks,
      pluginsSectionLinks,
    },
    toggleLoading,
    generateMenu,
  } = useMenuSections(plugins, shouldUpdateStrapi);

  const filteredCollectionTypeLinks = collectionTypesSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredSingleTypeLinks = singleTypesSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredCampaignSectionLinks = campaignSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredCampaignMetaSectionLinks = campaignMetaSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredDonationSectionLinks = donationSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredDonationMetaSectionLinks = donationMetaSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredSerologySectionLinks = serologySectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  const filteredSystemSectionLinks = systemSectionLinks.filter(
    ({ isDisplayed }) => isDisplayed
  );
  // This effect is really temporary until we create the menu api
  // We need this because we need to regenerate the links when the settings are being changed
  // in the content manager configurations list
  useEffect(() => {
    setUpdateMenu(() => {
      toggleLoading();
      generateMenu();
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);
  return (
    <Wrapper>
      <Loader show={isLoading} />
      <LeftMenuHeader />
      <LinksContainer>
        {filteredCampaignSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="campaigns"
            name="campaigns"
            isFiltered={false}
            links={filteredCampaignSectionLinks}
            location={location}
          />
        )}
        {filteredCampaignMetaSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="campaignsMeta"
            name="campaignsMeta"
            isFiltered={false}
            links={filteredCampaignMetaSectionLinks}
            location={location}
          />
        )}
        {filteredDonationSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="donationConfig"
            name="donationConfig"
            isFiltered={false}
            links={filteredDonationSectionLinks}
            location={location}
          />
        )}
        {filteredDonationMetaSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="donationMeta"
            name="donationMeta"
            links={filteredDonationMetaSectionLinks}
            location={location}
          />
        )}
        {filteredSerologySectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="serologyConfig"
            name="serologyConfig"
            isFiltered={false}
            links={filteredSerologySectionLinks}
            location={location}
          />
        )}
        {filteredSystemSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="system"
            name="system"
            links={filteredSystemSectionLinks}
            location={location}
          />
        )}
        {/* {filteredCollectionTypeLinks.length > 0 && (
          <LeftMenuLinksSection
            section="collectionType"
            name="collectionType"
            links={filteredCollectionTypeLinks}
            location={location}
            searchable
          />
        )}

        {filteredSingleTypeLinks.length > 0 && (
          <LeftMenuLinksSection
            section="singleType"
            name="singleType"
            links={filteredSingleTypeLinks}
            location={location}
            searchable
          />
        )} */}

        {/* {pluginsSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="plugins"
            name="plugins"
            links={pluginsSectionLinks}
            location={location}
            searchable={false}
            emptyLinksListMessage="app.components.LeftMenuLinkContainer.noPluginsInstalled"
          />
        )} */}
        {generalSectionLinks.length > 0 && (
          <LeftMenuLinksSection
            section="general"
            name="general"
            links={generalSectionLinks}
            location={location}
            searchable={false}
          />
        )}
      </LinksContainer>
      <LeftMenuFooter key="footer" version={version} />
    </Wrapper>
  );
};

LeftMenu.propTypes = {
  shouldUpdateStrapi: PropTypes.bool.isRequired,
  version: PropTypes.string.isRequired,
  plugins: PropTypes.object.isRequired,
  setUpdateMenu: PropTypes.func.isRequired,
};

export default memo(LeftMenu);
