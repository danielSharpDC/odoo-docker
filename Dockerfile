# Use the official Odoo image as a base
FROM odoo:17.0

# Copy custom configuration if any
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Copy custom addons
COPY ./addons /mnt/extra-addons

# Set the working directory
WORKDIR /var/lib/odoo

# Default command to run Odoo
CMD ["odoo"]
