const tabs = document.querySelectorAll(".tab-content");
console.log("HERE")

tabs.forEach((tab) =>
{
  tab.onclick = (event) =>
  {
    console.log("THERE");
  }
});
