document.getElementById("changePassword").addEventListener("submit", function (event) {
    event.preventDefault();

    const username = document.querySelector('input[name="username"]').value;
/*    const email = document.querySelector('input[name="email"]').value;*/
    const password = document.querySelector('input[name="password"]').value;
	
	const newPassword = document.querySelector('input[name="NewPassword"]').value;
    const confirmNewPassword = document.querySelector('input[name="confirmNewPassword"]').value;

	if (newPassword == password) {
	    alert("New passwords can not match with your current password");
	    return;
	}
	
    if (newPassword !== confirmNewPassword) {
        alert("Passwords do not match!");
        return;
    }

    const requestData = {
		user: {
		    username: username,
		    email: "email",
			password: newPassword
		},
		oldpass: password
    };
	
    console.log(requestData);
    
    fetch("/changepassword_user", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(requestData)
    })
    .then(response => 
        response.text().then(text => {
            if (response.ok) {
                return text;
            } else {
                throw new Error(text);
            }
        })
    )
    .then(data => {
        alert("Change password successful! Please log in again");
        window.location.href = "Login.html";
    })
    .catch(error => {
        alert("Registration failed: " + error.message);
    });
});
