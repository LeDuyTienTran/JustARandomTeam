let map, driverMarker, deliveryMarker;

function initMap() {
    // Define delivery and driver locations (Replace with actual lat/lng values in Adelaide)
    const deliveryAddress = [-34.9285, 138.6007]; // Example delivery location (Adelaide city center)
    let driverLocation = [-34.9305, 138.6010]; // Initial driver location near Adelaide city center

    // Initialize the map and set the view to Adelaide
    map = L.map('map').setView(driverLocation, 13);

    // Set up the OpenStreetMap tile layer
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // Add a marker for the driver
    driverMarker = L.marker(driverLocation).addTo(map).bindPopup("Driver Location").openPopup();

    // Add a marker for the delivery address
    deliveryMarker = L.marker(deliveryAddress).addTo(map).bindPopup("Delivery Address");

    // Simulate real-time movement of the driver
    simulateDriverMovement(driverLocation, deliveryAddress);
}

// Function to simulate driver movement towards the delivery address
function simulateDriverMovement(driverLocation, deliveryAddress) {
    const updateInterval = 3000; // Update every 3 seconds
    const distanceFactor = 0.001; // How much to move the driver per update (for simulation)

    const interval = setInterval(() => {
        // Update the driver's location by moving towards the delivery location
        driverLocation[0] += (deliveryAddress[0] - driverLocation[0]) * distanceFactor;
        driverLocation[1] += (deliveryAddress[1] - driverLocation[1]) * distanceFactor;

        // Update the marker position on the map
        driverMarker.setLatLng(driverLocation);

        // Check if driver has reached delivery location
        if (Math.abs(driverLocation[0] - deliveryAddress[0]) < 0.0001 &&
            Math.abs(driverLocation[1] - deliveryAddress[1]) < 0.0001) {
            clearInterval(interval);
            driverMarker.bindPopup("Order Delivered!").openPopup();
        }
    }, updateInterval);
}

// Initialize the map when the page loads
window.onload = initMap;
