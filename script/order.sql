DROP TABLE ORDERS CASCADE CONSTRAINT;

CREATE TABLE ORDERS(
	ORDER_ID VARCHAR(255) NOT NULL,
    COLLECTION_WEEK VARCHAR(255),
    COLLECTION_DAY VARCHAR(255),
    COLLECTION_TIME VARCHAR(255),
    PAYMENT DECIMAL (10,2),
    FK1_User_ID INTEGER NOT NULL,
    CONSTRAINT ORDERS PRIMARY KEY (ORDER_ID)
);
ALTER TABLE ORDERS ADD CONSTRAINT FK1_ORDERS_TO_USER FOREIGN KEY(FK1_User_ID) REFERENCES user_master(User_ID) ON DELETE CASCADE;

DROP TABLE ORDER_PRODUCT CASCADE CONSTRAINT;

CREATE TABLE ORDER_PRODUCT(
	ORDER_PROD_ID INTEGER NOT NULL,
    QUANTITY NUMBER,
    FK1_ORDER_ID VARCHAR(255) NOT NULL,
    FK2_PRODUCT_ID INTEGER NOT NULL,
    CONSTRAINT ORDER_PROD PRIMARY KEY (ORDER_PROD_ID)
);
ALTER TABLE ORDER_PRODUCT ADD CONSTRAINT FK1_ORDERPROD_TO_ORDERS FOREIGN KEY(FK1_ORDER_ID) REFERENCES ORDERS(ORDER_ID) ON DELETE CASCADE;
ALTER TABLE ORDER_PRODUCT ADD CONSTRAINT FK2_ORDERPROD_TO_PRODUCT FOREIGN KEY(FK2_PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID) ON DELETE CASCADE;