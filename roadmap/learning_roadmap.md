# KornShell Learning Roadmap

A structured learning roadmap for mastering KornShell (.ksh) scripting, including fundamentals, design patterns, text processing, and handling structured data (XML/SGML/DTD).  

Follow the workflow:  
> Learn concept → Try sample → Build mini-script → Add to repo

---

## Phase 1: Basics & Shell Fundamentals
**Objectives:** Get comfortable with KornShell syntax and environment

- [ ] Basic commands: `echo`, `print`, stdout, stderr  
- [ ] Variables, quoting, string handling  
- [ ] Arithmetic expressions: `(( ))`  
- [ ] Arrays: indexed and associative  
- [ ] Input from user and files  
- [ ] Basic error handling and exit codes  

**Example exercises:**  
- Greeting script using user input  
- Simple arithmetic calculator  

---

## Phase 2: Control Flow
**Objectives:** Make scripts that decide and repeat tasks

- [ ] `if` / `else` / `elif`  
- [ ] `case` statements  
- [ ] Loops: `for`, `while`, `until`  
- [ ] `break` and `continue`  

**Example exercises:**  
- Prime number checker  
- Menu-driven script  

---

## Phase 3: Functions & Modular Scripting
**Objectives:** Write reusable, readable scripts

- [ ] Function definition and return values  
- [ ] Scope: `local` vs global variables  
- [ ] Passing arguments to functions  
- [ ] Modular file organization  

**Example exercises:**  
- Modular script with `main()`  
- Reusable function library  

---

## Phase 4: Shell Design Patterns
**Objectives:** Apply best practices in script architecture

- [ ] Main Pattern - separates orchestration from logic  
- [ ] Guard / Fail-Fast Pattern - input validation  
- [ ] Command Dispatcher Pattern - multiple commands/options  
- [ ] Logging Pattern - centralized logging  
- [ ] Pipeline Pattern - chain commands efficiently  
- [ ] Config-as-Data Pattern - separate configuration from logic  

**Example exercises:**  
- Script that dispatches commands based on arguments  
- Logging and error handling in pipelines  

---

## Phase 5: Text Processing
**Objectives:** Transform unstructured data (logs, CSV, text)

- [ ] `grep`, `awk`, `sed` basics  
- [ ] Pipes (`|`) and redirection  
- [ ] Command substitution `$( )`  
- [ ] Sorting, counting, filtering  

**Example exercises:**  
- Extract errors from logs  
- Count unique CSV column entries  

---

## Phase 6: Structured Data Handling
**Objectives:** Process XML/SGML/DTD using shell pipelines

- [ ] Overview of XML, SGML, and DTD  
- [ ] Well-formed vs valid XML  
- [ ] Parsing and validation  
- [ ] Shell pipelines for structured data  

**Example exercises:**  
- Validate `users.xml` against `users.dtd`  
- Extract `<name>` elements into a text file  
- Route XML files based on content  

---

## Phase 7: Mini Projects / Integration
**Objectives:** Combine everything learned

Suggested projects:
1. Log Analyzer (text_processing + patterns)  
2. CSV Validator (functions + pipelines)  
3. XML Processor (markup_processing + design patterns)  

Each project should:
- Use 2-3 design patterns  
- Include input validation (guard pattern)  
- Be modular and reusable  

---

## Phase 8: Notes & Best Practices
- Track lessons learned from scripts and errors  
- Document reusable snippets  
- Maintain a "" page for KornShell quirks  

---

## Usage
- Each phase = repo folder  
- Include examples, exercises, and scripts  
- Track progress with checkboxes
