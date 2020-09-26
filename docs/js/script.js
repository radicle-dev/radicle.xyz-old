let down = document.querySelector(".att-down");
let downList = document.querySelector(".feat1");
let local = document.querySelector(".att-local");
let localList = document.querySelector(".feat2");
let sustain = document.querySelector(".att-sustain");
let sustainList = document.querySelector(".feat3");

let background = document.querySelector(".attribute-title");
let text = document.querySelectorAll(".att-title");

window.addEventListener("load", () => {

  const transition1 = () => {
    down.classList.remove("active");
    downList.classList.add("hidden");
    local.classList.add("active");
    localList.classList.remove("hidden");
    background.style.backgroundColor = "var(--color-tertiary-level-1)"
    for (let i = 0; i < text.length ; i++)  {
      text[i].style.color = "var(--color-negative)"
    }
  };

  const transition2 = () => {
    local.classList.remove("active");
    localList.classList.add("hidden");
    sustain.classList.add("active");
    sustainList.classList.remove("hidden");
    background.style.backgroundColor = "var(--color-caution-level-1)"
    for (let i = 0; i < text.length ; i++)  {
      text[i].style.color = "var(--color-secondary)"
    }
  };

  const transition3 = () => {
    sustain.classList.remove("active");
    sustainList.classList.add("hidden");
    down.classList.add("active");
    downList.classList.remove("hidden");
    background.style.backgroundColor = "var(--color-caution-level-1)"
    for (let i = 0; i < text.length ; i++)  {
      text[i].style.color = "var(--color-primary)"
    }
  };

  setTimeout(() => {
    transition1();
    setTimeout(() => {
      transition2();
      setTimeout(() => {
        transition3();
      }, 5000);
    }, 5000);
  }, 5000);
  setInterval(() => {
    setTimeout(() => {
      transition1();
      setTimeout(() => {
        transition2();
        setTimeout(() => {
          transition3();
        }, 5000);
      }, 5000);
    }, 5000);
  }, 15000);

});
