document.addEventListener("DOMContentLoaded", function () {
    document.getElementById('CheckBox').checked = false;

    document.getElementById('Username').addEventListener("input", function () {
        document.getElementById('UsernameAlert').style.opacity = '0';
    });
    document.getElementById('email').addEventListener("input", function () {
        document.getElementById('EmailAlert').style.opacity = '0';
    });
    document.getElementById('PasswordInput').addEventListener("input", function () {
        document.getElementById('PasswordAlert').style.opacity = '0';
    });
});

function checkReg() {
    const username = document.getElementById('Username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('PasswordInput').value;
    const checkbox = document.getElementById('CheckBox');

    let valid = true;

    if (username.length == 0) {
        document.getElementById('UsernameAlert').style.opacity = '1';
        valid = false;
    }

    if (!(/@gmail\.com$/.test(email))) {
        document.getElementById('EmailAlert').style.opacity = '1';
        valid = false;
    }

    if (password.length > 5) {
        var letmatch = password.match(/[a-z]/g);
        var digmatch = password.match(/[0-9]/g);

        if (!(letmatch && digmatch)) {
            document.getElementById('PasswordAlert').innerHTML = 'password must contain letters and numbers';
            document.getElementById('PasswordAlert').style.opacity = '1';
            valid = false;
        }
    }
    else {
        document.getElementById('PasswordAlert').innerHTML = 'password length must be above 5';
        document.getElementById('PasswordAlert').style.opacity = '1';
        valid = false;
    }

    if (valid && !checkbox.checked) {
        const labelCheckBox = document.querySelector('.lable-check-box');
        labelCheckBox.classList.add('active');
        setTimeout(function () {
            labelCheckBox.classList.remove('active');
        }, 700);
        valid = false;
    }

    return valid;
}