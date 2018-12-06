const tabItems = document.querySelectorAll(".show-page-tab");

const resetTabs = () =>
{
  // hide all pages
  const tabContent = document.querySelectorAll(".experience-tab-content");
  tabContent.forEach((page) =>
  {
    page.classList.add("hidden");
  });

  // reset all tabs
  const tabItems = document.querySelectorAll(".show-page-tab");
  tabItems.forEach((tab) =>
  {
    tab.classList.remove("active");
  });
}

tabItems.forEach((tab) =>
{
  tab.onclick = (event) =>
  {
    // reset all tabs
    resetTabs();

    // activate selected tab
    tab.classList.add("active");

    // activate selected content
    content = document.getElementById(tab.dataset.content);
    content.classList.remove("hidden");
  }
});
