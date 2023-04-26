import {projectAddress, projectFacebook, projectName, projectPhone, projectWhatsapp} from "../data/index.mjs";
import {facebookIcon, phoneIcon, whatsappIcon} from "../assets/index.mjs";

function useFooter() {
    const footerProjectName = document.getElementById("footer-project-name");
    footerProjectName.innerText = projectName;

    const footerProjectAddress = document.getElementById("footer-project-address");
    footerProjectAddress.innerText = projectAddress;

    const footerProjectPhone = document.getElementById("footer-project-phone");
    footerProjectPhone.innerHTML = phoneIcon + projectPhone;

    const footerProjectWhatsapp = document.getElementById("footer-project-whatsapp");
    footerProjectWhatsapp.innerHTML = whatsappIcon + projectWhatsapp;

    const footerProjectFacebook = document.getElementById("footer-project-facebook");
    footerProjectFacebook.innerHTML = facebookIcon + projectFacebook;
}

export {
    useFooter
}