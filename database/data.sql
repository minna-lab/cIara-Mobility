--
-- PostgreSQL database dump
--


-- Dumped from database version 18.2 (Postgres.app)
-- Dumped by pg_dump version 18.2

-- Started on 2026-02-21 13:21:40 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3744 (class 0 OID 16646)
-- Dependencies: 223
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id_client, nom, prenom, email) FROM stdin;
1	Dupont	Marie	marie.dupont@email.fr
2	Martin	Thomas	thomas.martin@email.fr
3	Bernard	Sophie	sophie.bernard@email.fr
4	Dubois	Lucas	lucas.dubois@email.fr
5	Mercier	Emma	emma.mercier@email.fr
6	Petit	Alexandre	alexandre.petit@email.fr
7	Robert	Léa	lea.robert@email.fr
8	Richard	Hugo	hugo.richard@email.fr
9	Simon	Chloé	chloe.simon@email.fr
10	Laurent	Nathan	nathan.laurent@email.fr
11	Lefebvre	Camille	camille.lefebvre@email.fr
12	Michel	Jules	jules.michel@email.fr
13	Garcia	Manon	manon.garcia@email.fr
14	David	Louis	louis.david@email.fr
15	Bertrand	Inès	ines.bertrand@email.fr
16	Roux	Gabriel	gabriel.roux@email.fr
17	Moreau	Alice	alice.moreau@email.fr
18	Fournier	Arthur	arthur.fournier@email.fr
19	Girard	Sarah	sarah.girard@email.fr
20	Bonnet	Raphaël	raphael.bonnet@email.fr
\.


--
-- TOC entry 3742 (class 0 OID 16636)
-- Dependencies: 221
-- Data for Name: station; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.station (id_station, nom, ville) FROM stdin;
1	Gare Centrale	Paris
2	République	Paris
3	Part-Dieu	Lyon
4	Bellecour	Lyon
5	Saint-Charles	Marseille
6	Vieux-Port	Marseille
7	Capitole	Toulouse
8	Jean Jaurès	Toulouse
9	Masséna	Nice
10	Promenade des Anglais	Nice
11	Lille Flandres	Lille
12	Grand Place	Lille
13	Gare Saint-Jean	Bordeaux
14	Place de la Bourse	Bordeaux
15	Gare Sud	Nantes
16	Commerce	Nantes
17	Saint-Roch	Montpellier
18	Comédie	Montpellier
19	Gare Centrale	Strasbourg
20	Petite France	Strasbourg
\.


--
-- TOC entry 3740 (class 0 OID 16618)
-- Dependencies: 219
-- Data for Name: vehicule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehicule (id_vehicule, marque, modele, type_vehicule, autonomie_km, etat, ville, annee, immatriculation) FROM stdin;
1	Kia	EV6	Electrique	320	En maintenance	Strasbourg	2022	XR-964-LJ
2	Kia	EV6	Electrique	270	En maintenance	Nantes	2024	OY-932-RY
3	Hyundai	Ioniq 5	Electrique	380	Hors service	Marseille	2022	BJ-663-FL
4	Kia	EV6	Electrique	480	Hors service	Montpellier	2024	MW-909-XP
5	Mercedes	EQA	Electrique	390	En maintenance	Lyon	2021	UN-317-LM
6	Hyundai	Ioniq 5	Electrique	330	En maintenance	Montpellier	2024	PU-953-NB
7	BMW	iX1	Electrique	270	Hors service	Toulouse	2024	YO-412-AH
8	Nissan	Leaf	Electrique	270	Disponible	Lyon	2024	SO-650-ZD
9	Toyota	Proace Electric	Electrique	530	En maintenance	Nice	2023	YE-805-LI
10	Renault	Megane E-Tech	Electrique	550	Disponible	Montpellier	2024	YE-951-QU
11	Citroen	Ami	Electrique	550	Disponible	Lyon	2024	WT-751-VN
12	Mercedes	EQB	Electrique	420	En maintenance	Toulouse	2024	OD-742-GO
13	Volkswagen	ID.5	Electrique	550	Hors service	Nantes	2022	KO-197-KW
14	Mercedes	EQA	Electrique	500	En maintenance	Lille	2022	KM-850-ZY
15	Kia	Soul EV	Electrique	360	Hors service	Nantes	2024	TR-567-ZM
16	Renault	Megane E-Tech	Electrique	590	Disponible	Marseille	2021	JR-526-BM
17	Citroen	Ami	Electrique	340	Hors service	Strasbourg	2023	XF-922-TM
18	Tesla	Model 3	Electrique	270	En maintenance	Nice	2022	HU-769-AI
19	Kia	Soul EV	Electrique	510	Disponible	Toulouse	2022	IW-415-IT
20	Mercedes	EQA	Electrique	500	Disponible	Paris	2022	IL-910-WY
21	Mercedes	EQB	Electrique	330	En maintenance	Nantes	2023	FF-812-UQ
22	Toyota	Proace Electric	Electrique	320	En maintenance	Lyon	2024	UD-673-OE
23	Mercedes	EQA	Electrique	420	Disponible	Montpellier	2021	AQ-685-JB
24	Toyota	Proace Electric	Electrique	290	En maintenance	Marseille	2022	PS-158-WM
25	Nissan	Ariya	Electrique	470	En maintenance	Bordeaux	2021	WN-898-EP
26	Volkswagen	ID.4	Electrique	580	Disponible	Lille	2023	XU-837-FD
27	Peugeot	e-308	Electrique	320	Hors service	Marseille	2023	ON-875-UO
28	Toyota	Proace Electric	Electrique	430	En maintenance	Nantes	2023	GO-836-IU
29	Citroen	Ami	Electrique	480	Disponible	Lyon	2022	VE-965-UY
30	Hyundai	Ioniq 5	Electrique	410	En maintenance	Nantes	2024	UE-921-ED
31	Mercedes	EQA	Electrique	450	En maintenance	Nice	2021	YA-188-TY
32	Citroen	Ami	Electrique	340	Disponible	Toulouse	2023	HV-248-IT
33	Hyundai	Ioniq 5	Electrique	500	En maintenance	Strasbourg	2022	TZ-433-HF
34	Fiat	500e	Electrique	320	Hors service	Lille	2021	NQ-819-BP
35	Fiat	Panda EV	Electrique	540	Disponible	Paris	2022	DW-525-FC
36	Renault	Zoe	Electrique	300	En maintenance	Lyon	2023	QC-782-KP
37	BMW	iX1	Electrique	400	Disponible	Bordeaux	2022	UG-214-SA
38	Mercedes	EQB	Electrique	290	Hors service	Lyon	2021	IT-929-YS
39	Nissan	Leaf	Electrique	490	Disponible	Montpellier	2022	TH-749-AC
40	Tesla	Model 3	Electrique	390	Disponible	Paris	2022	NC-394-CX
41	Volkswagen	ID.4	Electrique	340	En maintenance	Strasbourg	2023	HX-598-OS
42	Citroen	Berlingo EV	Electrique	450	Disponible	Bordeaux	2023	AN-441-ZU
43	Mercedes	EQE	Electrique	520	En maintenance	Nice	2022	QN-135-FB
44	Fiat	500e	Electrique	590	Hors service	Marseille	2024	ZO-456-RC
45	Tesla	Model Y	Electrique	450	Hors service	Lille	2022	HY-708-CY
46	Hyundai	Kona Electric	Electrique	560	Hors service	Montpellier	2023	AR-624-YF
47	Citroen	e-C4	Electrique	420	Disponible	Nice	2022	TW-514-GR
48	Toyota	bZ4X	Electrique	250	Disponible	Lyon	2021	SI-389-FD
49	Toyota	bZ4X	Electrique	320	Disponible	Nantes	2023	QI-180-WY
50	Renault	Zoe	Electrique	550	Hors service	Nice	2024	SW-740-DO
51	Tesla	Model S	Electrique	340	Hors service	Lille	2023	FF-225-KQ
52	Volkswagen	ID.3	Electrique	480	Disponible	Bordeaux	2024	QS-174-ZR
53	Tesla	Model S	Electrique	260	Disponible	Nice	2024	LP-456-BF
54	Tesla	Model Y	Electrique	410	Hors service	Montpellier	2024	WE-429-FR
55	Peugeot	e-208	Electrique	390	Hors service	Montpellier	2021	EL-581-UI
56	Mercedes	EQE	Electrique	250	Disponible	Lille	2021	RJ-910-JH
57	Mercedes	EQB	Electrique	540	Disponible	Lyon	2024	MM-708-MP
58	Toyota	bZ4X	Electrique	410	En maintenance	Lille	2023	AX-830-FQ
59	Renault	Megane E-Tech	Electrique	570	Hors service	Nantes	2022	TE-356-RM
60	Nissan	Leaf	Electrique	250	Disponible	Paris	2021	EB-604-AD
61	Fiat	500e	Electrique	430	Disponible	Montpellier	2021	SU-704-FB
62	Mercedes	EQE	Electrique	450	Hors service	Bordeaux	2022	VA-230-KN
63	Citroen	Berlingo EV	Electrique	250	Hors service	Marseille	2023	AN-425-ZW
64	Renault	Twingo E-Tech	Electrique	350	Disponible	Bordeaux	2024	KZ-306-XV
65	Tesla	Model 3	Electrique	570	Disponible	Montpellier	2021	SD-357-YU
66	Nissan	Ariya	Electrique	490	En maintenance	Lille	2023	FO-267-ZD
67	Kia	EV6	Electrique	260	Disponible	Bordeaux	2022	LS-696-PV
68	Citroen	Ami	Electrique	310	Hors service	Toulouse	2023	ZV-338-JX
69	Mercedes	EQA	Electrique	480	Hors service	Nice	2024	TC-188-QF
70	Mercedes	EQA	Electrique	360	Disponible	Paris	2023	QD-535-RQ
71	Fiat	500e	Electrique	260	En maintenance	Paris	2021	YW-289-PL
72	Hyundai	Ioniq 6	Electrique	310	Hors service	Bordeaux	2024	CX-634-XG
73	Peugeot	e-2008	Electrique	550	En maintenance	Strasbourg	2023	SE-164-IS
74	Nissan	Ariya	Electrique	300	Hors service	Strasbourg	2023	SW-661-EL
75	Mercedes	EQA	Electrique	490	En maintenance	Marseille	2021	FV-360-TH
76	Renault	Zoe	Electrique	540	Hors service	Lille	2021	RW-414-YG
77	Toyota	bZ4X	Electrique	350	En maintenance	Strasbourg	2023	KE-749-OR
78	Mercedes	EQE	Electrique	570	Disponible	Toulouse	2021	EM-599-QD
79	Kia	Soul EV	Electrique	360	Hors service	Toulouse	2023	YL-392-JL
159	BMW	iX1	Electrique	480	Disponible	Lyon	2023	TH-109-OL
80	Renault	Megane E-Tech	Electrique	340	Disponible	Lille	2023	SW-667-JM
81	Hyundai	Kona Electric	Electrique	400	Disponible	Lille	2022	HO-110-PM
82	Hyundai	Ioniq 5	Electrique	280	Hors service	Bordeaux	2023	CN-775-SP
83	Tesla	Model 3	Electrique	490	Hors service	Nantes	2024	NW-528-XK
84	Fiat	Panda EV	Electrique	520	Hors service	Montpellier	2021	PV-742-CK
85	Fiat	500e	Electrique	360	Disponible	Paris	2021	WZ-347-FT
86	Tesla	Model Y	Electrique	330	Disponible	Marseille	2022	JX-290-MI
87	Hyundai	Ioniq 5	Electrique	540	Hors service	Lille	2023	DP-239-MK
88	Kia	EV6	Electrique	300	Disponible	Nantes	2021	BP-212-VV
89	Citroen	Ami	Electrique	310	Disponible	Nice	2021	WS-948-XM
90	Toyota	Proace Electric	Electrique	400	Hors service	Bordeaux	2024	UO-609-AK
91	Toyota	bZ4X	Electrique	330	En maintenance	Nice	2022	DE-120-IL
92	Nissan	Ariya	Electrique	360	En maintenance	Paris	2023	NL-530-PG
93	Toyota	Proace Electric	Electrique	300	Disponible	Toulouse	2023	GJ-521-QR
94	Citroen	Berlingo EV	Electrique	550	En maintenance	Lille	2024	OE-844-KP
95	Hyundai	Ioniq 6	Electrique	470	Hors service	Montpellier	2021	HW-712-EI
96	Fiat	Panda EV	Electrique	330	Disponible	Strasbourg	2021	TF-251-SI
97	Tesla	Model 3	Electrique	410	En maintenance	Bordeaux	2023	ZK-632-LE
98	Renault	Zoe	Electrique	270	Disponible	Nantes	2023	OM-169-MV
99	BMW	i4	Electrique	590	Hors service	Marseille	2022	ET-620-CS
100	Kia	Niro EV	Electrique	570	Hors service	Bordeaux	2024	LG-389-OK
101	Peugeot	e-2008	Electrique	490	Disponible	Lille	2023	WI-254-SD
102	Volkswagen	ID.5	Electrique	540	Hors service	Lille	2022	WL-753-WR
103	Kia	Soul EV	Electrique	350	Disponible	Lyon	2023	IR-711-JA
104	Mercedes	EQE	Electrique	470	En maintenance	Montpellier	2021	RP-199-AS
105	Renault	Megane E-Tech	Electrique	400	En maintenance	Montpellier	2021	XT-498-QA
106	Volkswagen	ID.5	Electrique	290	Disponible	Toulouse	2021	WG-359-PO
107	Mercedes	EQA	Electrique	340	Disponible	Lyon	2022	FX-993-XP
108	Toyota	bZ4X	Electrique	480	En maintenance	Lille	2024	MB-368-UO
109	BMW	iX1	Electrique	290	Hors service	Nantes	2024	QL-947-DJ
110	Citroen	Ami	Electrique	570	Hors service	Nantes	2023	BZ-366-UO
111	Citroen	e-C4	Electrique	260	En maintenance	Montpellier	2022	WJ-620-FG
112	Mercedes	EQA	Electrique	370	Disponible	Toulouse	2023	RZ-370-NL
113	Nissan	Leaf	Electrique	390	Disponible	Bordeaux	2024	BP-234-SK
114	Fiat	Panda EV	Electrique	350	En maintenance	Marseille	2023	XJ-945-HM
115	Mercedes	EQB	Electrique	530	Disponible	Marseille	2022	DH-852-NY
116	Mercedes	EQA	Electrique	280	Disponible	Montpellier	2021	NK-133-FM
117	BMW	iX1	Electrique	490	En maintenance	Toulouse	2024	WD-869-LS
118	BMW	i4	Electrique	250	Disponible	Paris	2024	ZR-949-AH
119	Nissan	Ariya	Electrique	510	En maintenance	Paris	2022	NL-355-NC
120	Volkswagen	ID.4	Electrique	260	Disponible	Strasbourg	2023	PR-323-VJ
121	Tesla	Model Y	Electrique	360	Disponible	Strasbourg	2023	AE-397-CK
122	Fiat	Panda EV	Electrique	340	Hors service	Toulouse	2024	FT-670-QN
123	Peugeot	e-2008	Electrique	480	En maintenance	Montpellier	2021	PS-782-EL
124	Nissan	Ariya	Electrique	440	Hors service	Bordeaux	2023	DK-304-FY
125	Fiat	Panda EV	Electrique	350	Disponible	Strasbourg	2023	FC-495-SL
126	Fiat	Panda EV	Electrique	520	En maintenance	Nice	2024	VK-465-JT
127	Mercedes	EQB	Electrique	370	En maintenance	Nantes	2021	QY-837-UB
128	Fiat	Panda EV	Electrique	310	Disponible	Montpellier	2023	NH-411-OO
129	Mercedes	EQB	Electrique	440	Hors service	Lille	2022	LJ-641-IZ
130	Tesla	Model S	Electrique	530	Disponible	Lyon	2021	UM-650-SA
131	Kia	EV6	Electrique	590	Hors service	Nantes	2022	RB-458-VO
132	Mercedes	EQB	Electrique	510	Hors service	Lille	2022	VE-861-VS
133	Mercedes	EQE	Electrique	300	Disponible	Bordeaux	2022	CJ-528-YK
134	Tesla	Model 3	Electrique	560	En maintenance	Marseille	2024	SO-450-TY
135	Hyundai	Kona Electric	Electrique	250	Disponible	Paris	2024	JL-958-MC
136	Nissan	Ariya	Electrique	450	Disponible	Lyon	2022	BL-747-IP
137	Peugeot	e-308	Electrique	560	Disponible	Lille	2024	IJ-140-LZ
138	Nissan	Leaf	Electrique	530	Disponible	Bordeaux	2023	ME-146-YS
139	Nissan	Ariya	Electrique	360	Disponible	Nantes	2023	WU-151-UG
140	Volkswagen	ID.5	Electrique	370	En maintenance	Marseille	2024	MN-866-BT
141	Tesla	Model 3	Electrique	270	Disponible	Nantes	2024	KH-489-MM
142	Mercedes	EQE	Electrique	590	En maintenance	Bordeaux	2024	ZF-466-DO
143	Fiat	Panda EV	Electrique	270	En maintenance	Paris	2024	RG-111-UB
144	Peugeot	e-2008	Electrique	420	Disponible	Lille	2022	UT-617-SM
145	Fiat	Panda EV	Electrique	510	Hors service	Bordeaux	2021	VK-657-DT
146	Tesla	Model 3	Electrique	430	Disponible	Montpellier	2024	VN-439-QX
147	Kia	Soul EV	Electrique	500	En maintenance	Marseille	2022	TW-416-PG
148	Citroen	Berlingo EV	Electrique	480	Hors service	Nantes	2022	XI-615-WE
149	Citroen	Ami	Electrique	460	Hors service	Toulouse	2024	AM-438-XO
150	Toyota	Proace Electric	Electrique	330	En maintenance	Nantes	2023	IS-472-XI
151	Mercedes	EQE	Electrique	370	Disponible	Bordeaux	2022	VH-124-QD
152	Nissan	Ariya	Electrique	320	En maintenance	Marseille	2022	UH-682-IO
153	Hyundai	Kona Electric	Electrique	500	Hors service	Lyon	2024	DE-955-XC
154	Fiat	500e	Electrique	580	Disponible	Nice	2022	EB-649-OH
155	Nissan	Ariya	Electrique	560	En maintenance	Nantes	2022	XN-131-XQ
156	Mercedes	EQA	Electrique	290	Disponible	Nantes	2023	YT-400-RA
157	Peugeot	e-208	Electrique	560	Disponible	Paris	2024	BN-764-CE
158	Hyundai	Ioniq 6	Electrique	260	Disponible	Lyon	2023	MC-203-SW
160	Mercedes	EQB	Electrique	490	Disponible	Toulouse	2023	HA-896-FD
161	Toyota	Proace Electric	Electrique	320	Disponible	Nantes	2023	IV-986-QN
162	Mercedes	EQE	Electrique	440	Hors service	Nice	2023	TS-753-YT
163	Mercedes	EQE	Electrique	480	Hors service	Lille	2021	HQ-340-ME
164	Peugeot	e-2008	Electrique	490	Disponible	Marseille	2023	TM-569-HA
165	Toyota	bZ4X	Electrique	440	Disponible	Nice	2023	WK-987-YD
166	Peugeot	e-308	Electrique	490	Hors service	Nantes	2023	UD-306-PX
167	Kia	EV6	Electrique	280	Disponible	Nice	2021	BU-389-QH
168	Renault	Twingo E-Tech	Electrique	260	Disponible	Lille	2024	SV-706-SJ
169	Volkswagen	ID.3	Electrique	300	Disponible	Lyon	2022	OI-419-ZT
170	Peugeot	e-2008	Electrique	480	En maintenance	Lille	2024	LN-599-UP
171	Tesla	Model Y	Electrique	560	Disponible	Toulouse	2024	GD-271-MQ
172	Fiat	Panda EV	Electrique	500	Disponible	Lille	2022	PF-512-MT
173	Volkswagen	ID.4	Electrique	350	Disponible	Toulouse	2022	SB-817-VP
174	Peugeot	e-208	Electrique	330	Disponible	Marseille	2021	VY-619-MP
175	BMW	i4	Electrique	330	Hors service	Bordeaux	2023	DR-314-DR
176	Fiat	Panda EV	Electrique	270	Disponible	Nantes	2021	JY-869-HY
177	Kia	Niro EV	Electrique	340	Disponible	Lille	2024	QJ-391-VO
178	Renault	Twingo E-Tech	Electrique	340	En maintenance	Toulouse	2023	SB-797-MR
179	Kia	Niro EV	Electrique	420	En maintenance	Strasbourg	2023	AX-470-KN
180	BMW	iX1	Electrique	420	Disponible	Marseille	2023	KM-572-NJ
181	Renault	Megane E-Tech	Electrique	520	En maintenance	Lyon	2021	PU-577-ZZ
182	Hyundai	Ioniq 6	Electrique	250	En maintenance	Toulouse	2024	TZ-622-EA
183	Toyota	Proace Electric	Electrique	570	Disponible	Lille	2022	EH-429-CM
184	Volkswagen	ID.3	Electrique	410	En maintenance	Toulouse	2023	OS-980-AT
185	Tesla	Model 3	Electrique	480	En maintenance	Lyon	2022	TI-895-UI
186	Tesla	Model Y	Electrique	290	Disponible	Nantes	2022	NN-119-YJ
187	Volkswagen	ID.3	Electrique	450	Hors service	Montpellier	2023	RV-850-FT
188	Peugeot	e-2008	Electrique	310	Disponible	Nantes	2022	UX-407-TO
189	Volkswagen	ID.3	Electrique	540	Disponible	Toulouse	2024	FZ-415-DG
190	Renault	Twingo E-Tech	Electrique	550	Hors service	Marseille	2024	BH-615-AM
191	Volkswagen	ID.4	Electrique	540	Hors service	Nice	2024	VP-134-EA
192	Volkswagen	ID.3	Electrique	550	En maintenance	Nantes	2024	UJ-309-EH
193	Fiat	500e	Electrique	370	Disponible	Nice	2024	KT-363-MD
194	Hyundai	Ioniq 6	Electrique	410	Disponible	Strasbourg	2021	BK-529-UC
195	Mercedes	EQB	Electrique	590	Hors service	Strasbourg	2023	EJ-848-ZK
196	BMW	iX1	Electrique	550	En maintenance	Lyon	2021	OS-817-PA
197	Renault	Zoe	Electrique	480	Disponible	Lyon	2021	LO-729-ZR
198	Peugeot	e-2008	Electrique	470	Disponible	Lille	2021	XD-909-AR
199	Citroen	e-C4	Electrique	460	Hors service	Nice	2024	HO-747-OR
200	Citroen	e-C4	Electrique	580	Disponible	Nice	2022	XE-564-VB
\.


--
-- TOC entry 3746 (class 0 OID 16659)
-- Dependencies: 225
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) FROM stdin;
1	2026-02-01 00:00:00	2026-02-03 00:00:00	1	1	1	2
2	2026-02-05 00:00:00	2026-02-06 00:00:00	2	2	3	4
3	2026-02-07 00:00:00	2026-02-09 00:00:00	3	3	5	6
4	2026-02-10 00:00:00	2026-02-11 00:00:00	4	4	7	8
5	2026-02-12 00:00:00	2026-02-13 00:00:00	5	5	9	10
6	2026-02-14 00:00:00	2026-02-15 00:00:00	6	6	11	12
7	2026-02-16 00:00:00	2026-02-17 00:00:00	7	7	13	14
8	2026-02-18 00:00:00	2026-02-19 00:00:00	8	8	15	16
9	2026-02-20 00:00:00	2026-02-21 00:00:00	9	9	17	18
10	2026-02-22 00:00:00	2026-02-23 00:00:00	10	10	19	20
11	2026-02-24 00:00:00	2026-02-25 00:00:00	1	11	1	2
12	2026-02-26 00:00:00	2026-02-27 00:00:00	1	12	3	4
13	2026-02-28 00:00:00	2026-03-01 00:00:00	2	13	5	6
14	2026-03-02 00:00:00	2026-03-03 00:00:00	2	14	7	8
15	2026-03-04 00:00:00	2026-03-05 00:00:00	11	15	9	10
16	2026-03-06 00:00:00	2026-03-07 00:00:00	12	16	11	12
17	2026-03-08 00:00:00	2026-03-09 00:00:00	13	17	13	14
18	2026-03-10 00:00:00	2026-03-11 00:00:00	14	18	15	16
19	2026-03-12 00:00:00	2026-03-13 00:00:00	15	19	17	18
20	2026-03-14 00:00:00	2026-03-15 00:00:00	16	20	19	20
\.


--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 222
-- Name: client_id_client_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_client_seq', 20, true);


--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 224
-- Name: location_id_location_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.location_id_location_seq', 20, true);


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 220
-- Name: station_id_station_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.station_id_station_seq', 20, true);


-- Completed on 2026-02-21 13:21:40 CET

--
-- PostgreSQL database dump complete
--


