create table lte_data.products (
    id smallserial not null,
    product_name text not null,
    product_role_id smallint not null,
    registration_number text null,
    first_authorisation_date date null,
    expiry_date date null,
    product_notes text null,
    constraint products_pk primary key(id),
    constraint products_product_role_id_fk foreign key (product_role_id) references product_role_terms(id)
);

comment on table lte_data.products is 'A list of products used as inputs. These are typically tradenames.';
 
comment on column lte_data.products.product_role_id is 'Identifies the role of the product';
comment on column lte_data.products.registration_number is 'This is unique product registration such as a UK MAPP No.';
comment on column lte_data.products.first_authorisation_date is 'The date the product was first authorised for use.';
comment on column lte_data.products.expiry_date is 'The date product use expired.';
comment on column lte_data.products.product_notes is 'Any additional notes about the product.';