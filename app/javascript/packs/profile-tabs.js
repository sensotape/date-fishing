const tabItems = document.querySelectorAll(".tab-item");

const resetTabs = () =>
{
  // hide all pages
  const tabContent = document.querySelectorAll(".tab-content");
  tabContent.forEach((page) =>
  {
    page.classList.add("hidden");
    page.classList.remove("displayed");
  });

  // reset all tabs
  const tabItems = document.querySelectorAll(".tab-item");
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
    content.classList.replace("hidden", "displayed");
  }
});
