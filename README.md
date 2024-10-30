<h1 align="center">HIBERNATE GUI CRUD</h1>

<p align="center">
  A web application for performing CRUD operations with a user-friendly GUI, developed using <strong>JSP</strong>, <strong>Servlets</strong>, <strong>Bootstrap</strong>, <strong>Hibernate</strong>, and <strong>MySQL</strong>. This project includes authentication, session management, and light/dark theme toggling.
</p>

<h2>📝 Features</h2>

<ul>
  <li><strong>User Authentication</strong>
    <ul>
      <li>Login and Registration with user validation</li>
      <li>Forgot Password feature for recovering accounts</li>
      <li>Session Management with <code>HttpSession</code> for tracking user sessions</li>
    </ul>
  </li>
  <li><strong>CRUD Operations</strong>
    <ul>
      <li>Perform CRUD operations on items, with data persisted in a MySQL database</li>
      <li>Integration with Hibernate ORM for easy database handling</li>
    </ul>
  </li>
  <li><strong>Theming</strong>
    <ul>
      <li>Light and dark theme switching using <code>jQuery</code></li>
      <li>Responsive design with <code>Bootstrap</code> for a visually appealing interface</li>
    </ul>
  </li>
  <li><strong>Modern JavaScript</strong>
    <ul>
      <li>Asynchronous data handling with <code>Fetch API</code> for smooth user experience</li>
    </ul>
  </li>
</ul>

<h2>🛠 Technologies Used</h2>

<p><strong>Frontend:</strong></p>
<ul>
  <li><strong>JSP</strong> - For server-side rendering</li>
  <li><strong>Bootstrap</strong> - Responsive UI framework</li>
  <li><strong>JavaScript (Fetch API)</strong> - For asynchronous requests</li>
  <li><strong>jQuery</strong> - For theme toggling and DOM manipulation</li>
</ul>

<p><strong>Backend:</strong></p>
<ul>
  <li><strong>Java Servlets</strong> - Handles HTTP requests</li>
  <li><strong>Hibernate ORM</strong> - For managing database interactions</li>
  <li><strong>MySQL</strong> - Relational database for data storage</li>
  <li><strong>HttpSession</strong> - Manages user sessions</li>
</ul>

<h2>⚙️ Setup and Installation</h2>

<ol>
  <li><strong>Clone the Repository</strong>
    <pre><code>git clone https://github.com/your-username/HIBERNATE-GUI-CRUD.git
cd HIBERNATE-GUI-CRUD</code></pre>
  </li>

  <li><strong>Configure Database</strong>
    <p>Create a MySQL database and update the <code>hibernate.cfg.xml</code> file with your database name, username, and password.</p>
  </li>

  <li><strong>Run the Application</strong>
    <p>Import the project into your IDE, configure <strong>Apache Tomcat</strong>, and deploy. Access the app at <code>http://localhost:8080/HIBERNATE-GUI-CRUD</code>.</p>
  </li>
</ol>

<h2>📂 Project Structure</h2>

<pre>
HIBERNATE-GUI-CRUD/
├── src/
│   ├── com/
│   │   ├── entities/         # Hibernate entity classes
│   │   ├── servlets/         # Servlet classes
│   │   └── helper/           # Helper classes (e.g., Hibernate session factory)
│   ├── resources/
│   │   └── hibernate.cfg.xml # Hibernate configuration
│   └── webapp/
│       ├── WEB-INF/          # Web application config
│       ├── css/              # Custom CSS files
│       ├── js/               # JavaScript with Fetch API & jQuery
│       ├── jsp/              # JSP pages (login.jsp, register.jsp, etc.)
│       └── index.jsp         # Main entry page
├── README.md
└── pom.xml                   # Maven dependencies
</pre>

<h2>🚀 Usage Guide</h2>

<ol>
  <li><strong>Login and Registration</strong>
    <p>Register as a new user or log in if you already have an account. Use the <strong>Forgot Password</strong> feature if needed.</p>
  </li>

  <li><strong>CRUD Operations</strong>
    <p>Once logged in, you can add, update, delete, or view items. Data is saved to MySQL via Hibernate ORM.</p>
  </li>

  <li><strong>Light and Dark Theme</strong>
    <p>Toggle between light and dark themes using the theme switcher button.</p>
  </li>
</ol>

<h2>📸 Screenshots</h2>

<h3>Light Theme</h3>
<img src="https://path-to-your-screenshot-light-theme.png" alt="Light Theme" width="600">

<h3>Dark Theme</h3>
<img src="https://path-to-your-screenshot-dark-theme.png" alt="Dark Theme" width="600">

<h2>🤝 Contributing</h2>

<p>Contributions are welcome! To contribute:</p>
<ol>
  <li>Fork the repository.</li>
  <li>Create a new branch: <code>git checkout -b feature/YourFeature</code>.</li>
  <li>Commit your changes: <code>git commit -m 'Add a feature'</code>.</li>
  <li>Push to your branch: <code>git push origin feature/YourFeature</code>.</li>
  <li>Submit a pull request.</li>
</ol>

<h2>📄 License</h2>

<p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>





![image](https://github.com/user-attachments/assets/f9290635-e322-4780-9f8e-f23c079bb62a)
![image](https://github.com/user-attachments/assets/8cfe7e83-a88a-4db8-a468-a05465c86b1f)
![image](https://github.com/user-attachments/assets/f7a8448e-1a99-46c0-913c-1dcd99d1f4c6)
![image](https://github.com/user-attachments/assets/a0ca5b71-1472-4faf-8dc7-7d2458adec74)
![image](https://github.com/user-attachments/assets/95d8d6d0-668a-4979-9f51-0d461dac8773)
![image](https://github.com/user-attachments/assets/cd88b7fb-33e3-4256-8bf1-02b77911be74)
![image](https://github.com/user-attachments/assets/80470fbc-2cef-429e-bda6-45f56559923d)
![image](https://github.com/user-attachments/assets/0095d121-8dd5-4c44-843d-ac63dec92196)
![image](https://github.com/user-attachments/assets/4c2eabcd-2c5d-43bf-953e-2767388e9387)
