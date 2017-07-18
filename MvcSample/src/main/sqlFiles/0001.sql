CREATE TABLE public.user_details
(
  user_id integer NOT NULL DEFAULT nextval('user_details_user_id_seq'::regclass),
  user_firstname character varying(100),
  user_lastname character varying(100),
  user_age integer NOT NULL DEFAULT 0,
  user_email character varying(50),
  user_country character varying(100),
  CONSTRAINT user_details_user_id_key UNIQUE (user_id)
)

CREATE TABLE public.user_contact_details
(
  user_id integer,
  contact_id integer NOT NULL DEFAULT nextval('user_contact_details_contact_id_seq'::regclass),
  phone_number character varying(20),
  comments character varying(200),
  CONSTRAINT user_contact_details_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES public.user_details (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

INSERT INTO public.user_details(user_firstname, user_lastname, user_age, user_email, 
            user_country)
    VALUES ('Aditya', 'Bhatnagar', 24, 'adityabhatnagar413@gmail.com','India');


INSERT INTO public.user_details(user_firstname, user_lastname, user_age, user_email, 
            user_country)
    VALUES ('Aditya 1', 'Bhatnagar 1', 24, 'adityabhatnagar413@gmail.com','India');

INSERT INTO public.user_contact_details(
            user_id, phone_number, comments)
    VALUES (1,'8285169098', 'Aditya first number');

INSERT INTO public.user_contact_details(
            user_id, phone_number, comments)
    VALUES (2,'8285169098', 'Aditya1 second number');
