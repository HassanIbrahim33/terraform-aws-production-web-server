#!/bin/bash

# Log all commands and errors
exec > /var/log/user-data.log 2>&1
set -xe

# Update the system
dnf update -y

# Install Nginx
dnf install -y nginx

# Create custom web page
cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Terraform AWS Web Server</title>

    <style>

        body {

            margin: 0;

            padding: 0;

            font-family: Arial, Helvetica, sans-serif;

            background: linear-gradient(135deg, #0f172a, #1e3a8a);

        }

        .container {

            max-width: 800px;

            margin: 60px auto;

            background-color: white;

            padding: 40px;

            border-radius: 15px;

            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);

            text-align: center;

        }

        .status {

            background-color: #dcfce7;

            color: #166534;

            padding: 15px;

            border-radius: 8px;

            font-size: 20px;

            font-weight: bold;

            margin: 30px 0;

        }

        .info {

            text-align: left;

            margin-top: 30px;

        }

        .info h2 {

            color: #1e3a8a;

            border-bottom: 2px solid #e5e7eb;

            padding-bottom: 10px;

        }

        .info p {

            font-size: 18px;

            line-height: 1.8;

        }

        h1 {

            color: #1e3a8a;

            font-size: 40px;

            margin-bottom: 10px;

        }

        footer {

            margin-top: 40px;

            padding-top: 20px;

            border-top: 2px solid #e5e7eb;

            color: #6b7280;

            font-size: 15px;

        }

        footer strong {

            color: #111827;

        }

    </style>

</head>

<body>

    <div class="container">

        <h1>🚀 Terraform AWS Web Server</h1>

        <p class="status">
            ✅ Deployment Successful
        </p>

        <div class="info">

            <h2>Project Information</h2>

            <p><strong>Cloud Provider:</strong> Amazon Web Services (AWS)</p>

            <p><strong>Infrastructure:</strong> Terraform</p>

            <p><strong>Web Server:</strong> Nginx</p>

            <p><strong>Environment:</strong> Production</p>

        </div>

        <footer>

            <p>Built with ❤️ using Terraform, AWS EC2, and Nginx</p>

            <p><strong>Built by Hassan Ibrahim</strong></p>

        </footer>

    </div>

</body>

</html>
EOF

# Enable and restart Nginx
systemctl enable nginx
systemctl restart nginx