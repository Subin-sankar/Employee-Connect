const months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];

  let currentMonth = new Date().getMonth();
  let currentYear = new Date().getFullYear();

  function updateDateRange() {
    const startDate = `01-${months[currentMonth]}-${currentYear}`;
    const endDate = new Date(currentYear, currentMonth + 1, 0).getDate();
    const endDateFormatted = `${endDate}-${months[currentMonth]}-${currentYear}`;
    document.getElementById('dateRange').innerText = `${startDate} - ${endDateFormatted}`;
  }

  function nextMonth() {
    currentMonth = (currentMonth + 1) % 12;
    if (currentMonth === 0) {
      currentYear++;
    }
    updateDateRange();
  }

  function previousMonth() {
    currentMonth = (currentMonth - 1 + 12) % 12;
    if (currentMonth === 11) {
      currentYear--;
    }
    updateDateRange();
  }

  // Initial display
  updateDateRange();