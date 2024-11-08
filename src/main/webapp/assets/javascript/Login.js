document.getElementById("login-form").addEventListener("submit", function (event) {
    event.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    const requestData = {
        email: email,
        password: password
    };

    fetch("/login_user", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: new URLSearchParams(requestData)
    })
    .then(response => 
        response.text().then(text => {
            if (response.ok) {
                alert("Login successful!");
                window.location.href = "/Home";
            } else {
                throw new Error(text);
            }
        })
    )
    .catch(error => {
        alert("Login failed: " + error.message);
    });
});
