// Function to fetch weather data from an API
async function getWeather (city) {
    const apiKey = 'NARNIA'; // Replace with your API key
    const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;

    try {
        const response = await fetch(url);
        const data = await response.json();
        return data;
    } catch (error) {
        console.log('Error fetching weather data:', error);
    }
}

// Function to update the website with weather information
function updateWeather () {
    const city = 'Narnia City'; // Replace with the desired city
    getWeather(city)
        .then((data) => {
            const temperature = data.main.temp;
            const description = data.weather[0].description;

            // Update the website with the weather information
            document.getElementById(
                'weather-info'
            ).innerHTML = `Current temperature in ${city}: ${temperature}°C, ${description}`;
        })
        .catch((error) => {
            console.log('Error updating weather:', error);
        });
}

// Call the function to update the website with weather information
updateWeather();
