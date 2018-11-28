const profileTab = document.getElementById('profile-tab');
const datesTab = document.getElementById('dates-tab');
const nibblesTab = document.getElementById('nibbles-tab');
const statisticsTab = document.getElementById('statistics-tab');

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

// profile click
profileTab.onclick = (event) =>
{
  // reset all
  resetTabs();

  // activate tab
  profileTab.classList.add("active");

  //activate content
  const profileContent = document.getElementById("profile-content");
  profileContent.classList.replace("hidden", "displayed");
};

// dates click
datesTab.onclick = (event) =>
{
  // reset all
  resetTabs();

  // activate tab
  datesTab.classList.add("active");

  //activate content
  const datesContent = document.getElementById("dates-content");
  console.log(datesContent);
  datesContent.classList.replace("hidden", "displayed");
  console.log(datesContent);
};


// nibbles click
nibblesTab.onclick = (event) =>
{
  // reset all
  resetTabs();

  // activate tab
  nibblesTab.classList.add("active");

  //activate content
  const nibblesContent = document.getElementById("nibbles-content");
  nibblesContent.classList.replace("hidden", "displayed");
};

// statistics click
statisticsTab.onclick = (event) =>
{
  // reset all
  resetTabs();

  // activate tab
  statisticsTab.classList.add("active");

  //activate content
  const statisticsContent = document.getElementById("statistics-content");
  statisticsContent.classList.replace("hidden", "displayed");
};




