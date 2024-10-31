document.getElementById("registrationForm").addEventListener("submit", function (event) {
    event.preventDefault();

    const username = document.querySelector('input[name="username"]').value;
    const email = document.querySelector('input[name="email"]').value;
    const password = document.querySelector('input[name="password"]').value;
    const confirmPassword = document.querySelector('input[name="confirmPassword"]').value;

    if (password !== confirmPassword) {
        alert("Passwords do not match!");
        return;
    }

    const requestData = {
        password: password,
        username: username,
        email: email
    };
    
    console.log(requestData);
    
    fetch("/register_user", {
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
        alert("Registration successful! Please log in.");
        window.location.href = "Login.html";
    })
    .catch(error => {
        alert("Registration failed: " + error.message);
    });
});
