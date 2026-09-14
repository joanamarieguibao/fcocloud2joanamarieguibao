const menuButton = document.getElementById("menuButton");
const navigation = document.querySelector(".navigation");

if (menuButton && navigation) {

    menuButton.addEventListener("click", function () {

        navigation.classList.toggle("show");

    });

}

const profileModal = document.getElementById("profileModal");
const modalClose = document.getElementById("modalClose");

const modalName = document.getElementById("modalName");
const modalRole = document.getElementById("modalRole");
const modalDescription = document.getElementById("modalDescription");

const profileButtons = document.querySelectorAll(".profile-button");

const memberData = {

    Aiah: {
        name: "Aiah",
        role: "Vocalist",
        description:
            "Member profile information for Aiah will be connected to the website database later."
    },

    Colet: {
        name: "Colet",
        role: "Vocalist / Rapper",
        description:
            "Member profile information for Colet will be connected to the website database later."
    },

    Gwen: {
        name: "Gwen",
        role: "Vocalist / Rapper",
        description:
            "Member profile information for Gwen will be connected to the website database later."
    },

    Jhoanna: {
        name: "Jhoanna",
        role: "Leader / Vocalist / Rapper",
        description:
            "Member profile information for Jhoanna will be connected to the website database later."
    },

    Maloi: {
        name: "Maloi",
        role: "Vocalist",
        description:
            "Member profile information for Maloi will be connected to the website database later."
    },

    Stacey: {
        name: "Stacey",
        role: "Vocalist / Rapper",
        description:
            "Member profile information for Stacey will be connected to the website database later."
    },

    Mikha: {
        name: "Mikha",
        role: "Rapper / Vocalist",
        description:
            "Member profile information for Mikha will be connected to the website database later."
    },

    Sheena: {
        name: "Sheena",
        role: "Main Dancer / Vocalist",
        description:
            "Member profile information for Sheena will be connected to the website database later."
    }

};

profileButtons.forEach(function (button) {

    button.addEventListener("click", function () {

        const memberName = button.dataset.member;

        const member = memberData[memberName];

        if (!member) {
            return;
        }

        modalName.textContent = member.name;

        modalRole.textContent = member.role;

        modalDescription.textContent = member.description;

        profileModal.classList.add("show");

        profileModal.setAttribute("aria-hidden", "false");

        document.body.classList.add("modal-open");

    });

});

function closeProfileModal() {

    if (!profileModal) {
        return;
    }

    profileModal.classList.remove("show");

    profileModal.setAttribute("aria-hidden", "true");

    document.body.classList.remove("modal-open");

}


if (modalClose) {

    modalClose.addEventListener(
        "click",
        closeProfileModal
    );

}

if (profileModal) {

    profileModal.addEventListener("click", function (event) {

        if (event.target === profileModal) {

            closeProfileModal();

        }

    });

}

document.addEventListener("keydown", function (event) {

    if (event.key === "Escape") {

        closeProfileModal();

    }

});