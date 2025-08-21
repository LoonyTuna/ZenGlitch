# Contributing to the Manifesto

This repository contains a philosophical manifesto written in **Markdown**, which is rendered into an HTML page using **[Pandoc](https://pandoc.org/)** and served on the web.

We welcome contributions that improve the clarity, style, structure, or ideas of the manifesto.

---

## How to Contribute

### 1. Fork and Clone

* Fork this repository to your own GitHub account.
* Clone your fork locally:

  ```sh
  git clone https://github.com/<your-username>/<repo-name>.git
  cd <repo-name>
  ```

### 2. Make Your Changes

* The main manifesto text is in Markdown files (`.md`).
* Edit them directly, keeping in mind:

  * Write clearly and concisely.
  * Preserve the philosophical tone of the manifesto.

### 3. Test Your Changes

Before submitting changes, you should regenerate the site locally:

```sh
make all
```

This will:

* Run **Pandoc** to convert Markdown into HTML.
* Build the final output as it will appear online.

Open the generated HTML file (usually in the `dist/` or `build/` folder, depending on repo setup) in your browser to verify formatting and content.

### 4. Commit and Push

* Create a branch for your change:

  ```sh
  git checkout -b my-change
  ```
* Commit your edits with a clear message:

  ```sh
  git commit -am "Improve section on [topic]"
  ```
* Push your branch to your fork:

  ```sh
  git push origin my-change
  ```

### 5. Open a Pull Request

* Go to the original repository on GitHub.
* Open a Pull Request (PR) from your branch.
* In the PR description, explain your motivation and what you changed.

---

## Guidelines

* **Respect the voice:** The manifesto is philosophical in nature. Aim for consistency of tone and depth.
* **Substantive over superficial:** Typo fixes and formatting are welcome, but larger contributions should thoughtfully engage with the content.
* **Be constructive:** If suggesting philosophical changes, provide reasoning or references where relevant.
* **Collaborative spirit:** Treat contributions as part of a collective work, not an individual essay.

---

## Development Notes

* The repository uses **[Pandoc](https://pandoc.org/)**. Make sure you have it installed:

  ```sh
  pandoc --version
  ```
* `make all` is the standard build/test command.
* If you want to check only the Markdown formatting without building:

  ```sh
  make check
  ```

---

## Code of Conduct

We are committed to a respectful, open discussion space.
Please:

* Assume good faith.
* Engage with ideas, not people.
* Avoid hostile or dismissive language.
