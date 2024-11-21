/* eslint-disable consistent-return */
import produce from "immer";
import { SETTINGS_BASE_URL } from "../../config";
import adminPermissions from "../../permissions";
import {
  SET_CT_OR_ST_LINKS,
  SET_SECTION_LINKS,
  TOGGLE_IS_LOADING,
  UNSET_IS_LOADING,
} from "./constants";

const initialState = {
  collectionTypesSectionLinks: [],
  generalSectionLinks: [
    {
      icon: "list",
      label: "app.components.LeftMenuLinkContainer.listPlugins",
      destination: "/list-plugins",
      isDisplayed: true,
      permissions: adminPermissions.marketplace.main,
      notificationsCount: 0,
    },
    {
      icon: "shopping-basket",
      label: "app.components.LeftMenuLinkContainer.installNewPlugin",
      destination: "/marketplace",
      isDisplayed: true,
      permissions: adminPermissions.marketplace.main,
      notificationsCount: 0,
    },
    {
      icon: "cog",
      label: "app.components.LeftMenuLinkContainer.settings",
      isDisplayed: true,
      destination: SETTINGS_BASE_URL,
      // Permissions of this link are retrieved in the init phase
      // using the settings menu
      permissions: [],
      notificationsCount: 0,
    },
  ],
  singleTypesSectionLinks: [],
  pluginsSectionLinks: [],
  campaignSectionLinks: [],
  campaignMetaSectionLinks: [],
  donationSectionLinks: [],
  donationMetaSectionLinks: [],
  serologySectionLinks: [],
  seologyMetaSectionLinks: [],
  systemSectionLinks: [],
  isLoading: true,
};

const reducer = (state = initialState, action) =>
  produce(state, (draftState) => {
    switch (action.type) {
      case SET_CT_OR_ST_LINKS: {
        const { authorizedCtLinks, authorizedStLinks } = action.data;
        // Users
        const users = authorizedCtLinks.filter((x) => x.label.includes("User"));
        // Promotion Campaigns
        const campaign = authorizedCtLinks.filter((x) =>
          x.label.includes("Campaign")
        );
        // Promotion Meta
        const promotion = authorizedCtLinks.filter(
          (x) =>
            x.label.includes("Center") |
            x.label.includes("Collection Site") |
            x.label.includes("Vehicle") |
            x.label.includes("Employee") |
            x.label.includes("Zone")
        );

        // Donation Meta
        const registeration = authorizedStLinks.filter((x) =>
          x.label.includes("Registration")
        );
        const medicalCheckup = authorizedStLinks.filter((x) =>
          x.label.includes("Medical Checkup")
        );
        const phlebotomy = authorizedStLinks.filter((x) =>
          x.label.includes("Phlebotomy")
        );
        const donationMeta = authorizedCtLinks.filter(
          (x) =>
            x.label.includes("Type") |
            x.label.includes("Govern") |
            x.label.includes("Adverse") |
            x.label.includes("Medication") |
            x.label.includes("Band Component") |
            x.label.includes("Medical Remark") |
            x.label.includes("Blood Collection") |
            x.label.includes("Phlebotomist") |
            x.label.includes("Occupation") |
            x.label.includes("Cit") |
            x.label.includes("Nationalit") |
            x.label.includes("Reason of Donation") |
            x.label.includes("Social Status") |
            x.label.includes("Apheresis Machine") |
            x.label.includes('Apheresis Kit')
        );
        // Serology
        const samples = authorizedStLinks.filter((x) =>
          x.label.includes("Samples")
        );
        const virology = authorizedStLinks.filter((x) =>
          x.label.includes("Virology")
        );
        draftState.collectionTypesSectionLinks = authorizedCtLinks;
        draftState.singleTypesSectionLinks = authorizedStLinks;
        draftState.campaignSectionLinks = [...campaign];
        draftState.campaignMetaSectionLinks = promotion;
        draftState.donationSectionLinks = [
          ...registeration,
          ...medicalCheckup,
          ...phlebotomy,
        ];
        draftState.donationMetaSectionLinks = donationMeta;
        draftState.serologySectionLinks = [...samples, ...virology];
        draftState.systemSectionLinks = users;
        break;
      }

      case SET_SECTION_LINKS: {
        const { authorizedGeneralLinks, authorizedPluginLinks } = action.data;
        const settings = authorizedGeneralLinks.filter((x) =>
          x.label.includes("settings")
        );
        draftState.generalSectionLinks = settings;
        draftState.pluginsSectionLinks = authorizedPluginLinks;
        break;
      }

      case TOGGLE_IS_LOADING: {
        draftState.isLoading = !state.isLoading;
        break;
      }
      case UNSET_IS_LOADING: {
        draftState.isLoading = false;
        break;
      }

      default:
        return draftState;
    }
  });

export default reducer;
export { initialState };
