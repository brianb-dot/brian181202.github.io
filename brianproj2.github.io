<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta
    name="description"
    content="Brian Burgos — Personal portfolio focused on fitness, reading, coding, and entrepreneurship."
  />
  <title>Brian Burgos | Personal Portfolio</title>

  <style>
    :root {
      --bg: #080b10;
      --bg-secondary: #0e131a;
      --card: rgba(255, 255, 255, 0.05);
      --card-hover: rgba(255, 255, 255, 0.08);
      --text: #f5f7fa;
      --muted: #9ba5b4;
      --accent: #63e6be;
      --accent-dark: #2fb98b;
      --border: rgba(255, 255, 255, 0.1);
      --max-width: 1100px;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: Inter, -apple-system, BlinkMacSystemFont, "Segoe UI",
        Roboto, Helvetica, Arial, sans-serif;
      background:
        radial-gradient(circle at 80% 10%, rgba(99, 230, 190, 0.1), transparent 30%),
        var(--bg);
      color: var(--text);
      line-height: 1.6;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    .container {
      width: min(90%, var(--max-width));
      margin: 0 auto;
    }

    /* NAVIGATION */

    nav {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      z-index: 1000;
      background: rgba(8, 11, 16, 0.75);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid var(--border);
    }

    .nav-container {
      height: 72px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo {
      font-size: 1.2rem;
      font-weight: 800;
      letter-spacing: -0.5px;
    }

    .logo span {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      gap: 30px;
      list-style: none;
    }

    .nav-links a {
      color: var(--muted);
      font-size: 0.9rem;
      transition: 0.25s ease;
    }

    .nav-links a:hover {
      color: var(--accent);
    }

    /* HERO */

    .hero {
      min-height: 100vh;
      display: flex;
      align-items: center;
      padding: 120px 0 80px;
    }

    .hero-content {
      max-width: 800px;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      color: var(--accent);
      font-size: 0.85rem;
      font-weight: 700;
      letter-spacing: 1px;
      text-transform: uppercase;
      margin-bottom: 20px;
    }

    .status-dot {
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: var(--accent);
      box-shadow: 0 0 12px var(--accent);
    }

    h1 {
      font-size: clamp(3.5rem, 9vw, 7rem);
      line-height: 0.95;
      letter-spacing: -5px;
      margin-bottom: 28px;
    }

    h1 span {
      color: var(--accent);
    }

    .hero-description {
      max-width: 650px;
      color: var(--muted);
      font-size: 1.15rem;
      margin-bottom: 35px;
    }

    .buttons {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 13px 22px;
      border-radius: 8px;
      font-weight: 700;
      font-size: 0.9rem;
      transition: 0.25s ease;
    }

    .btn-primary {
      background: var(--accent);
      color: #07100d;
    }

    .btn-primary:hover {
      background: #82f2d0;
      transform: translateY(-2px);
    }

    .btn-secondary {
      border: 1px solid var(--border);
      color: var(--text);
    }

    .btn-secondary:hover {
      background: var(--card-hover);
      border-color: rgba(99, 230, 190, 0.4);
    }

    /* SECTIONS */

    section {
      padding: 110px 0;
      border-top: 1px solid var(--border);
    }

    .section-header {
      margin-bottom: 50px;
    }

    .section-label {
      color: var(--accent);
      font-size: 0.8rem;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 2px;
      margin-bottom: 10px;
    }

    h2 {
      font-size: clamp(2rem, 5vw, 3.4rem);
      letter-spacing: -2px;
      line-height: 1.1;
    }

    .section-subtitle {
      color: var(--muted);
      max-width: 600px;
      margin-top: 15px;
    }

    /* ABOUT */

    .about-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 50px;
      align-items: start;
    }

    .about-text p {
      color: var(--muted);
      font-size: 1.05rem;
      margin-bottom: 18px;
    }

    .quote {
      border-left: 2px solid var(--accent);
      padding-left: 20px;
      color: var(--text) !important;
      font-size: 1.2rem !important;
      font-weight: 600;
    }

    /* INTERESTS */

    .interests-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 18px;
    }

    .interest-card {
      padding: 30px;
      border: 1px solid var(--border);
      background: var(--card);
      border-radius: 14px;
      transition: 0.3s ease;
    }

    .interest-card:hover {
      transform: translateY(-5px);
      background: var(--card-hover);
      border-color: rgba(99, 230, 190, 0.3);
    }

    .icon {
      width: 48px;
      height: 48px;
      display: flex;
      align-items: center;
      justify-content: center;
      background: rgba(99, 230, 190, 0.1);
      color: var(--accent);
      border-radius: 10px;
      font-size: 1.4rem;
      margin-bottom: 20px;
    }

    .interest-card h3 {
      margin-bottom: 8px;
      font-size: 1.2rem;
    }

    .interest-card p {
      color: var(--muted);
      font-size: 0.92rem;
    }

    /* FOCUS */

    .focus-list {
      display: grid;
      gap: 12px;
    }

    .focus-item {
      display: flex;
      align-items: center;
      gap: 20px;
      padding: 22px;
      border: 1px solid var(--border);
      border-radius: 12px;
      background: var(--card);
    }

    .number {
      color: var(--accent);
      font-size: 0.8rem;
      font-weight: 800;
      min-width: 30px;
    }

    .focus-item h3 {
      margin-bottom: 3px;
    }

    .focus-item p {
      color: var(--muted);
      font-size: 0.9rem;
    }

    /* CONTACT */

    .contact-box {
      padding: 60px;
      border: 1px solid var(--border);
      background:
        linear-gradient(
          135deg,
          rgba(99, 230, 190, 0.1),
          rgba(255, 255, 255, 0.02)
        );
      border-radius: 18px;
      text-align: center;
    }

    .contact-box h2 {
      margin-bottom: 15px;
    }

    .contact-box p {
      color: var(--muted);
      max-width: 550px;
      margin: 0 auto 30px;
    }

    /* FOOTER */

    footer {
      padding: 30px 0;
      border-top: 1px solid var(--border);
      color: var(--muted);
      font-size: 0.85rem;
    }

    .footer-content {
      display: flex;
      justify-content: space-between;
      gap: 20px;
    }

    /* RESPONSIVE */

    @media (max-width: 700px) {
      .nav-links {
        display: none;
      }

      h1 {
        letter-spacing: -3px;
      }

      .about-grid,
      .interests-grid {
        grid-template-columns: 1fr;
      }

      .contact-box {
        padding: 35px 20px;
      }

      .footer-content {
        flex-direction: column;
      }

      section {
        padding: 80px 0;
      }
    }
  </style>
</head>

<body>

  <!-- Navigation -->
  <nav>
    <div class="container nav-container">
      <a href="#" class="logo">Brian<span>.</span></a>

      <ul class="nav-links">
        <li><a href="#about">About</a></li>
        <li><a href="#interests">Interests</a></li>
        <li><a href="#focus">Focus</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </div>
  </nav>

  <!-- Hero -->
  <main>
    <section class="hero">
      <div class="container">
        <div class="hero-content">

          <div class="eyebrow">
            <span class="status-dot"></span>
            Personal Portfolio
          </div>

          <h1>
            Hi, I'm<br />
            <span>Brian Burgos.</span>
          </h1>

          <p class="hero-description">
            I'm focused on building a strong life through fitness,
            continuous learning, technology, and financial growth.
            I enjoy staying active, reading, coding, and finding new
            ways to create value.
          </p>

          <div class="buttons">
            <a href="#about" class="btn btn-primary">
              Get to know me
            </a>

            <a href="#interests" class="btn btn-secondary">
              My interests
            </a>
          </div>

        </div>
      </div>
    </section>

    <!-- About -->
    <section id="about">
      <div class="container">

        <div class="section-header">
          <div class="section-label">01 — About</div>
          <h2>Always working on<br />the next version of myself.</h2>
        </div>

        <div class="about-grid">

          <div class="about-text">
            <p>
              I'm Brian Burgos, and I enjoy living an active and
              growth-oriented lifestyle. Whether I'm at the gym,
              running outdoors, hiking a new trail, or sitting down
              with a good book, I'm always looking for ways to improve.
            </p>

            <p>
              I'm also interested in technology and programming.
              Coding gives me a way to turn ideas into something
              tangible while constantly challenging myself to learn.
            </p>
          </div>

          <div class="about-text">
            <p class="quote">
              "Discipline compounds. Small improvements today
              create a completely different person tomorrow."
            </p>

            <p>
              Beyond fitness and technology, I'm interested in
              entrepreneurship and financial growth. My goal is to
              continue developing skills that give me more freedom,
              knowledge, and opportunities.
            </p>
          </div>

        </div>
      </div>
    </section>

    <!-- Interests -->
    <section id="interests">
      <div class="container">

        <div class="section-header">
          <div class="section-label">02 — Interests</div>
          <h2>Things that keep<br />me moving forward.</h2>

          <p class="section-subtitle">
            A mix of physical activity, intellectual curiosity,
            creativity, and ambition.
          </p>
        </div>

        <div class="interests-grid">

          <article class="interest-card">
            <div class="icon">🏋️</div>
            <h3>Gym & Fitness</h3>
            <p>
              Building strength, staying consistent, and taking care
              of my physical health.
            </p>
          </article>

          <article class="interest-card">
            <div class="icon">🏃</div>
            <h3>Running</h3>
            <p>
              Challenging myself through running and developing
              endurance one mile at a time.
            </p>
          </article>

          <article class="interest-card">
            <div class="icon">🥾</div>
            <h3>Hiking</h3>
            <p>
              Exploring the outdoors, discovering new trails, and
              getting away from the screen.
            </p>
          </article>

          <article class="interest-card">
            <div class="icon">📚</div>
            <h3>Reading</h3>
            <p>
              Learning from books, exploring new ideas, and expanding
              the way I think.
            </p>
          </article>

          <article class="interest-card">
            <div class="icon">💻</div>
            <h3>Coding</h3>
            <p>
              Building projects, learning technology, and turning
              ideas into useful digital experiences.
            </p>
          </article>

          <article class="interest-card">
            <div class="icon">📈</div>
            <h3>Making Money</h3>
            <p>
              Learning about business, entrepreneurship, investing,
              and creating opportunities for financial growth.
            </p>
          </article>

        </div>
      </div>
    </section>

    <!-- Focus -->
    <section id="focus">
      <div class="container">

        <div class="section-header">
          <div class="section-label">03 — Current Focus</div>
          <h2>What I'm building.</h2>

          <p class="section-subtitle">
            The areas I'm putting time and energy into right now.
          </p>
        </div>

        <div class="focus-list">

          <div class="focus-item">
            <span class="number">01</span>
            <div>
              <h3>Build a stronger body</h3>
              <p>
                Stay consistent with training, running, and outdoor activities.
              </p>
            </div>
          </div>

          <div class="focus-item">
            <span class="number">02</span>
            <div>
              <h3>Develop technical skills</h3>
              <p>
                Improve my programming abilities and build meaningful projects.
              </p>
            </div>
          </div>

          <div class="focus-item">
            <span class="number">03</span>
            <div>
              <h3>Keep learning</h3>
              <p>
                Read more, explore new ideas, and continuously expand my knowledge.
              </p>
            </div>
          </div>

          <div class="focus-item">
            <span class="number">04</span>
            <div>
              <h3>Create financial opportunities</h3>
              <p>
                Learn how to build valuable skills, businesses, and income streams.
              </p>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact">
      <div class="container">

        <div class="contact-box">
          <div class="section-label">04 — Contact</div>

          <h2>Let's connect.</h2>

          <p>
            Interested in technology, fitness, business, or just
            having a good conversation? Feel free to reach out.
          </p>

          <!-- Replace the email address with your actual email -->
          <a
            href="mailto:your@email.com"
            class="btn btn-primary"
          >
            Get in touch
          </a>
        </div>

      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer>
    <div class="container footer-content">
      <span>© 2026 Brian Burgos</span>
      <span>Built with HTML & CSS.</span>
    </div>
  </footer>

</body>
</html>
