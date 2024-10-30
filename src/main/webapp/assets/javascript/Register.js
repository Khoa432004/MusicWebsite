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
		Password: password,
		UserName: username,
		email: email
    };
	
	console.log("Request data:", JSON.stringify(requestData));
    fetch("/register_user", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(requestData)
		
    })
	.then(response => {
	    return response.text() // Nhận phản hồi dưới dạng văn bản
	        .then(text => {
	            if (response.ok) {
	                return JSON.parse(text); // Chuyển đổi văn bản thành JSON nếu ok
	            } else {
	                throw new Error(text); // Nếu không ok, ném lỗi với nội dung văn bản
	            }
	        });
	})

    .then(data => {
        alert("Registration successful! Please log in.");
        window.location.href = "Login.html";
    })
    .catch(error => {
        alert("Registration failed: " + error.message);
    });
});
