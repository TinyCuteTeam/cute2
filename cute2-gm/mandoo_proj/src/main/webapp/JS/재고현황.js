document.addEventListener('DOMContentLoaded', function() {
            var updateModal = document.getElementById('update-modal');
            var addItemPopup = document.getElementById('popup-overlay');
            var closeUpdateModal = updateModal.querySelector('.close');
            var closeAddItemPopup = addItemPopup.querySelector('#close-popup');
            
            // Open Add Item Popup
            document.getElementById('open-popup').addEventListener('click', function() {
                addItemPopup.style.display = 'block';
            });

            // Close Add Item Popup
            closeAddItemPopup.addEventListener('click', function() {
                addItemPopup.style.display = 'none';
            });

            // Close Update Modal
            closeUpdateModal.addEventListener('click', function() {
                updateModal.style.display = 'none';
            });

            // Close modal if clicked outside
            window.onclick = function(event) {
                if (event.target == updateModal) {
                    updateModal.style.display = 'none';
                }
                if (event.target == addItemPopup) {
                    addItemPopup.style.display = 'none';
                }
            }

            // Open Update Modal
            document.querySelectorAll('.update-button').forEach(function(button) {
                button.addEventListener('click', function() {
                    document.getElementById('update-item-id').value = button.getAttribute('data-id');
                    document.getElementById('update-item-code').value = button.getAttribute('data-code');
                    document.getElementById('update-item-name').value = button.getAttribute('data-name');
                    document.getElementById('update-item-stock').value = button.getAttribute('data-count');
                    document.getElementById('update-item-location').value = button.getAttribute('data-location');
                    document.getElementById('update-item-sort').value = button.getAttribute('data-sort');
                    
                    updateModal.style.display = 'block';
                });
            });
        });