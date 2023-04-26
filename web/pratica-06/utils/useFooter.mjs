import {projectAddress, projectFacebook, projectName, projectPhone, projectWhatsapp} from "../data/index.mjs";
import {facebookIcon, phoneIcon, whatsappIcon} from "../assets/index.mjs";

const footer = document.getElementsByTagName("footer")[0];

function useFooter() {
    footer.innerHTML =
        `<div id="footer-wrapper">
            <section id="footer-project-name"></section>
            <section id="footer-project-address"></section>
            <section id="footer-contact-wrapper">
                <span id="footer-project-phone"></span>
                <span id="footer-project-whatsapp"></span>
                <span id="footer-project-facebook"></span>
            </section>
        </div>`

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