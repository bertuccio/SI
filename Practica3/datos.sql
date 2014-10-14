--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: alumnodb
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 869, true);


--
-- Data for Name: alerta; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY alerta (fecha, id_usuario, texto) FROM stdin;
2004-12-29 00:00:00+01	383	El libro con isbn 0000000012784 esta listo para ser cerrado.
1999-05-01 00:00:00+02	148	El libro con isbn 0000000001531 esta listo para ser cerrado.
2005-01-29 00:00:00+01	\N	El libro con isbn 0000000012784 se da por terminado.
1999-06-01 00:00:00+02	\N	El libro con isbn 0000000001531 se da por terminado.
\.


--
-- Data for Name: fase; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY fase (id_fase, descripcion, orden) FROM stdin;
F0	Fase 0: inicial	0
PF	Primera Fase: texto	1
SF	Segunda Fase: formateo	2
TF	Tercera Fase: composicion	3
FI	FIN: Proyecto cerrado	4
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY usuario (id_usuario, login, password, fecha, nivel, n_paginaspf, n_paginassf, n_paginastf, escoordinador, escorrector, escolaborador, email, essysadmin) FROM stdin;
48	mhz	mhz	2009-10-30	TF	9	33	18	f	t	f	mhz@si1.org	f
81	larsen	larsen	2007-11-11	TF	0	0	0	t	t	t	larsen@si1.org	t
73	patois	patois	2008-11-12	F0	0	0	0	f	f	t	patois@si1.org	f
74	landau	landau	2007-09-08	SF	0	0	0	f	t	f	landau@si1.org	f
75	fungus	fungus	2009-03-20	TF	0	0	0	f	t	f	fungus@si1.org	f
76	gerry	gerry	2007-07-07	SF	0	0	0	f	t	f	gerry@si1.org	f
77	blind	blind	2006-12-24	F0	0	0	0	f	t	f	blind@si1.org	f
78	polly	polly	2007-11-29	TF	0	0	0	f	t	f	polly@si1.org	f
79	blouse	blouse	2008-09-24	PF	0	0	0	f	t	f	blouse@si1.org	f
80	agency	agency	2008-03-26	TF	7	29	24	f	t	f	agency@si1.org	f
82	tawdry	tawdry	2009-01-06	TF	0	0	0	f	t	f	tawdry@si1.org	f
83	nashua	nashua	2008-11-30	TF	5	32	17	f	t	f	nashua@si1.org	f
84	dentin	dentin	2007-11-04	F0	0	0	0	f	t	f	dentin@si1.org	f
85	close	close	2007-08-30	F0	0	0	0	f	f	t	close@si1.org	f
86	cadre	cadre	2010-07-07	F0	0	0	0	f	t	t	cadre@si1.org	f
87	check	check	2007-08-16	SF	0	0	0	f	t	f	check@si1.org	f
88	signet	signet	2006-04-08	F0	0	0	0	f	t	t	signet@si1.org	f
89	meadow	meadow	2009-02-22	TF	0	0	0	t	t	t	meadow@si1.org	f
90	nickel	nickel	2006-04-13	F0	0	0	0	f	f	t	nickel@si1.org	f
91	jobber	jobber	2008-01-20	PF	0	0	0	f	t	f	jobber@si1.org	f
92	dawson	dawson	2006-08-19	PF	0	0	0	f	t	f	dawson@si1.org	f
93	syrupy	syrupy	2009-01-17	TF	0	0	0	f	t	f	syrupy@si1.org	f
94	manchu	manchu	2009-09-13	F0	0	0	0	f	f	t	manchu@si1.org	f
95	bogged	bogged	2006-12-29	PF	0	0	0	f	t	f	bogged@si1.org	f
96	aeneas	aeneas	2010-10-07	PF	156	0	0	f	t	f	aeneas@si1.org	f
97	tenpin	tenpin	2008-05-28	F0	0	0	0	f	t	f	tenpin@si1.org	f
98	jew	jew	2007-09-08	F0	0	0	0	f	f	t	jew@si1.org	f
99	augean	augean	2009-01-22	F0	0	0	0	f	t	f	augean@si1.org	f
100	stake	stake	2009-12-15	TF	3	37	21	f	t	f	stake@si1.org	f
101	poppy	poppy	2009-07-08	PF	0	0	0	f	t	f	poppy@si1.org	f
102	thread	thread	2009-03-17	F0	0	0	0	f	f	t	thread@si1.org	f
103	union	union	2007-11-08	F0	0	0	0	f	t	f	union@si1.org	f
104	shovel	shovel	2007-03-03	TF	0	0	0	t	t	t	shovel@si1.org	f
105	bpi	bpi	2009-06-27	PF	0	0	0	f	t	f	bpi@si1.org	f
106	run	run	2010-02-13	SF	0	0	0	f	t	f	run@si1.org	f
107	noel's	noel's	2008-04-28	F0	0	0	0	f	t	t	noel's@si1.org	f
108	toledo	toledo	2005-11-18	SF	0	0	0	f	t	f	toledo@si1.org	f
109	cullen	cullen	2006-09-02	F0	0	0	0	f	f	t	cullen@si1.org	f
110	burden	burden	2009-10-27	TF	0	0	0	f	t	f	burden@si1.org	f
111	slalom	slalom	2008-07-19	PF	0	0	0	f	t	f	slalom@si1.org	f
112	weeper	weeper	2008-02-27	TF	0	0	0	t	t	t	weeper@si1.org	f
113	proxy	proxy	2010-03-19	TF	0	0	0	t	t	t	proxy@si1.org	f
114	unmask	unmask	2010-10-07	PF	0	0	0	f	t	f	unmask@si1.org	f
115	votary	votary	2006-01-27	SF	0	0	0	f	t	f	votary@si1.org	f
116	ticced	ticced	2007-09-18	SF	0	0	0	f	t	f	ticced@si1.org	f
117	rat	rat	2009-02-18	TF	0	0	0	f	t	f	rat@si1.org	f
118	jay	jay	2007-09-07	PF	0	0	0	f	t	f	jay@si1.org	f
119	truman	truman	2009-02-02	TF	0	0	0	f	t	f	truman@si1.org	f
120	seeker	seeker	2009-03-02	PF	0	0	0	f	t	f	seeker@si1.org	f
121	rsx	rsx	2010-02-03	TF	0	0	0	f	t	f	rsx@si1.org	f
122	lysol	lysol	2010-03-01	F0	0	0	0	f	t	t	lysol@si1.org	f
123	ounce	ounce	2005-10-21	F0	46	0	0	f	t	t	ounce@si1.org	f
124	dizzy	dizzy	2008-01-08	PF	155	0	0	f	t	f	dizzy@si1.org	f
125	jaipur	jaipur	2009-02-16	TF	0	0	0	f	t	f	jaipur@si1.org	f
126	guano	guano	2007-04-05	PF	0	0	0	f	t	f	guano@si1.org	f
127	evert	evert	2005-12-14	TF	6	20	20	f	t	f	evert@si1.org	f
128	ebay	ebay	2006-03-23	F0	0	0	0	f	t	f	ebay@si1.org	f
129	supply	supply	2005-11-18	SF	0	0	0	f	t	f	supply@si1.org	f
130	penned	penned	2007-09-14	TF	0	0	0	f	t	f	penned@si1.org	f
131	kruger	kruger	2008-11-30	PF	0	0	0	f	t	f	kruger@si1.org	f
132	gooey	gooey	2008-12-15	PF	0	0	0	f	t	f	gooey@si1.org	f
133	savior	savior	2008-09-24	F0	0	0	0	f	f	t	savior@si1.org	f
134	sices	sices	2010-03-29	F0	0	0	0	f	t	f	sices@si1.org	f
135	legato	legato	2009-07-20	TF	0	0	0	f	t	f	legato@si1.org	f
136	munch	munch	2008-03-12	SF	0	0	0	f	t	f	munch@si1.org	f
137	pupate	pupate	2006-03-02	F0	0	0	0	f	t	f	pupate@si1.org	f
138	take	take	2008-04-22	F0	0	0	0	f	t	f	take@si1.org	f
139	chose	chose	2006-09-12	TF	0	28	18	f	t	f	chose@si1.org	f
140	wart	wart	2009-09-18	F0	0	0	0	f	f	t	wart@si1.org	f
141	oxnard	oxnard	2008-08-28	F0	39	0	0	f	t	t	oxnard@si1.org	f
142	legend	legend	2006-09-28	TF	0	0	0	f	t	f	legend@si1.org	f
143	ursula	ursula	2008-02-02	TF	0	0	0	f	t	f	ursula@si1.org	f
144	lana	lana	2010-09-10	PF	0	0	0	f	t	f	lana@si1.org	f
145	steam	steam	2006-10-19	PF	0	0	0	f	t	f	steam@si1.org	f
146	joplin	joplin	2009-04-11	PF	0	0	0	f	t	f	joplin@si1.org	f
147	doily	doily	2009-09-27	F0	0	0	0	f	f	t	doily@si1.org	f
148	atkins	atkins	2006-01-11	TF	0	0	0	t	t	t	atkins@si1.org	f
149	bantu	bantu	2009-05-23	F0	0	0	0	f	t	t	bantu@si1.org	f
150	gall	gall	201-07-28	TF	0	0	0	f	t	f	gall@si1.org	f
151	foist	foist	2011-10-15	SF	32	197	109	f	t	f	foist@si1.org	f
152	stern	stern	2007-04-07	SF	0	0	0	f	t	f	stern@si1.org	f
153	fame	fame	2005-11-25	SF	30	198	115	f	t	f	fame@si1.org	f
154	trump	trump	2007-10-09	TF	0	0	0	f	t	f	trump@si1.org	f
155	evoke	evoke	2007-06-30	PF	0	0	0	f	t	f	evoke@si1.org	f
156	totted	totted	2008-11-10	TF	0	0	0	t	t	t	totted@si1.org	f
157	steve	steve	2007-02-19	F0	0	0	0	f	t	f	steve@si1.org	f
158	detox	detox	2009-06-28	TF	0	0	0	f	t	f	detox@si1.org	f
159	horus	horus	2009-08-02	F0	0	0	0	f	f	t	horus@si1.org	f
160	costar	costar	2006-05-01	SF	0	0	0	f	t	f	costar@si1.org	f
161	movie	movie	2006-01-22	TF	0	0	0	f	t	f	movie@si1.org	f
162	misdid	misdid	2009-10-26	PF	0	0	0	f	t	f	misdid@si1.org	f
163	darby	darby	2010-07-26	F0	0	0	0	f	t	t	darby@si1.org	f
164	oaf	oaf	2010-08-21	PF	0	0	0	f	t	f	oaf@si1.org	f
165	bootle	bootle	2005-11-20	TF	0	0	0	t	t	t	bootle@si1.org	f
166	gas	gas	2006-04-20	PF	0	0	0	f	t	f	gas@si1.org	f
167	wiemar	wiemar	2009-02-14	PF	0	0	0	f	t	f	wiemar@si1.org	f
168	layup	layup	2005-12-10	F0	0	0	0	f	t	t	layup@si1.org	f
169	josue	josue	2009-02-19	F0	0	0	0	f	t	f	josue@si1.org	f
170	cooled	cooled	2008-10-09	F0	0	0	0	f	f	t	cooled@si1.org	f
171	lade	lade	2006-03-06	F0	0	0	0	f	f	t	lade@si1.org	f
172	pang	pang	2008-07-16	PF	0	0	0	f	t	f	pang@si1.org	f
173	iago	iago	2007-11-30	F0	0	0	0	f	t	f	iago@si1.org	f
175	airily	airily	2007-07-24	TF	0	0	0	t	t	t	airily@si1.org	f
176	gang	gang	2007-12-07	F0	0	0	0	f	t	f	gang@si1.org	f
177	hale	hale	2006-02-23	TF	0	0	0	f	t	f	hale@si1.org	f
178	output	output	2010-01-23	SF	0	0	0	f	t	f	output@si1.org	f
179	sancta	sancta	2008-02-11	F0	42	0	0	f	t	t	sancta@si1.org	f
180	spake	spake	2007-05-22	F0	0	0	0	f	t	f	spake@si1.org	f
181	bans	bans	2008-06-05	SF	0	0	0	f	t	f	bans@si1.org	f
182	alcuin	alcuin	2006-04-14	TF	0	0	0	f	t	f	alcuin@si1.org	f
183	vivify	vivify	2009-09-13	F0	0	0	0	f	t	f	vivify@si1.org	f
184	causal	causal	2008-01-16	TF	0	0	0	f	t	f	causal@si1.org	f
185	she'll	she'll	2005-11-25	PF	0	0	0	f	t	f	she'll@si1.org	f
186	jazzy	jazzy	2009-01-24	F0	0	0	0	f	t	t	jazzy@si1.org	f
187	estes	estes	2008-07-10	PF	0	0	0	f	t	f	estes@si1.org	f
188	snippy	snippy	2008-04-23	TF	0	0	0	f	t	f	snippy@si1.org	f
189	putin	putin	2007-08-19	PF	0	0	0	f	t	f	putin@si1.org	f
190	casio	casio	2006-05-11	SF	0	0	0	f	t	f	casio@si1.org	f
191	gorge	gorge	2008-12-11	F0	0	0	0	f	t	t	gorge@si1.org	f
192	fabian	fabian	2009-03-21	F0	0	0	0	f	t	t	fabian@si1.org	f
193	peep	peep	2006-07-14	TF	0	0	0	f	t	f	peep@si1.org	f
194	heck	heck	2009-09-01	TF	0	0	0	t	t	t	heck@si1.org	f
195	peon	peon	2007-10-07	TF	3	26	16	t	t	t	peon@si1.org	f
196	jeep	jeep	2008-02-12	F0	0	0	0	f	t	f	jeep@si1.org	f
197	louvre	louvre	2006-11-19	SF	0	0	0	f	t	f	louvre@si1.org	f
198	amanda	amanda	2009-05-13	PF	0	0	0	f	t	f	amanda@si1.org	f
199	hoped	hoped	2006-05-31	TF	7	30	16	t	t	t	hoped@si1.org	f
200	nest	nest	2006-06-10	F0	0	0	0	f	t	t	nest@si1.org	f
201	kerr	kerr	2008-11-09	SF	0	0	0	f	t	f	kerr@si1.org	f
202	eleven	eleven	2008-04-20	F0	0	0	0	f	t	t	eleven@si1.org	f
203	basra	basra	2007-06-26	F0	36	0	0	f	t	f	basra@si1.org	f
204	batman	batman	2009-03-02	TF	0	0	0	t	t	t	batman@si1.org	f
205	papped	papped	2010-05-17	TF	0	0	0	f	t	f	papped@si1.org	f
206	puebla	puebla	2008-11-16	TF	0	0	0	f	t	f	puebla@si1.org	f
207	itchy	itchy	2006-12-01	SF	0	0	0	f	t	f	itchy@si1.org	f
208	tex	tex	2010-03-01	TF	0	0	0	f	t	f	tex@si1.org	f
209	comae	comae	2008-02-05	F0	0	0	0	f	t	f	comae@si1.org	f
210	balboa	balboa	2008-07-26	SF	0	0	0	f	t	f	balboa@si1.org	f
211	tin	tin	2009-06-20	TF	0	0	0	f	t	f	tin@si1.org	f
212	levy's	levy's	2007-10-05	F0	0	0	0	f	t	f	levy's@si1.org	f
213	wester	wester	2008-11-10	TF	0	0	0	t	t	t	wester@si1.org	f
214	stoic	stoic	2007-12-08	TF	0	0	0	f	t	f	stoic@si1.org	f
215	cheesy	cheesy	2010-10-12	TF	0	0	0	t	t	t	cheesy@si1.org	f
216	melt	melt	2006-12-19	PF	0	0	0	f	t	f	melt@si1.org	f
217	frill	frill	2008-12-05	F0	0	0	0	f	t	t	frill@si1.org	f
218	breed	breed	2006-03-13	PF	0	0	0	f	t	f	breed@si1.org	f
219	jurua	jurua	2006-10-26	F0	0	0	0	f	t	t	jurua@si1.org	f
220	tarawa	tarawa	2009-02-08	F0	0	0	0	f	f	t	tarawa@si1.org	f
221	berg	berg	2010-02-17	SF	0	0	0	f	t	f	berg@si1.org	f
222	bonsai	bonsai	2009-05-06	F0	0	0	0	f	t	f	bonsai@si1.org	f
223	erica	erica	2007-04-01	F0	0	0	0	f	f	t	erica@si1.org	f
224	reggie	reggie	2009-02-12	PF	0	0	0	f	t	f	reggie@si1.org	f
225	tie	tie	2007-06-26	PF	0	0	0	f	t	f	tie@si1.org	f
226	did	did	2008-12-05	SF	0	0	0	f	t	f	did@si1.org	f
227	hotel	hotel	2008-02-05	F0	0	0	0	f	f	t	hotel@si1.org	f
228	hudson	hudson	2008-02-03	TF	0	0	0	t	t	t	hudson@si1.org	f
229	gross	gross	2009-10-23	PF	0	0	0	f	t	f	gross@si1.org	f
230	drily	drily	2005-11-09	PF	0	0	0	f	t	f	drily@si1.org	f
231	italy	italy	2006-01-25	F0	0	0	0	f	f	t	italy@si1.org	f
232	alvaro	alvaro	2009-05-29	TF	6	31	15	f	t	f	alvaro@si1.org	f
233	tum	tum	2010-03-27	F0	0	0	0	f	t	t	tum@si1.org	f
234	windy	windy	2006-04-10	PF	0	0	0	f	t	f	windy@si1.org	f
235	tux	tux	2008-08-21	TF	0	0	0	f	t	f	tux@si1.org	f
236	thor	thor	2010-07-08	PF	0	0	0	f	t	f	thor@si1.org	f
237	thou	thou	2006-05-27	SF	0	0	0	f	t	f	thou@si1.org	f
238	comte	comte	2007-01-15	TF	0	0	0	f	t	f	comte@si1.org	f
239	girdle	girdle	2009-07-18	TF	0	0	0	t	t	t	girdle@si1.org	f
240	lenora	lenora	2008-11-04	TF	0	0	0	t	t	t	lenora@si1.org	f
241	drier	drier	2010-07-09	SF	0	0	0	f	t	f	drier@si1.org	f
242	wine	wine	2010-06-21	F0	0	0	0	f	f	t	wine@si1.org	f
243	reggae	reggae	2009-02-10	PF	0	0	0	f	t	f	reggae@si1.org	f
244	byron	byron	2008-12-20	TF	0	0	0	t	t	t	byron@si1.org	f
245	riot	riot	2008-09-04	TF	0	0	0	f	t	f	riot@si1.org	f
246	chuck	chuck	2008-11-01	F0	0	0	0	f	t	f	chuck@si1.org	f
247	shea	shea	2006-01-27	SF	0	0	0	f	t	f	shea@si1.org	f
248	with	with	2006-01-18	TF	0	0	0	f	t	f	with@si1.org	f
249	this	this	2007-04-20	TF	0	0	0	f	t	f	this@si1.org	f
250	slack	slack	2007-04-23	TF	0	0	0	f	t	f	slack@si1.org	f
251	milk	milk	2007-02-26	TF	0	0	0	t	t	t	milk@si1.org	f
252	lila	lila	2007-10-31	F0	0	0	0	f	f	t	lila@si1.org	f
253	scrim	scrim	2008-03-03	F0	0	0	0	f	t	f	scrim@si1.org	f
254	drool	drool	2006-08-10	F0	0	0	0	f	t	f	drool@si1.org	f
255	chef	chef	2005-11-24	TF	1	23	13	f	t	f	chef@si1.org	f
256	live	live	2010-04-27	F0	0	0	0	f	t	t	live@si1.org	f
257	critic	critic	2006-08-26	PF	0	0	0	f	t	f	critic@si1.org	f
258	muzzle	muzzle	2008-03-12	PF	0	0	0	f	t	f	muzzle@si1.org	f
259	fitful	fitful	2008-05-12	TF	0	0	0	f	t	f	fitful@si1.org	f
260	tide	tide	2007-05-23	F0	0	0	0	f	t	f	tide@si1.org	f
261	chub	chub	2008-09-18	F0	0	0	0	f	t	t	chub@si1.org	f
262	wile	wile	2009-08-16	PF	0	0	0	f	t	f	wile@si1.org	f
263	wimpy	wimpy	2006-04-01	SF	0	0	0	f	t	f	wimpy@si1.org	f
264	armani	armani	2006-08-09	SF	0	0	0	f	t	f	armani@si1.org	f
265	listen	listen	2007-09-12	PF	0	0	0	f	t	f	listen@si1.org	f
266	oily	oily	2010-02-22	PF	0	0	0	f	t	f	oily@si1.org	f
267	gnaw	gnaw	2008-07-07	SF	0	0	0	f	t	f	gnaw@si1.org	f
268	ciao	ciao	2009-05-28	PF	0	0	0	f	t	f	ciao@si1.org	f
269	mimi	mimi	2008-02-09	PF	0	0	0	f	t	f	mimi@si1.org	f
270	only	only	2010-09-06	F0	0	0	0	f	t	f	only@si1.org	f
271	dido	dido	2010-05-02	PF	0	0	0	f	t	f	dido@si1.org	f
272	racism	racism	2010-05-14	PF	0	0	0	f	t	f	racism@si1.org	f
273	mendel	mendel	2006-10-29	PF	0	0	0	f	t	f	mendel@si1.org	f
274	deluge	deluge	2009-02-21	F0	0	0	0	f	t	f	deluge@si1.org	f
275	heroin	heroin	2006-10-24	F0	0	0	0	f	f	t	heroin@si1.org	f
276	rock	rock	2006-09-03	PF	0	0	0	f	t	f	rock@si1.org	f
277	roar	roar	2006-08-10	F0	0	0	0	f	t	f	roar@si1.org	f
278	apache	apache	2010-01-13	F0	0	0	0	f	t	t	apache@si1.org	f
279	furze	furze	2006-10-13	SF	0	0	0	f	t	f	furze@si1.org	f
280	fulfil	fulfil	2008-02-26	PF	0	0	0	f	t	f	fulfil@si1.org	f
281	cm's	cm's	2007-08-09	TF	0	0	0	f	t	f	cm's@si1.org	f
282	room	room	2006-07-06	TF	0	0	0	f	t	f	room@si1.org	f
283	occult	occult	2008-07-31	SF	0	0	0	f	t	f	occult@si1.org	f
284	honors	honors	2010-06-01	TF	0	0	0	f	t	f	honors@si1.org	f
285	sinai	sinai	2010-01-03	SF	0	0	0	f	t	f	sinai@si1.org	f
286	zorn	zorn	2009-01-30	SF	0	0	0	f	t	f	zorn@si1.org	f
287	loch	loch	2007-07-10	TF	0	0	0	t	t	t	loch@si1.org	f
288	aspell	aspell	2007-08-21	TF	0	0	0	t	t	t	aspell@si1.org	f
289	comedy	comedy	2006-08-18	TF	0	0	0	f	t	f	comedy@si1.org	f
290	hock	hock	2009-07-07	PF	0	0	0	f	t	f	hock@si1.org	f
291	ibm	ibm	2005-11-19	F0	0	0	0	f	f	t	ibm@si1.org	f
292	root	root	2009-08-10	TF	0	0	0	f	t	f	root@si1.org	f
293	cheops	cheops	2010-09-06	F0	0	0	0	f	t	f	cheops@si1.org	f
294	email	email	2005-12-19	TF	0	0	0	f	t	f	email@si1.org	f
295	gogh	gogh	2008-07-25	F0	0	0	0	f	t	f	gogh@si1.org	f
296	inlay	inlay	2006-08-04	TF	0	0	0	t	t	t	inlay@si1.org	f
297	loot	loot	2006-10-10	F0	0	0	0	f	f	t	loot@si1.org	f
298	joni	joni	2007-09-29	F0	0	0	0	f	t	t	joni@si1.org	f
299	noggin	noggin	2007-10-05	F0	0	0	0	f	t	f	noggin@si1.org	f
300	dowry	dowry	2005-10-29	TF	0	0	0	t	t	t	dowry@si1.org	f
301	angst	angst	2008-01-17	TF	0	0	0	f	t	f	angst@si1.org	f
302	slag	slag	2008-09-28	F0	31	0	0	f	t	f	slag@si1.org	f
303	hour	hour	2010-07-31	PF	0	0	0	f	t	f	hour@si1.org	f
304	dove	dove	2009-01-25	SF	0	0	0	f	t	f	dove@si1.org	f
305	ali	ali	2008-05-18	TF	0	0	0	f	t	f	ali@si1.org	f
306	axe	axe	2006-05-01	F0	0	0	0	f	t	f	axe@si1.org	f
312	sleet	sleet	2010-09-03	F0	0	0	0	f	t	t	sleet@si1.org	f
313	club	club	2006-03-15	PF	0	0	0	f	t	f	club@si1.org	f
314	gibbs	gibbs	2005-11-07	TF	0	0	0	t	t	t	gibbs@si1.org	f
315	darren	darren	2006-06-08	F0	0	0	0	f	t	f	darren@si1.org	f
316	batted	batted	2010-08-14	TF	0	0	0	t	t	t	batted@si1.org	f
317	in's	in's	2006-08-12	F0	0	0	0	f	t	t	in's@si1.org	f
318	reduct	reduct	2006-11-13	F0	0	0	0	f	t	f	reduct@si1.org	f
319	andre	andre	2009-11-07	F0	0	0	0	f	f	t	andre@si1.org	f
320	curry	curry	2007-06-14	F0	0	0	0	f	f	t	curry@si1.org	f
321	jiffy	jiffy	2009-08-22	SF	0	0	0	f	t	f	jiffy@si1.org	f
322	amok	amok	2009-07-14	F0	0	0	0	f	f	t	amok@si1.org	f
323	crewel	crewel	2006-05-25	F0	0	0	0	f	t	f	crewel@si1.org	f
324	prep	prep	2008-09-12	PF	0	0	0	f	t	f	prep@si1.org	f
325	drafty	drafty	2005-12-10	PF	0	0	0	f	t	f	drafty@si1.org	f
326	putter	putter	2008-02-02	F0	34	0	0	f	t	t	putter@si1.org	f
327	brit	brit	2007-05-07	F0	0	0	0	f	t	f	brit@si1.org	f
328	prig	prig	2007-11-29	F0	0	0	0	f	f	t	prig@si1.org	f
329	prow	prow	2008-06-17	F0	0	0	0	f	t	f	prow@si1.org	f
330	venus	venus	2010-08-14	TF	0	0	0	f	t	f	venus@si1.org	f
331	irma	irma	2010-01-21	TF	0	0	0	t	t	t	irma@si1.org	f
332	shall	shall	2010-08-03	F0	0	0	0	f	f	t	shall@si1.org	f
333	felice	felice	2008-06-25	SF	0	0	0	f	t	f	felice@si1.org	f
334	hominy	hominy	2007-12-29	F0	0	0	0	f	f	t	hominy@si1.org	f
335	rapist	rapist	2006-10-25	F0	0	0	0	f	t	f	rapist@si1.org	f
336	joey's	joey's	2007-08-30	F0	0	0	0	f	t	f	joey's@si1.org	f
337	usg's	usg's	2007-11-30	TF	0	0	0	f	t	f	usg's@si1.org	f
338	negate	negate	2007-10-30	F0	0	0	0	f	f	t	negate@si1.org	f
339	spit	spit	2009-12-28	F0	0	0	0	f	t	t	spit@si1.org	f
340	domain	domain	2010-02-15	TF	0	0	0	t	t	t	domain@si1.org	f
341	mcneil	mcneil	2009-02-13	TF	0	0	0	f	t	f	mcneil@si1.org	f
342	spry	spry	2007-04-18	SF	0	0	0	f	t	f	spry@si1.org	f
343	spam	spam	2006-01-09	F0	0	0	0	f	f	t	spam@si1.org	f
344	slick	slick	2007-10-02	F0	0	0	0	f	t	t	slick@si1.org	f
345	tieing	tieing	2007-11-28	F0	0	0	0	f	t	f	tieing@si1.org	f
346	kosher	kosher	2009-02-09	TF	0	0	0	f	t	f	kosher@si1.org	f
347	leary	leary	2008-06-21	TF	0	0	0	f	t	f	leary@si1.org	f
348	blithe	blithe	2009-03-26	TF	0	0	0	f	t	f	blithe@si1.org	f
349	gewgaw	gewgaw	2009-10-29	F0	0	0	0	f	t	f	gewgaw@si1.org	f
350	yankee	yankee	2006-04-15	F0	0	0	0	f	t	f	yankee@si1.org	f
351	via	via	2007-12-26	TF	0	0	0	t	t	t	via@si1.org	f
352	nib	nib	2008-11-08	SF	0	0	0	f	t	f	nib@si1.org	f
353	huxley	huxley	2006-03-09	F0	0	0	0	f	t	t	huxley@si1.org	f
354	vms	vms	2006-08-29	F0	0	0	0	f	t	f	vms@si1.org	f
355	agile	agile	2009-03-06	F0	0	0	0	f	t	f	agile@si1.org	f
356	there	there	2007-09-10	TF	0	0	0	f	t	f	there@si1.org	f
357	sworn	sworn	2010-09-15	SF	0	0	0	f	t	f	sworn@si1.org	f
358	cruddy	cruddy	2007-04-28	F0	0	0	0	f	t	f	cruddy@si1.org	f
359	annex	annex	2006-07-30	SF	0	0	0	f	t	f	annex@si1.org	f
360	roland	roland	2007-01-11	TF	0	0	0	f	t	f	roland@si1.org	f
361	damion	damion	2009-03-16	PF	0	0	0	f	t	f	damion@si1.org	f
1	leone	leone	2009-02-10	PF	0	0	0	f	t	f	leone@si1.org	f
2	fiori	fiori	2007-03-14	SF	0	0	0	f	t	f	fiori@si1.org	f
3	shaman	shaman	2009-05-28	TF	0	0	0	f	t	f	shaman@si1.org	f
4	fable	fable	2009-01-07	F0	0	0	0	f	t	f	fable@si1.org	f
5	zosma	zosma	2010-03-09	F0	0	0	0	f	f	t	zosma@si1.org	f
6	engage	engage	2006-09-11	F0	0	0	0	f	t	t	engage@si1.org	f
7	liquor	liquor	2007-11-27	PF	0	0	0	f	t	f	liquor@si1.org	f
8	reefer	reefer	2010-02-23	F0	0	0	0	f	t	t	reefer@si1.org	f
9	twelve	twelve	2010-05-08	F0	0	0	0	f	f	t	twelve@si1.org	f
10	mitzi	mitzi	2008-03-26	F0	0	0	0	f	t	f	mitzi@si1.org	f
11	ham	ham	2008-02-23	TF	0	0	0	t	t	t	ham@si1.org	f
12	slung	slung	2007-08-02	SF	0	0	0	f	t	f	slung@si1.org	f
13	naples	naples	2006-02-07	PF	0	0	0	f	t	f	naples@si1.org	f
14	gaynor	gaynor	2009-04-08	F0	0	0	0	f	t	f	gaynor@si1.org	f
15	crotch	crotch	2008-01-16	TF	0	0	0	f	t	f	crotch@si1.org	f
16	hog	hog	2008-08-19	PF	0	0	0	f	t	f	hog@si1.org	f
17	anodic	anodic	2007-09-04	F0	0	0	0	f	f	t	anodic@si1.org	f
18	reform	reform	2008-03-21	F0	0	0	0	f	t	f	reform@si1.org	f
19	ghats	ghats	2008-02-08	F0	0	0	0	f	t	t	ghats@si1.org	f
402	clique	clique	2009-01-19	PF	0	0	0	f	t	f	clique@si1.org	f
403	notice	notice	2009-03-02	F0	0	0	0	f	t	f	notice@si1.org	f
404	glare	glare	2008-01-21	F0	0	0	0	f	t	f	glare@si1.org	f
405	pileup	pileup	2007-11-30	TF	0	0	0	f	t	f	pileup@si1.org	f
406	cab	cab	2010-04-20	SF	0	0	0	f	t	f	cab@si1.org	f
407	bight	bight	2009-08-21	TF	0	0	0	f	t	f	bight@si1.org	f
408	bigot	bigot	2008-11-01	F0	0	0	0	f	t	f	bigot@si1.org	f
409	saiph	saiph	2009-04-29	F0	0	0	0	f	t	f	saiph@si1.org	f
410	fasten	fasten	2007-01-30	F0	0	0	0	f	t	t	fasten@si1.org	f
411	assert	assert	2010-06-09	TF	0	0	0	t	t	t	assert@si1.org	f
412	rizal	rizal	2006-08-20	F0	0	0	0	f	t	t	rizal@si1.org	f
413	bemuse	bemuse	2008-03-18	F0	0	0	0	f	t	f	bemuse@si1.org	f
414	dijon	dijon	2005-11-26	PF	0	0	0	f	t	f	dijon@si1.org	f
415	atm's	atm's	2008-05-30	F0	0	0	0	f	f	t	atm's@si1.org	f
416	rhine	rhine	2009-07-01	SF	0	0	0	f	t	f	rhine@si1.org	f
417	jugate	jugate	2009-04-29	SF	0	0	0	f	t	f	jugate@si1.org	f
418	casein	casein	2007-12-26	F0	0	0	0	f	t	t	casein@si1.org	f
419	perch	perch	2006-08-05	TF	0	0	0	f	t	f	perch@si1.org	f
420	ruben	ruben	2007-10-26	SF	0	0	0	f	t	f	ruben@si1.org	f
421	ranch	ranch	2007-02-02	F0	0	0	0	f	t	t	ranch@si1.org	f
422	detect	detect	2007-12-01	TF	0	0	0	t	t	t	detect@si1.org	f
423	kaunas	kaunas	2008-12-23	TF	0	0	0	f	t	f	kaunas@si1.org	f
424	unholy	unholy	2007-01-24	TF	0	0	0	f	t	f	unholy@si1.org	f
425	lyme	lyme	2005-11-22	TF	0	0	0	t	t	t	lyme@si1.org	f
426	status	status	2010-10-06	F0	46	0	0	f	t	f	status@si1.org	f
427	rangy	rangy	2006-10-05	SF	0	0	0	f	t	f	rangy@si1.org	f
428	eerily	eerily	2008-06-13	TF	0	0	0	t	t	t	eerily@si1.org	f
429	ravage	ravage	2006-12-10	F0	0	0	0	f	t	t	ravage@si1.org	f
430	fuddle	fuddle	2007-06-18	F0	44	0	0	f	t	t	fuddle@si1.org	f
431	shanna	shanna	2007-05-18	TF	0	0	0	t	t	t	shanna@si1.org	f
432	gable	gable	2008-03-26	F0	47	0	0	f	t	t	gable@si1.org	f
433	jugged	jugged	2009-10-13	TF	5	26	14	t	t	t	jugged@si1.org	f
434	fracas	fracas	2006-11-10	F0	0	0	0	f	t	f	fracas@si1.org	f
435	yukon	yukon	2007-10-07	TF	0	0	0	f	t	f	yukon@si1.org	f
20	taped	taped	2006-05-18	F0	0	0	0	f	t	t	taped@si1.org	f
21	wicker	wicker	2006-12-12	SF	0	0	0	f	t	f	wicker@si1.org	f
22	incest	incest	2008-11-25	F0	0	0	0	f	t	f	incest@si1.org	f
23	overt	overt	2007-09-20	F0	0	0	0	f	t	t	overt@si1.org	f
24	fired	fired	2007-05-30	SF	0	0	0	f	t	f	fired@si1.org	f
25	guelph	guelph	2009-09-16	SF	0	0	0	f	t	f	guelph@si1.org	f
26	abjure	abjure	2007-05-15	F0	0	0	0	f	t	f	abjure@si1.org	f
27	gloria	gloria	2008-12-10	F0	0	0	0	f	t	f	gloria@si1.org	f
28	tammuz	tammuz	2007-02-10	F0	0	0	0	f	t	f	tammuz@si1.org	f
29	loving	loving	2006-05-30	SF	0	0	0	f	t	f	loving@si1.org	f
30	madder	madder	2007-10-31	PF	0	0	0	f	t	f	madder@si1.org	f
31	kerry	kerry	2006-09-03	PF	0	0	0	f	t	f	kerry@si1.org	f
32	logic	logic	2008-11-20	F0	0	0	0	f	f	t	logic@si1.org	f
33	cilia	cilia	2007-09-08	PF	0	0	0	f	t	f	cilia@si1.org	f
34	fence	fence	2007-04-01	TF	0	0	0	t	t	t	fence@si1.org	f
35	viably	viably	2007-04-16	F0	0	0	0	f	t	f	viably@si1.org	f
36	bleed	bleed	2007-11-27	SF	0	0	0	f	t	f	bleed@si1.org	f
37	gooier	gooier	2009-04-10	PF	0	0	0	f	t	f	gooier@si1.org	f
38	marble	marble	2006-01-23	TF	0	0	0	f	t	f	marble@si1.org	f
39	mixer	mixer	2010-03-25	F0	0	0	0	f	f	t	mixer@si1.org	f
40	lucia	lucia	2006-02-06	PF	0	0	0	f	t	f	lucia@si1.org	f
41	ingres	ingres	2008-02-04	TF	0	0	0	f	t	f	ingres@si1.org	f
42	budget	budget	2006-05-16	TF	8	19	18	f	t	f	budget@si1.org	f
43	uriel	uriel	2006-09-13	SF	0	0	0	f	t	f	uriel@si1.org	f
44	harbin	harbin	2010-04-02	SF	0	0	0	f	t	f	harbin@si1.org	f
45	orate	orate	2006-06-18	TF	0	0	0	t	t	t	orate@si1.org	f
46	format	format	2007-11-05	F0	0	0	0	f	t	f	format@si1.org	f
47	alert	alert	2010-02-06	TF	0	0	0	t	t	t	alert@si1.org	f
49	metal	metal	2008-06-07	SF	0	0	0	f	t	f	metal@si1.org	f
50	mow	mow	2009-12-10	SF	0	0	0	f	t	f	mow@si1.org	f
51	elinor	elinor	2009-10-07	TF	0	0	0	f	t	f	elinor@si1.org	f
52	sextet	sextet	2010-03-04	F0	41	0	0	f	t	t	sextet@si1.org	f
53	mcleod	mcleod	2008-08-16	F0	0	0	0	f	t	f	mcleod@si1.org	f
54	charm	charm	2006-09-07	F0	0	0	0	f	t	t	charm@si1.org	f
55	hoagy	hoagy	2006-03-12	SF	0	0	0	f	t	f	hoagy@si1.org	f
56	pegged	pegged	2010-02-21	F0	0	0	0	f	t	f	pegged@si1.org	f
57	purify	purify	2008-09-13	SF	0	0	0	f	t	f	purify@si1.org	f
58	octave	octave	2007-04-01	TF	0	0	0	f	t	f	octave@si1.org	f
59	polar	polar	2008-03-27	PF	0	0	0	f	t	f	polar@si1.org	f
60	enough	enough	2009-05-29	F0	0	0	0	f	f	t	enough@si1.org	f
61	mil	mil	2008-09-19	TF	0	0	0	t	t	t	mil@si1.org	f
62	gerber	gerber	2010-07-12	TF	0	0	0	f	t	f	gerber@si1.org	f
63	encamp	encamp	2006-10-29	PF	0	0	0	f	t	f	encamp@si1.org	f
64	wigwam	wigwam	2007-10-29	TF	0	0	0	f	t	f	wigwam@si1.org	f
65	mst	mst	2005-11-07	PF	0	0	0	f	t	f	mst@si1.org	f
66	saute	saute	2006-07-22	F0	0	0	0	f	t	f	saute@si1.org	f
67	cupped	cupped	2007-05-30	F0	0	0	0	f	f	t	cupped@si1.org	f
68	azana	azana	2006-07-31	F0	0	0	0	f	t	f	azana@si1.org	f
69	poole	poole	2007-10-20	TF	0	0	0	t	t	t	poole@si1.org	f
70	halter	halter	2007-09-18	TF	0	0	0	f	t	f	halter@si1.org	f
71	greets	greets	2010-03-30	PF	0	0	0	f	t	f	greets@si1.org	f
72	mario	mario	2008-08-12	F0	0	0	0	f	t	f	mario@si1.org	f
307	catnap	catnap	2006-05-16	F0	0	0	0	f	t	f	catnap@si1.org	f
308	finley	finley	2005-11-21	F0	0	0	0	f	t	f	finley@si1.org	f
309	sabik	sabik	2010-09-25	TF	0	0	0	t	t	t	sabik@si1.org	f
310	bruise	bruise	2007-03-10	PF	0	0	0	f	t	f	bruise@si1.org	f
311	flap	flap	2006-08-17	TF	0	0	0	f	t	f	flap@si1.org	f
362	whiny	whiny	2009-02-16	SF	0	0	0	f	t	f	whiny@si1.org	f
363	annul	annul	2009-08-14	TF	0	0	0	f	t	f	annul@si1.org	f
364	knuth	knuth	2006-08-23	TF	3	39	18	f	t	f	knuth@si1.org	f
365	whist	whist	2010-03-28	PF	0	0	0	f	t	f	whist@si1.org	f
366	taxing	taxing	2009-08-25	F0	0	0	0	f	t	f	taxing@si1.org	f
367	alexis	alexis	2006-01-10	TF	0	0	0	f	t	f	alexis@si1.org	f
368	intel	intel	2007-09-04	F0	0	0	0	f	f	t	intel@si1.org	f
369	waite	waite	2007-05-23	F0	36	0	0	f	t	t	waite@si1.org	f
370	sundry	sundry	2007-01-26	TF	0	0	0	t	t	t	sundry@si1.org	f
371	forbad	forbad	2007-02-06	TF	0	0	0	f	t	f	forbad@si1.org	f
372	flavor	flavor	2006-07-04	F0	0	0	0	f	t	f	flavor@si1.org	f
373	intra	intra	2007-12-24	F0	0	0	0	f	f	t	intra@si1.org	f
374	vesta	vesta	2006-05-23	PF	0	0	0	f	t	f	vesta@si1.org	f
375	shaded	shaded	2009-02-17	PF	0	0	0	f	t	f	shaded@si1.org	f
376	stew	stew	2007-01-05	TF	0	0	0	t	t	t	stew@si1.org	f
377	enamel	enamel	2007-08-25	TF	0	0	0	f	t	f	enamel@si1.org	f
378	stub	stub	2006-04-16	TF	0	0	0	f	t	f	stub@si1.org	f
379	feeler	feeler	2008-04-17	F0	0	0	0	f	t	f	feeler@si1.org	f
380	oilmen	oilmen	2008-11-24	TF	0	0	0	t	t	t	oilmen@si1.org	f
381	tuba	tuba	2008-11-19	SF	0	0	0	f	t	f	tuba@si1.org	f
382	crump	crump	2009-11-07	TF	0	0	0	f	t	f	crump@si1.org	f
383	sitar	sitar	2007-10-28	TF	4	19	9	t	t	t	sitar@si1.org	f
384	olive	olive	2008-01-14	SF	0	0	0	f	t	f	olive@si1.org	f
385	pugh	pugh	2006-12-21	PF	0	0	0	f	t	f	pugh@si1.org	f
386	luis	luis	2009-07-20	F0	0	0	0	f	t	f	luis@si1.org	f
387	penes	penes	2008-03-20	TF	0	0	0	f	t	f	penes@si1.org	f
388	maisie	maisie	2006-09-01	PF	0	0	0	f	t	f	maisie@si1.org	f
389	hume	hume	2006-09-11	TF	0	0	0	t	t	t	hume@si1.org	f
390	shaken	shaken	2010-05-30	F0	0	0	0	f	f	t	shaken@si1.org	f
391	edited	edited	2006-12-13	TF	0	0	0	f	t	f	edited@si1.org	f
392	emote	emote	2005-11-12	F0	0	0	0	f	f	t	emote@si1.org	f
393	russ	russ	2006-11-26	SF	0	0	0	f	t	f	russ@si1.org	f
394	envied	envied	2009-06-23	F0	0	0	0	f	f	t	envied@si1.org	f
395	limbo	limbo	2005-10-30	PF	0	0	0	f	t	f	limbo@si1.org	f
396	vauban	vauban	2007-02-10	PF	0	0	0	f	t	f	vauban@si1.org	f
397	musk	musk	2010-09-23	SF	0	0	0	f	t	f	musk@si1.org	f
398	charge	charge	2010-07-05	F0	0	0	0	f	t	t	charge@si1.org	f
399	cusp	cusp	2006-07-09	TF	0	0	0	f	t	f	cusp@si1.org	f
400	bury	bury	2010-01-05	PF	0	0	0	f	t	f	bury@si1.org	f
401	fusion	fusion	2010-08-08	SF	0	0	0	f	t	f	fusion@si1.org	f
174	hair	hair	2006-03-27	F0	159	0	0	f	t	f	hair@si1.org	f
\.


--
-- Data for Name: libro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY libro (isbn, titulo, idioma, fecha, uploader) FROM stdin;
0000000011617	Punch, or the London Charivari, Volume 156, April 2, 1919	English	2004-03-01	\N
0000000002710	Louise de la Valliere	English	2001-07-01	\N
0000000010743	Moonfleet	English	2004-01-01	\N
0000000000711	Allan Quatermain	English	2004-11-18	\N
0000000002713	Maiwa's Revenge	English	2006-03-31	\N
0000000001690	Marie--An Episode in The Life of the late Allan Quatermain	English	1999-03-01	\N
0000000001711	Child of Storm	English	1999-04-01	\N
0000000002841	The Ivory Child	English	2006-03-31	\N
0000000000215	The Call of the Wild	English	2008-07-02	\N
0000000000589	Catriona	English	1996-07-01	\N
0000000003657	Wild Beasts and Their Ways, Reminiscences of Europe, Asia, Africa and America — Volume 1	English	2003-01-01	\N
0000000006693	People of Africa	English	2004-10-01	\N
0000000003233	In the Heart of Africa	English	2002-05-01	\N
0000000007937	Journal of an African Cruiser	English	2005-04-01	\N
0000000002225	Captains Courageous	English	2000-06-01	\N
0000000005760	Two Trips to Gorilla Land and the Cataracts of the Congo Volume 1	English	2004-05-01	\N
0000000012667	Lander's Travels--The Travels of Richard Lander into the Interior of Africa	English	2004-06-01	\N
0000000002681	Ten Years Later	English	2001-06-01	\N
0000000006886	First Footsteps in East Africa	English	2004-11-01	\N
0000000002759	The Man in the Iron Mask	English	2001-08-01	\N
0000000005157	How I Found Livingstone; travels, adventures, and discoveres in Central Africa, including an account of four months' residence with Dr. Livingstone, by Henry M. Stanley	English	2004-02-01	\N
0000000008564	Life and Travels of Mungo Park in Central Africa	English	2005-07-01	\N
0000000005305	Travels in the Interior of Africa — Volume 02	English	2004-03-01	\N
0000000017164	Narrative of a Mission to Central Africa Performed in the Years 1850-51, Volume 1--Under the Orders and at the Expense of Her Majesty's Government	English	2005-11-27	\N
0000000018544	Narrative of a Mission to Central Africa Performed in the Years 1850-51, Volume 2--Under the Orders and at the Expense of Her Majesty's Government	English	2006-06-09	\N
0000000014451	African Camp Fires	English	2004-12-24	\N
0000000003810	The Man-Eaters of Tsavo and Other East African Adventures	English	2003-03-01	\N
0000000015240	A Journal of a Tour in the Congo Free State	English	2005-03-04	\N
0000000016280	Beiträge zur Entdeckung und Erforschung Africa's.--Berichte aus den Jahren 1870-1875	German	2005-07-13	\N
0000000036791	The Mormon Puzzle, and How to Solve It	English	2011-07-20	\N
0000000015399	The Interesting Narrative of the Life of Olaudah Equiano, Or Gustavus Vassa, The African--Written By Himself	English	2005-03-17	\N
0000000015042	A Narrative of the Most Remarkable Particulars in the Life of James Albert Ukawsaw Gronniosaw, an African Prince, as Related by Himself	English	2005-02-14	\N
0000000021391	Great African Travellers--From Mungo Park to Livingstone and Stanley	English	2007-05-08	\N
0000000014466	South African Memories--Social, Warlike & Sporting from Diaries Written at the Time	English	2004-12-25	\N
0000000023638	Reminiscences of a South African Pioneer	English	2007-11-26	\N
0000000012428	The History of the Rise, Progress and Accomplishment of the Abolition of the African Slave Trade by the British Parliament (1808), Volume I	English	2004-05-01	\N
0000000017599	Von Tripolis nach Alexandrien - 1. Band	German	2006-01-24	\N
0000000017700	The Suppression of the African Slave Trade to the United States of America--1638-1870	English	2006-02-07	\N
0000000021060	The Congo Rovers--A Story of the Slave Squadron	English	2007-04-13	\N
0000000017615	In Search of the Okapi--A Story of Adventure in Central Africa	English	2006-01-28	\N
0000000002761	Benita, an African romance	English	2006-03-28	\N
0000000002857	A Yellow God: an Idol of Africa	English	2006-04-04	\N
0000000021472	Ned Garth--Made Prisoner in Africa. A Tale of the Slave Trade	English	2007-05-15	\N
0000000021490	The Two Supercargoes--Adventures in Savage Africa	English	2007-05-16	\N
0000000021448	The African Trader--The Adventures of Harry Bayford	English	2007-05-15	\N
0000000001458	Dream Life and Real Life; a little African story	English	1998-09-01	\N
0000000001441	The Story of an African Farm, a novel	English	1998-09-01	\N
0000000021899	A Rip Van Winkle Of The Kalahari--And Other Tales of South-West Africa	English	2007-06-22	\N
0000000021254	In Africa--Hunting Adventures in the Big Game Country	English	2007-04-29	\N
0000000011772	Naufrage de la frigate la Méduse. English	English	2004-04-01	\N
0000000016672	The Last Journals of David Livingstone, in Central Africa, from 1865 to His Death, Volume I (of 2), 1866-1868	English	2005-09-07	\N
0000000022575	Le Tour du Monde; Afrique Orientale--Journal des voyages et des voyageurs; 2. sem. 1860	French	2007-09-11	\N
0000000022568	Blue Aloes--Stories of South Africa	English	2007-09-10	\N
0000000001980	Stories by English Authors: Africa (Selected by Scribners)	English	2006-03-26	\N
0000000010633	The History of the Rise, Progress and Accomplishment of the Abolition of the African Slave-Trade, by the British Parliament (1839)	English	2004-01-01	\N
0000000002046	Clotel; or, the President's Daughter	English	2000-01-01	\N
0000000011228	The Marrow of Tradition	English	2004-02-01	\N
0000000011057	The Wife of his Youth and Other Stories of the Color Line, and Selected Essays	English	2004-02-01	\N
0000000000408	The Souls of Black Folk	English	1996-01-01	\N
0000000015359	The Negro	English	2005-03-14	\N
0000000011030	Incidents in the Life of a Slave Girl--Written by Herself	English	2004-02-01	\N
0000000014976	Mob Rule in New Orleans--Robert Charles and His Fight to Death, the Story of His Life, Burning--Human Beings Alive, Other Lynching Statistics	English	2005-02-08	\N
0000000002095	Clotelle: a Tale of the Southern States	English	2000-03-01	\N
0000000019746	The Colonel's Dream	English	2006-11-09	\N
0000000015041	The Negro Problem	English	2005-02-14	\N
0000000014977	The Red Record--Tabulated Statistics and Alleged Causes of Lynching in the United States	English	2005-02-08	\N
0000000014975	Southern Horrors--Lynch Law in All Its Phases	English	2005-02-08	\N
0000000020677	God and the State	English	2007-02-03	\N
0000000026600	Mother Earth, Vol. 1 No. 1, March 1906	English	2008-09-12	\N
0000000027118	Mother Earth, Vol. 1 No. 2, April 1906--Monthly Magazine Devoted to Social Science and Literature	English	2008-11-01	\N
0000000027262	Mother Earth, Vol. 1 No. 3, May 1906--Monthly Magazine Devoted to Social Science and Literature	English	2008-11-14	\N
0000000027341	Mother Earth, Vol. 1 No. 4, June 1906--Monthly Magazine Devoted to Social Science and Literature	English	2008-11-27	\N
0000000000444	System of Economical Contradictions; or, the Philosophy of Misery	English	1996-02-01	\N
0000000004602	The Kingdom of God Is Within You	English	2003-11-01	\N
0000000008700	The Evolution of Man	English	2005-08-01	\N
0000000002634	Evolution of Theology: an Anthropological Study	English	2001-05-01	\N
0000000000689	The Kreutzer Sonata and Other Stories	English	2006-03-18	\N
0000000036676	L'Illustration, No. 3271, 4 Novembre 1905	French	2011-07-09	\N
0000000018869	On Limitations To The Use Of Some Anthropologic Data	English	2006-07-19	\N
0000000015293	Influences of Geographic Environment--On the Basis of Ratzel's System of Anthropo-Geography	English	2005-03-08	\N
0000000014028	Über das Aussterben der Naturvölker	German	2004-11-12	\N
0000000018273	The Wild Tribes of Davao District, Mindanao--The R. F. Cummings Philippine Expedition	English	2006-04-28	\N
0000000014648	Bij de Parsi's van Bombay en Gudsjerat--De Aarde en haar Volken, 1909-1910	Dutch	2005-01-10	\N
0000000013831	Evolution Of The Japanese, Social And Psychic	English	2004-10-22	\N
0000000020116	The Belief in Immortality and the Worship of the Dead, Volume I (of 3)--The Belief Among the Aborigines of Australia, the Torres Straits Islands, New Guinea and Melanesia	English	2006-12-15	\N
0000000017186	Noções elementares de archeologia	Portuguese	2005-11-29	\N
0000000013642	The Journal of Negro History, Volume 1, January 1916	English	2004-10-05	\N
0000000035560	Quo Vadis (Πού πηγαίνεις)--Μυθιστόρημα της Νερωνικής Εποχής	Greek	2011-03-12	\N
0000000020411	The Witch-cult in Western Europe--A Study in Anthropology	English	2007-01-22	\N
0000000020665	De Nederlandsche Nationale Kleederdrachten	Dutch	2007-02-25	\N
0000000018236	In de Amsterdamsche Jodenbuurt--De Aarde en haar Volken, 1907	Dutch	2006-04-23	\N
0000000007978	Legends, Traditions, and Laws of the Iroquois, or Six Nations, and History of the Tuscarora Indians	English	2005-04-01	\N
0000000008112	Houses and House-Life of the American Aborigines	English	2005-05-01	\N
0000000016572	Indians of the Yosemite Valley and Vicinity--Their History, Customs and Traditions	English	2005-08-21	\N
0000000017404	Kinship Organisations and Group Marriage in Australia	English	2005-12-28	\N
0000000017280	Anthropology	English	2005-12-11	\N
0000000017262	Catalogue Of Linguistic Manuscripts In The Library Of The Bureau Of Ethnology. (1881 N 01 / 1879-1880 (Pages 553-578))	English	2005-12-09	\N
0000000001323	History of the Conquest of Peru; with a preliminary view of the civilization of the Incas	English	1998-05-01	\N
0000000022601	Hiawatha and the Iroquois Confederation--A Study in Anthropology. A Paper Read at the Cincinnati Meeting of the American Association for the Advancement of Science, in August, 1881, under the Title of "A Lawgiver of the Stone Age."	English	2007-09-14	\N
0000000017910	The Mafulu--Mountain People of British New Guinea	English	2006-03-04	\N
0000000014400	Manual of Egyptian Archaeology and Guide to the Study of Antiquities in Egypt	English	2004-12-20	\N
0000000019115	Roman Britain in 1914	English	2006-08-25	\N
0000000015126	Lecture on the Aborigines of Newfoundland--Delivered Before the Mechanics' Institute, at St. John's,--Newfoundland, on Monday, 17th January, 1859	English	2005-02-21	\N
0000000017487	Casa Grande Ruin--Thirteenth Annual Report of the Bureau of Ethnology to the--Secretary of the Smithsonian Institution, 1891-92,--Government Printing Office, Washington, 1896, pages 289-318	English	2006-01-10	\N
0000000024505	The Forest of Dean--An Historical and Descriptive Account	English	2008-02-03	\N
0000000017606	Throwing-sticks in the National Museum--Third Annual Report of the Bureau of Ethnology to the--Secretary of the Smithsonian Institution, 1883-'84,--Government Printing Office, Washington, 1890, pages 279-289	English	2006-01-25	\N
0000000019856	A Study of Pueblo Architecture: Tusayan and Cibola--Eighth Annual Report of the Bureau of Ethnology to the--Secretary of the Smithsonian Institution, 1886-1887,--Government Printing Office, Washington, 1891, pages 3-228	English	2006-11-17	\N
0000000035188	The Fire Bird	English	2011-02-06	\N
0000000019606	Illustrated Catalogue of the Collections Obtained from the Pueblos of Zuñi, New Mexico, and Wolpi, Arizona, in 1881--Third Annual Report of the Bureau of Ethnology to the--Secretary of the Smithsonian Institution, 1881-82,--Government Printing Office, Washington, 1884, pages 511-594	English	2006-10-23	\N
0000000013575	How to Observe in Archaeology	English	2004-10-01	\N
0000000024654	Chaldea--From the Earliest Times to the Rise of Assyria	English	2008-02-20	\N
0000000017774	The Poetry of Architecture--Or, the Architecture of the Nations of Europe Considered in its Association with Natural Scenery and National Character	English	2006-02-16	\N
0000000012625	Architecture and Democracy	English	2004-06-01	\N
0000000016531	Old St. Paul's Cathedral	English	2005-08-15	\N
0000000010479	Our Churches and Chapels--Their Parsons, Priests, & Congregations--Being a Critical and Historical Account of Every Place of Worship in Preston	English	2003-12-01	\N
0000000022990	Historical Sketch of the Cathedral of Strasburg	English	2007-10-12	\N
0000000022832	The Cathedral Church of Canterbury [2nd ed.]--A Description of Its Fabric and a Brief History of the Archiepiscopal See	English	2007-10-02	\N
0000000000307	Three Elephant Power and Other Stories	English	2008-06-29	\N
0000000019881	Bell's Cathedrals: The Cathedral Church of Carlisle--A Description of Its Fabric and A Brief History of the Episcopal See	English	2006-11-20	\N
0000000020191	Bell's Cathedrals: The Cathedral Church of Durham--A Description of Its Fabric and A Brief History of the Espiscopal See	English	2006-12-26	\N
0000000019487	Bell’s Cathedrals: The Cathedral Church of Hereford, A Description--Of Its Fabric And A Brief History Of The Episcopal See	English	2006-10-07	\N
0000000036780	Lettres de mon moulin	French	2011-07-18	\N
0000000021511	Bell's Cathedrals: The Priory Church of St. Bartholomew-the-Great, Smithfield--A Short History of the Foundation and a Description of the--Fabric and also of the Church of St. Bartholomew-the-Less	English	2007-05-17	\N
0000000022260	Bell's Cathedrals: The Abbey Church of Tewkesbury--with some Account of the Priory Church of Deerhurst Gloucestershire	English	2007-08-07	\N
0000000036844	In New England Fields and Woods	English	2011-07-25	\N
0000000020967	A Guide to Peterborough Cathedral--Comprising a brief history of the monastery from its foundation to the present time, with a descriptive account of its architectural peculiarities and recent improvements; compiled from the works of Gunton, Britton, and original & authentic documents	English	2007-04-03	\N
0000000019998	Rural Architecture--Being a Complete Description of Farm Houses, Cottages, and Out Buildings	English	2006-12-03	\N
0000000014987	The Brochure Series of Architectural Illustration, Volume 01, No. 10, October 1895.--French Farmhouses.	English	2005-02-09	\N
0000000015020	The Brochure Series of Architectural Illustration, Volume 01, No. 11, November, 1895--The Country Houses of Normandy	English	2005-02-12	\N
0000000016105	Colección de viages y expediciónes à los campos de Buenos Aires y a las costas de Patagonia	Spanish	2005-06-22	\N
0000000012648	The Beautiful Necessity--Seven Essays on Theosophy and Architecture	English	2004-06-01	\N
0000000023593	Lectures on Architecture and Painting--Delivered at Edinburgh in November 1853	English	2007-11-22	\N
0000000019715	Bell's Cathedrals: The Cathedral Church of Norwich--A Description of Its Fabric and A Brief History of the Episcopal See	English	2006-11-05	\N
0000000018783	Diario del viaje al rio Bermejo	Spanish	2006-07-08	\N
0000000011302	Diario de la navegacion empredida en 1781	Spanish	2004-02-01	\N
0000000018289	Diario de un viage a la costa de la mar Magallanica	Spanish	2006-04-30	\N
0000000019643	Actas capitulares desde el 21 hasta el 25 de mayo de 1810 en Buenos Aires	Spanish	2006-10-27	\N
0000000018157	Fundación de la ciudad de Buenos-Aires	Spanish	2006-04-12	\N
0000000018798	Memoria dirigida al Sr. Marquez de Loreto, Virey y Capitan General de las Provincias del Rio de La Plata	Spanish	2006-07-09	\N
0000000036865	Responsibilities--and other poems	English	2011-07-27	\N
0000000037036	The Key to Success	English	2011-08-11	\N
0000000037171	Lost Sir Massingberd, v. 2/2--A Romance of Real Life	English	2011-08-23	\N
0000000020401	Viage al Rio de La Plata y Paraguay	Spanish	2007-01-20	\N
0000000025317	La Argentina--La conquista del Rio de La Plata. Poema histórico	Spanish	2008-05-03	\N
0000000020852	Descripcion del rio Paraguay, desde la boca del Xauru hasta la confluencia del Parana	Spanish	2007-03-20	\N
0000000018723	Proyecto de traslacion de las fronteras de Buenos Aires al Rio Negro y Colorado	Spanish	2006-07-01	\N
0000000015066	La Vuelta de Martín Fierro	Spanish	2005-02-15	\N
0000000007446	The Naturalist in La Plata	English	2005-02-01	\N
0000000004028	Autobiography of Benvenuto Cellini	English	2003-05-01	\N
0000000018937	My First Picture Book--With Thirty-six Pages of Pictures Printed in Colours by Kronheim	English	2006-07-29	\N
0000000037178	Cecil Castlemaine's Gage, Lady Marabout's Troubles, and Other Stories	English	2011-08-23	\N
0000000037190	The Main Chance	English	2011-08-24	\N
0000000019570	Van Dyck--A Collection Of Fifteen Pictures And A Portrait Of The--Painter With Introduction And Interpretation	English	2006-10-18	\N
0000000022500	The Works of William Hogarth: In a Series of Engravings--With Descriptions, and a Comment on Their Moral Tendency	English	2007-09-04	\N
0000000020607	Rembrandt	English	2007-02-16	\N
0000000022564	Great Artists, Vol 1.--Raphael, Rubens, Murillo, and Durer	English	2007-09-10	\N
0000000017289	The Dance (by An Antiquary)--Historic Illustrations of Dancing from 3300 B.C. to 1911 A.D.	English	2005-12-12	\N
0000000017244	French Art--Classic and Contemporary Painting and Sculpture	English	2005-12-06	\N
0000000014056	The French Impressionists (1860-1900)	English	2004-11-15	\N
0000000017730	A Study Of The Textile Art In Its Relation To The Development Of Form And Ornament--Sixth Annual Report of the Bureau of Ethnology to the--Secretary of the Smithsonian Institution, 1884-'85,--Government Printing Office, Washington, 1888, (pages--189-252)	English	2006-02-09	\N
0000000005712	Sculpture of the Exposition Palaces and Courts	English	2004-05-01	\N
0000000013029	The Art of the Moving Picture	English	2004-07-26	\N
0000000016180	Roman Mosaics--Or, Studies in Rome and Its Neighbourhood	English	2005-07-02	\N
0000000022574	The Best Portraits in Engraving	English	2007-09-11	\N
0000000006841	Mosaics of Grecian History	English	2004-11-01	\N
0000000018733	Die Italienische Plastik	German	2006-07-01	\N
0000000020915	Field's Chromatography--or Treatise on Colours and Pigments as Used by Artists	English	2007-03-27	\N
0000000037274	The Assembly of God--Miscellaneous Writings of C. H. Mackintosh, volume III	English	2011-08-30	\N
0000000020195	Wood-Block Printing--A Description of the Craft of Woodcutting and Colour Printing Based on the Japanese Practice	English	2006-12-26	\N
0000000000167	American Hand Book of the Daguerreotype	English	1994-09-01	\N
0000000014264	The Practice and Science of Drawing	English	2004-12-06	\N
0000000013755	How to See the British Museum in Four Visits	English	2004-10-15	\N
0000000006932	Pictures Every Child Should Know--A Selection of the World's Art Masterpieces for Young People	English	2004-11-01	\N
0000000004060	The Renaissance: studies in art and poetry	English	2003-05-01	\N
0000000019980	A Joy For Ever--(And Its Price in the Market)	English	2006-11-30	\N
0000000019164	Lectures on Art--Delivered before the University of Oxford in Hilary term, 1870	English	2006-09-03	\N
0000000004390	A History of Greek Art	English	2003-08-01	\N
0000000013119	Jean Francois Millet	English	2004-08-05	\N
0000000019009	Sir Joshua Reynolds--A Collection of Fifteen Pictures and a Portrait of the--Painter with Introduction and Interpretation	English	2006-08-08	\N
0000000017215	Rembrandt	English	2005-12-03	\N
0000000005113	Confessions of a Beachcomber	English	2004-02-01	\N
0000000022690	Rembrandt and His Works--Comprising a Short Account of His Life; with a Critical Examination into His Principles and Practice of Design, Light, Shade, and Colour. Illustrated by Examples from the Etchings of Rembrandt.	English	2007-09-20	\N
0000000019602	Rembrandt--A Collection Of Fifteen Pictures and a Portrait of the--Painter with Introduction and Interpretation	English	2006-10-22	\N
0000000017212	Michelangelo--A Collection Of Fifteen Pictures And A Portrait Of The--Master, With Introduction And Interpretation	English	2005-12-03	\N
0000000011242	The Life of Michelangelo Buonarroti	English	2004-02-01	\N
0000000022522	Femmes d'artistes. English	English	2007-09-05	\N
0000000024726	A History of Art for Beginners and Students--Painting, Sculpture, Architecture	English	2008-03-01	\N
0000000003151	The City of Domes : a walk with an architect about the courts and palaces of the Panama-Pacific International Exposition, with a discussion of its architecture, its sculpture, its mural decorations, its coloring and its lighting, preceded by a history of its growth	English	2002-04-01	\N
0000000028434	The Astronomy of Milton's 'Paradise Lost'	English	2009-03-29	\N
0000000022849	The History of Tasmania , Volume II	English	2007-10-02	\N
0000000028536	The Astronomy of the Bible--An Elementary Commentary on the Astronomical References of Holy Scripture	English	2009-04-08	\N
0000000035744	The gradual acceptance of the Copernican theory of the universe	English	2011-04-01	\N
0000000008172	History of Astronomy	English	2005-05-01	\N
0000000017370	Prehistoric Textile Fabrics Of The United States, Derived From Impressions On Pottery--Third Annual Report of the Bureau of Ethnology to the Secretary of the Smithsonian Institution, 1881-82, Government Printing Office, Washington, 1884, pages 393-425	English	2005-12-22	\N
0000000015622	Handbook on Japanning: 2nd Edition--For Ironware, Tinware, Wood, Etc. With Sections on Tinplating and--Galvanizing	English	2005-04-14	\N
0000000025267	Astronomy for Amateurs	English	2008-04-30	\N
0000000026556	Myths and Marvels of Astronomy	English	2008-09-08	\N
0000000035261	A New Astronomy	English	2011-02-13	\N
0000000028752	Pleasures of the telescope--An Illustrated Guide for Amateur Astronomers and a Popular--Description of the Chief Wonders of the Heavens for General--Readers	English	2009-05-10	\N
0000000015620	Recreations in Astronomy--With Directions for Practical Experiments and Telescopic Work	English	2005-04-14	\N
0000000035588	Scientific Papers by Sir George Howard Darwin--Volume V. Supplementary Volume	English	2011-03-16	\N
0000000004065	Side-Lights on Astronomy and Kindred Fields of Popular Science	English	2003-05-01	\N
0000000029031	Sir William Herschel: His Life and Works	English	2009-06-03	\N
0000000034435	Le Système Solaire se mouvant	French	2010-11-25	\N
0000000024236	Time and Tide--A Romance of the Moon	English	2008-01-10	\N
0000000016227	The Uses of Astronomy--An Oration Delivered at Albany on the 28th of July, 1856	English	2005-07-06	\N
0000000018431	Other Worlds--Their Nature, Possibilities and Habitability in the Light of the Latest Discoveries	English	2006-05-22	\N
0000000016767	Half-hours with the Telescope--Being a Popular Guide to the Use of the Telescope as a--Means of Amusement and Instruction.	English	2005-09-28	\N
0000000030607	Australia, its history and present condition--containing an account both of the bush and of the colonies,--with their respective inhabitants	English	2009-12-05	\N
0000000008106	Captain Cook's Journal During the First Voyage Round the World	English	2005-05-01	\N
0000000012668	An Account of the English Colony in New South Wales, Volume 2	English	2004-06-01	\N
0000000015675	A Voyage to New Holland	English	2005-04-21	\N
0000000017450	The Part Borne by the Dutch in the Discovery of Australia 1606-1765	English	2006-01-03	\N
0000000002660	Early Australian Voyages: Pelsart, Tasman, Dampier	English	2001-06-01	\N
0000000007450	Terre Napoleón; a History of French Explorations and Projects in Australia	English	2005-02-01	\N
0000000010840	The Explorers of Australia and their Life-work	English	2004-01-01	\N
0000000007163	The History of Australian Exploration from 1788 to 1888	English	2004-12-01	\N
0000000015662	An Historical Journal of the Transactions at Port Jackson and Norfolk Island	English	2005-04-20	\N
0000000010461	Journals of Australian Explorations	English	2003-12-01	\N
0000000016027	Journals of Two Expeditions of Discovery in North-West and Western Australia, Volume 1	English	2005-06-09	\N
0000000016145	Journals of Two Expeditions of Discovery in North-West and Western Australia, Volume 2	English	2005-06-29	\N
0000000004521	Narrative of the Overland Expedition of the Messrs. Jardine from Rockhampton to Cape York, Northern Queensland	English	2004-08-28	\N
0000000011203	Narrative of a Survey of the Intertropical and Western Coasts of Australia--Performed between the years 1818 and 1822 — Volume 1	English	2004-02-01	\N
0000000012046	Narrative of a Survey of the Intertropical and Western Coasts of Australia--Performed between the years 1818 and 1822 — Volume 2	English	2004-04-01	\N
0000000013248	McKinlay's Journal of Exploration in the Interior of Australia	English	2004-08-22	\N
0000000009943	Journal of an Expedition into the Interior of Tropical Australia	English	2004-08-28	\N
0000000012928	Three Expeditions into the Interior of Eastern Australia, Volume 1	English	2004-07-17	\N
0000000013033	Three Expeditions into the Interior of Eastern Australia, Volume 2	English	2004-07-27	\N
0000000008911	Explorations in Australia--The Journals of John McDouall Stuart	English	2004-08-30	\N
0000000005816	Successful Exploration Through the Interior of Australia	English	2004-06-01	\N
0000000012146	Discoveries in Australia, Volume 2--Discoveries in Australia; with an Account of the Coasts and Rivers--Explored and Surveyed During the Voyage of H.M.S. Beagle, in The--Years 1837-38-39-40-41-42-43. By Command of the Lords Commissioners--Of the Admiralty. Also a Narrative of Captain Owen Stanley's Visits--To the Islands in the Arafura Sea	English	2004-04-01	\N
0000000012929	A Voyage to Terra Australis — Volume 1	English	2004-07-17	\N
0000000034172	Peter's Rock in Mohammed's Flood, from St. Gregory the Great to St. Leo III	English	2010-10-30	\N
0000000015100	The Voyage of Governor Phillip to Botany Bay--With an Account of the Establishment of the Colonies of Port Jackson--and Norfolk Island (1789)	English	2005-02-18	\N
0000000004054	A Lady's Visit to the Gold Diggings of Australia in 1852-53	English	2003-05-01	\N
0000000003546	The Eureka Stockade	English	2002-11-01	\N
0000000016050	The Gold Hunters' Adventures--Or, Life in Australia	English	2005-06-13	\N
0000000008730	A Little Bush Maid	English	2005-08-01	\N
0000000000304	Rio Grande's Last Race & Other Verses	English	1995-08-01	\N
0000000003160	The Odyssey	English	2002-04-01	\N
0000000019274	Letters from the Guardian to Australia and New Zealand	English	2006-09-17	\N
0000000027099	Reminiscences of Queensland--1862-1869	English	2008-10-30	\N
0000000025527	Australia, The Dairy Country	English	2008-05-19	\N
0000000024994	Wheat Growing in Australia	English	2008-04-05	\N
0000000004699	We of the Never-Never	English	2003-11-01	\N
0000000016664	Town Life in Australia	English	2005-09-06	\N
0000000004221	Shearing in the Riverina	English	2003-07-01	\N
0000000025750	Colonial Born--A tale of the Queensland bush	English	2008-06-10	\N
0000000003703	Dot and the Kangaroo	English	2003-02-01	\N
0000000018891	Dot and the Kangaroo	English	2006-07-22	\N
0000000021464	The Gilpins and their Fortunes--A Story of Early Days in Australia	English	2007-05-15	\N
0000000026034	Grey Town--An Australian Story	English	2008-07-12	\N
0000000025059	In The Far North--1901	English	2008-04-12	\N
0000000023995	The Land of the Kangaroo--Adventures of Two Youths in a Journey through the Great Island Continent	English	2007-12-26	\N
0000000004731	Seven Little Australians	English	2003-12-01	\N
0000000021383	Adventures in Australia	English	2007-05-08	\N
0000000019172	An Australian in China--Being the Narrative of a Quiet Journey Across China to Burma	English	2006-09-04	\N
0000000003832	Australia Felix	English	2003-03-01	\N
0000000001199	An Anthology of Australian Verse	English	1998-02-01	\N
0000000011620	My Brilliant Career	English	2004-03-01	\N
0000000003424	For the Term of His Natural Life	English	2002-09-01	\N
0000000024639	The Colonial Mortuary Bard; "'Reo," The Fisherman; and The Black Bream Of Australia--1901	English	2008-02-18	\N
0000000024807	A Memory Of The Southern Seas--1904	English	2008-03-11	\N
0000000027977	Austral English--A dictionary of Australasian words, phrases and usages with those aboriginal-Australian and Maori words which have become incorporated in the language, and the commoner scientific words that have had their origin in Australasia	English	2009-02-03	\N
0000000036826	Le barbier de Séville ou la précaution inutile	French	2011-07-23	\N
0000000023615	Le Tour du Monde; Australie--Journal des voyages et des voyageurs; 2. sem. 1860	French	2007-11-25	\N
0000000012565	An Account of the English Colony in New South Wales, Volume 1--With Remarks on the Dispositions, Customs, Manners, Etc. of The--Native Inhabitants of That Country. to Which Are Added, Some--Particulars of New Zealand; Compiled, By Permission, From--The Mss.         of Lieutenant-Governor King.	English	2004-06-01	\N
0000000015602	Statistical, Historical and Political Description of the Colony of New South Wales and its Dependent Settlements in Van Diemen's Land--With a Particular Enumeration of the Advantages Which These Colonies Offer for Emigration, and Their Superiority in Many Respects Over Those Possessed by the United States of America	English	2005-04-11	\N
0000000005346	Journals of Expeditions of Discovery into Central Australia and Overland from Adelaide to King George's Sound in the Years 1840-1: Sent By the Colonists of South Australia, with the Sanction and Support of the Government: Including an Account of the Manners and Customs of the Aborigines and the State of Their Relations with Europeans — Complete	English	2004-03-01	\N
0000000005005	Journal of an Overland Expedition in Australia : from Moreton Bay to Port Essington, a distance of upwards of 3000 miles, during the years 1844-1845	English	2004-09-25	\N
0000000012115	Discoveries in Australia, Volume 1.--With an Account of the Coasts and Rivers Explored and Surveyed During--The Voyage of H.M.S. Beagle, in the Years 1837-38-39-40-41-42-43.--By Command of the Lords Commissioners of the Admiralty. Also a Narrative--Of Captain Owen Stanley's Visits to the Islands in the Arafura Sea.	English	2004-04-01	\N
0000000007509	The Logbooks of the Lady Nelson--With the journal of her first commander Lieutenant James Grant	English	2004-08-28	\N
0000000001198	Robbery under Arms; a story of life and adventure in the bush and in the Australian goldfields	English	1998-02-01	\N
0000000003833	Australian Legendary Tales: folklore of the Noongahburrahs as told to the Piccaninnies	English	2003-03-01	\N
0000000003819	The Euahlayi Tribe; a study of aboriginal life in Australia	English	2003-03-01	\N
0000000004050	Mates at Billabong	English	2003-05-01	\N
0000000021518	The Glugs of Gosh	English	2007-05-22	\N
0000000004830	The Rise of the Dutch Republic — Volume 28: 1578, part II	English	2004-01-01	\N
0000000000214	In the Days When the World Was Wide and Other Verses	English	2008-07-03	\N
0000000001036	Joe Wilson and His Mates	English	1997-09-01	\N
0000000004975	Spinifex and Sand	English	2004-01-01	\N
0000000010842	The Life of Captain James Cook	English	2004-01-01	\N
0000000015896	Five Months at Anzac--A Narrative of Personal Experiences of the Officer Commanding the 4th Field Ambulance, Australian Imperial Force	English	2005-05-24	\N
0000000016588	Over the Top With the Third Australian Division	English	2005-08-24	\N
0000000023050	Peter Biddulph--The Story of an Australian Settler	English	2007-10-17	\N
0000000016940	Gleanings from the Writings of Bahá'u'lláh	English	2005-06-23	\N
0000000016939	Gems of Divine Mysteries	English	2005-06-23	\N
0000000016984	Prayers and Meditations	English	2005-11-02	\N
0000000019289	Some Answered Questions	English	2006-09-18	\N
0000000019284	Paris Talks	English	2006-09-18	\N
0000000019238	Foundations of World Unity	English	2006-09-12	\N
0000000019279	Memorials of the Faithful	English	2006-09-17	\N
0000000019312	Tablets of Abdul-Baha Abbas	English	2006-09-20	\N
0000000019296	Tablets of the Divine Plan	English	2006-09-18	\N
0000000007114	Une Vie, a Piece of String and Other Stories	English	2004-12-01	\N
0000000023625	The Magic Pudding	English	2007-11-26	\N
0000000016891	Peter Parley's Tales About America and Australia	English	2005-10-17	\N
0000000004219	The Art of Living in Australia ;--together with three hundred Australian cookery recipes and accessory kitchen information by Mrs. H. Wicken	English	2003-07-01	\N
0000000016983	The Kitáb-i-Íqán	English	2005-11-02	\N
0000000019240	Bahá’í Prayers: A Selection of Prayers Revealed by Bahá’u’lláh, the--Báb, and ‘Abdu’l-Bahá	English	2006-09-12	\N
0000000019292	`Abdu'l-Bahá's Tablet to Dr. Forel	English	2006-09-18	\N
0000000019300	A Traveler's Narrative Written to Illustrate the Episode of the Báb	English	2006-09-18	\N
0000000019243	The Advent of Divine Justice	English	2006-09-15	\N
0000000019254	Citadel of Faith	English	2006-09-16	\N
0000000002562	Clouds	English	2001-03-01	\N
0000000004094	The Chinese Classics — Volume 1: Confucian Analects	English	2003-05-01	\N
0000000003100	The Chinese Classics: with a translation, critical and exegetical notes, prolegomena and copious indexes--(Shih ching. English) — Volume 1	English	2002-02-01	\N
0000000003330	The Analects of Confucius (from the Chinese Classics)	English	2002-07-01	\N
0000000009371	The Praise of Folly	English	2005-11-01	\N
0000000027315	Όρνιθες	Greek	2008-11-22	\N
0000000001666	The Golden Asse	English	2006-02-22	\N
0000000021262	The Works of Christopher Marlowe, Vol. 3 (of 3)	English	2007-04-30	\N
0000000017814	Λυσιστράτη	Greek	2006-02-21	\N
0000000000392	Jerusalem Delivered	English	1996-01-01	\N
0000000001000	La Divina Commedia di Dante	Italian	1997-08-01	\N
0000000027846	Moriae encomium. Dutch	Dutch	2009-01-20	\N
0000000003600	The Essays of Montaigne — Complete	English	2004-10-26	\N
0000000001012	La Divina Commedia di Dante	Italian	1997-08-01	\N
0000000005500	The Advancement of Learning	English	2004-04-01	\N
0000000002250	Richard II	English	2000-07-01	\N
0000000001515	The Merchant of Venice	English	1998-11-01	\N
0000000002266	King Lear	English	2000-07-01	\N
0000000023306	Meditationes de prima philosophia	Latin	2007-11-03	\N
0000000018269	Pascal's Pensées	English	2006-04-27	\N
0000000017941	Fables de La Fontaine--Tome Premier	French	2006-03-07	\N
0000000010615	An Essay Concerning Humane Understanding, Volume 1--MDCXC, Based on the 2nd Edition, Books 1 and 2	English	2004-01-01	\N
0000000010616	An Essay Concerning Humane Understanding, Volume 2--MDCXC, Based on the 2nd Edition, Books 3 and 4	English	2004-01-01	\N
0000000030344	The Fortunate Mistress (Parts 1 and 2)--or a History of the Life of Mademoiselle de Beleau Known by the Name of the Lady Roxana	English	2009-10-27	\N
0000000033733	The Guarded Heights	English	2010-09-15	\N
0000000000608	Areopagitica--A speech for the Liberty of Unlicensed Printing to the Parliament of England	English	2006-01-21	\N
0000000004737	A Tale of a Tub	English	2003-12-01	\N
0000000011248	The Delights of Wisdom Pertaining to Conjugial Love	English	2004-02-01	\N
0000000030268	Lettres persanes, tome I	French	2009-10-16	\N
0000000018569	Voltaire's Philosophical Dictionary	English	2006-06-12	\N
0000000006828	The Works of Henry Fielding--Edited by George Saintsbury in 12 Volumes $p Volume 12	English	2004-11-01	\N
0000000005427	Emile	English	2004-04-01	\N
0000000030433	Émile--or, Concerning Education; Extracts	English	2009-11-09	\N
0000000000804	A Sentimental Journey Through France and Italy	English	1997-02-01	\N
0000000000601	The Monk; a romance	English	1996-07-01	\N
0000000006593	History of Tom Jones, a Foundling	English	2004-09-01	\N
0000000020577	La Folle Journée ou le Mariage de Figaro	French	2007-02-13	\N
0000000025717	The History Of The Decline And Fall Of The Roman Empire--Table of Contents with links in the HTML file to the two--Project Gutenberg editions (12 volumes)	English	2008-06-07	\N
0000000003743	Writings of Thomas Paine — Volume 4 (1794-1796): the Age of Reason	English	2003-02-01	\N
0000000004797	The Complete Poetical Works of Percy Bysshe Shelley — Volume 1	English	2003-12-01	\N
0000000016896	Corinne, Volume 1 (of 2)--Or Italy	English	2005-10-17	\N
0000000029549	Le Roi s'amuse	French	2009-07-30	\N
0000000004799	The Complete Poetical Works of Percy Bysshe Shelley — Volume 3	English	2003-12-01	\N
0000000009976	Hernani	French	2006-02-01	\N
0000000000798	Le Rouge et le noir	French	1997-01-01	\N
0000000027942	A System Of Logic, Ratiocinative And Inductive	English	2009-01-31	\N
0000000023297	La Gioconda	Italian	2007-11-03	\N
0000000022642	L'Innocente	Italian	2007-09-16	\N
0000000027825	Isaotta Guttadàuro ed altre poesie	Italian	2009-01-18	\N
0000000008899	Three Weeks	English	2005-09-01	\N
0000000004708	Les Chansons De Bilitis	French	2003-12-01	\N
0000000026685	Aphrodite--Moeurs antiques	French	2008-09-21	\N
0000000030719	Νεφέλαι	Greek	2009-12-20	\N
0000000005946	The History of Don Quixote, Volume 2, Complete	English	2004-06-01	\N
0000000005267	Sister Carrie	English	2004-03-01	\N
0000000031824	The "Genius"	English	2010-03-30	\N
0000000026884	The Backwash of War--The Human Wreckage of the Battlefield as Witnessed by an--American Hospital Nurse	English	2008-10-12	\N
0000000002814	Dubliners	English	2001-09-01	\N
0000000033797	Sinister Street, vol. 1	English	2010-09-22	\N
0000000033798	Sinister Street, vol. 2	English	2010-09-22	\N
0000000000140	The Jungle	English	2006-03-11	\N
0000000028948	The Rainbow	English	2009-05-23	\N
0000000004240	Women in Love	English	2003-07-01	\N
0000000000217	Sons and Lovers	English	2006-01-16	\N
0000000029772	Oeuvres de Blaise Pascal--Nouvelle Édition. Tome Second.	French	2009-08-23	\N
0000000031053	The History of the Devil--As Well Ancient as Modern: In Two Parts	English	2010-01-23	\N
0000000027573	Esprit des lois--livres I à V, précédés d'une introduction de l'éditeur	French	2008-12-20	\N
0000000022048	Napoléon Le Petit	French	2007-07-11	\N
0000000025344	The Scarlet Letter	English	2008-05-05	\N
0000000030107	Principles Of Political Economy--Abridged with Critical, Bibliographical, and Explanatory Notes, and a Sketch of the History of Political Economy	English	2009-09-27	\N
0000000020580	Napoleon the Little	English	2007-02-14	\N
0000000012784	The Prose Works of Jonathan Swift, D.D. — Volume 06--The Drapier's Letters	English	2004-06-29	\N
0000000025053	Tentation de saint Antoine. English	English	2008-04-12	\N
0000000028885	Alice's Adventures in Wonderland--Illustrated by Arthur Rackham. With a Proem by Austin Dobson	English	2009-05-19	\N
0000000000074	The Adventures of Tom Sawyer	English	2004-07-01	\N
0000000006099	Les Fleurs du Mal	French	2004-07-01	\N
0000000002413	Madame Bovary	English	2006-02-26	\N
0000000026710	Les épaves de Charles Baudelaire	French	2008-09-27	\N
0000000000061	The Communist Manifesto	English	2005-01-25	\N
0000000015995	Salambo--Ein Roman aus Alt-Karthago	German	2005-06-06	\N
0000000027401	Poems & Ballads (Second Series)--Swinburne's Poems Volume III	English	2008-12-04	\N
0000000000110	Tess of the d'Urbervilles	English	1994-02-01	\N
0000000000153	Jude the Obscure	English	1994-08-01	\N
0000000008563	La Terre	French	2005-07-01	\N
0000000020974	J'accuse...!	French	2007-04-04	\N
0000000018545	A Mummer's Tale	English	2006-06-09	\N
0000000004788	Mademoiselle Fifi	English	2003-12-01	\N
0000000000160	The Awakening and Selected Short Stories	English	2006-03-11	\N
0000000037298	Garcia the Centenarian And His Times--Being a Memoir of Manuel Garcia's Life and Labours for the--Advancement of Music and Science	English	2011-09-03	\N
0000000000047	Anne of Avonlea	English	2006-03-08	\N
0000000000808	The Complete Plays of Gilbert and Sullivan	English	1997-02-01	\N
0000000007508	A Mummer's Wife	English	2005-02-01	\N
0000000005722	The Shewing-up of Blanco Posnet	English	2004-05-01	\N
0000000023917	Salomé	French	2007-12-19	\N
0000000029208	Salome en Een Florentijnsch Treurspel	Dutch	2009-06-23	\N
0000000000996	Don Quixote	English	2004-07-27	\N
0000000001661	The Adventures of Sherlock Holmes	English	1999-03-01	\N
0000000000113	The Secret Garden	English	1994-03-01	\N
0000000013610	Studies in the Psychology of Sex, Volume 1--The Evolution of Modesty; The Phenomena of Sexual Periodicity; Auto-Erotism	English	2004-10-08	\N
0000000013611	Studies in the Psychology of Sex, Volume 2--Sexual Inversion	English	2004-10-08	\N
0000000031732	The Sex Side of Life--An Explanation for Young People	English	2010-03-22	\N
0000000023700	The Decameron of Giovanni Boccaccio	English	2007-12-03	\N
0000000019591	De Decamerone van Boccaccio	Dutch	2006-10-20	\N
0000000002021	Nostromo, a Tale of the Seaboard	English	2006-01-09	\N
0000000008800	The Divine Comedy by Dante, Illustrated	English	2005-09-01	\N
0000000001400	Great Expectations	English	1998-07-01	\N
0000000028054	The Brothers Karamazov	English	2009-02-12	\N
0000000011000	An Old Babylonian Version of the Gilgamesh Epic	English	2006-07-04	\N
0000000000145	Middlemarch	English	1994-07-01	\N
0000000001237	Father Goriot	English	2004-10-06	\N
0000000008387	Hunger	English	2005-06-01	\N
0000000015492	A Doll's House	English	2005-03-29	\N
0000000004300	Ulysses	English	2003-07-01	\N
0000000016659	Translations of Shakuntala and Other Works	English	2005-09-05	\N
0000000012058	The Mahabharata of Krishna-Dwaipayana Vyasa Translated into English Prose --Virata Parva	English	2004-04-01	\N
0000000021765	The Metamorphoses of Ovid--Vol. I,  Books I-VII	English	2007-06-08	\N
0000000025667	Hamlet: Drama em cinco Actos	Portuguese	2008-06-01	\N
0000000001531	Othello	English	1998-11-01	\N
0000000012406	Kepler	English	2004-05-01	\N
0000000007849	The Trial	English	2005-04-01	\N
0000000003435	Arabian nights. English	English	2002-09-01	\N
0000000003436	Arabian nights. English	English	2002-09-01	\N
0000000000076	Adventures of Huckleberry Finn	English	2004-06-29	\N
0000000001322	Leaves of Grass	English	1998-05-01	\N
0000000033281	Punch, or the London Charivari, Vol. 98, May 31, 1890	English	2010-07-28	\N
0000000003420	Vindication of the Rights of Woman	English	2002-09-01	\N
0000000002270	Shakespeare's First Folio	English	2000-07-01	\N
0000000001906	Erewhon	English	1999-09-01	\N
0000000000062	A Princess of Mars	English	1993-04-01	\N
0000000001951	The Coming Race	English	2006-02-19	\N
0000000000228	The Aeneid--English	English	1995-03-01	\N
0000000001081	Mertvye dushi. English	English	1997-10-01	\N
0000000001200	Gargantua and Pantagruel	English	2004-08-08	\N
0000000003748	Voyage au centre de la terre. English	English	2003-02-01	\N
0000000014851	Uncle Silas--A Tale of Bartram-Haugh	English	2005-01-31	\N
0000000000652	Rasselas, Prince of Abyssinia	English	1996-09-01	\N
0000000000271	Black Beauty	English	2006-01-16	\N
0000000000209	The Turn of the Screw	English	1995-02-01	\N
0000000017831	La débâcle	French	2006-02-22	\N
0000000000103	Around the World in 80 Days	English	1994-01-01	\N
0000000001695	The Man Who Was Thursday, a nightmare	English	1999-04-01	\N
0000000000796	La Chartreuse De Parme	French	1997-01-01	\N
0000000014645	Unleavened Bread	English	2005-01-10	\N
0000000003791	The Reign of Law; a tale of the Kentucky hemp fields	English	2003-02-01	\N
0000000005719	Janice Meredith	English	2004-05-01	\N
0000000005373	Richard Carvel — Complete	English	2004-10-18	\N
0000000004097	Alice of Old Vincennes	English	2003-05-01	\N
0000000000031	Oedipus Trilogy	English	2006-03-08	\N
0000000005388	The Crisis — Volume 01	English	2004-10-19	\N
0000000014219	Helmet of Navarre	English	2004-11-30	\N
0000000006249	The Right of Way — Complete	English	2004-11-18	\N
0000000006245	The Right of Way — Volume 03	English	2004-08-01	\N
0000000010959	The Visits of Elizabeth	English	2004-02-01	\N
0000000012440	D'Ri and I	English	2004-05-01	\N
0000000004377	Mrs. Wiggs of the Cabbage Patch	English	2003-08-01	\N
0000000014513	Audrey	English	2004-12-29	\N
0000000002852	The Hound of the Baskervilles	English	2001-10-01	\N
0000000003070	The Hound of the Baskervilles	English	2002-02-01	\N
0000000003428	The Two Vanrevels	English	2002-09-01	\N
0000000001603	The Blue Flower	English	1999-01-01	\N
0000000023784	The History of Sir Richard Calmady--A Romance	English	2007-12-09	\N
0000000013782	Lady Rose's Daughter	English	2004-10-18	\N
0000000012482	The Mettle of the Pasture	English	2004-06-01	\N
0000000020589	Edgar Allan Poe--Die Dichtung, Band XLII	German	2007-02-16	\N
0000000000481	In the Bishop's Carriage	English	1996-04-01	\N
0000000013812	Sir Mortimer	English	2004-10-20	\N
0000000006801	Beverly of Graustark	English	2004-11-01	\N
0000000014126	The Marriage of William Ashe	English	2004-11-22	\N
0000000014079	Sandy	English	2004-11-18	\N
0000000003637	The Garden of Allah	English	2006-04-13	\N
0000000013967	Nedra	English	2004-11-06	\N
0000000033490	The Gambler--A Novel	English	2010-08-22	\N
0000000014740	The Princess Passes	English	2005-01-20	\N
0000000003766	Coniston — Complete	English	2004-10-17	\N
0000000012441	The House of a Thousand Candles	English	2004-05-01	\N
0000000005971	Jane Cable	English	2004-06-01	\N
0000000006315	The Awakening of Helena Richie	English	2004-08-01	\N
0000000007523	The Lady of the Decoration	English	2005-02-01	\N
0000000013913	The Port of Missing Men	English	2004-11-01	\N
0000000000506	The Shuttle	English	2006-03-18	\N
0000000008741	The Brass Bowl	English	2005-08-01	\N
0000000014818	The Daughter of Anderson Crow	English	2005-01-27	\N
0000000014852	The Younger Set	English	2005-02-01	\N
0000000003242	The Doctor : a Tale of the Rockies	English	2006-06-03	\N
0000000004790	Half a Rogue	English	2003-12-01	\N
0000000003684	Mr. Crewe's Career — Complete	English	2004-10-16	\N
0000000005122	The Trail of the Lonesome Pine	English	2004-02-01	\N
0000000004516	Peter: a novel of which he is not the hero	English	2003-10-01	\N
0000000009779	The Black Bag	English	2006-01-01	\N
0000000014263	Katrine	English	2004-12-06	\N
0000000014284	Truxton King--A Story of Graustark	English	2004-12-07	\N
0000000014355	54-40 or Fight	English	2004-12-15	\N
0000000014395	Septimus	English	2004-12-20	\N
0000000014054	Max	English	2004-11-15	\N
0000000001671	When a Man Marries	English	1999-03-01	\N
0000000005129	The Prodigal Judge	English	2004-02-01	\N
0000000006997	The Winning of Barbara Worth	English	2004-11-01	\N
0000000014303	Queed	English	2004-12-08	\N
0000000013813	The Common Law	English	2004-10-20	\N
0000000014394	The Street Called Straight	English	2004-12-20	\N
0000000030115	Tante	English	2009-09-27	\N
0000000026163	Evolution créatrice. English	English	2008-08-01	\N
0000000001440	Woman and Labour	English	1998-08-01	\N
0000000013985	V. V.'s Eyes	English	2004-11-08	\N
0000000005145	The Heart of the Hills	English	2004-02-01	\N
0000000009879	The Amateur Gentleman	English	2006-02-01	\N
0000000014597	The Woman Thou Gavest Me--Being the Story of Mary O'Neill	English	2005-01-04	\N
0000000002514	T. Tembarom	English	2001-02-01	\N
0000000015759	Crowds--A Moving-Picture of Democracy	English	2005-05-03	\N
0000000014811	The New Freedom--A Call For the Emancipation of the Generous Energies of a People	English	2005-01-26	\N
0000000011715	The Eyes of the World	English	2004-03-01	\N
0000000004379	The Fortunate Youth	English	2003-08-01	\N
0000000000402	Penrod	English	2006-03-15	\N
0000000006353	The Prince of Graustark	English	2004-08-01	\N
0000000001098	The Turmoil, a novel	English	1997-11-01	\N
0000000009489	Michael O'Halloran	English	2005-12-01	\N
0000000009931	K	English	2006-02-01	\N
0000000014669	Jaffery	English	2005-01-11	\N
0000000005229	Felix O'Day	English	2004-03-01	\N
0000000029932	The Harbor	English	2009-09-09	\N
0000000001027	The Lone Star Ranger, a romance of the border	English	1997-08-01	\N
0000000001611	Seventeen--A Tale of Youth and Summer Time and the Baxter Family Especially William	English	2006-02-22	\N
0000000014060	Mr. Britling Sees It Through	English	2004-11-16	\N
0000000014571	Life and Gabriella--The Story of a Woman's Courage	English	2005-01-03	\N
0000000029571	Nan of Music Mountain	English	2009-08-02	\N
0000000014150	The Light in the Clearing	English	2004-11-25	\N
0000000004287	The Red Planet	English	2003-07-01	\N
0000000004603	In the Wilderness	English	2006-04-13	\N
0000000013883	The Tree of Heaven	English	2004-10-27	\N
0000000001590	The Amazing Interlude	English	1999-01-01	\N
0000000013993	Dere Mable--Love Letters of a Rookie	English	2004-11-09	\N
0000000013497	Greatheart	English	2004-09-18	\N
0000000003249	The Major	English	2006-05-30	\N
0000000009836	The Pawns Count	English	2006-02-01	\N
0000000020072	With the Colors--Songs of the American Service	English	2006-12-09	\N
0000000012418	The Land of Deepening Shadow--Germany-at-War	English	2004-05-01	\N
0000000003194	Mark Twain's Letters — Volume 2 (1867-1875)	English	2004-09-18	\N
0000000003195	Mark Twain's Letters — Volume 3 (1876-1885)	English	2004-09-18	\N
0000000003197	Mark Twain's Letters — Volume 5 (1901-1906)	English	2004-09-19	\N
0000000000405	Adventures and Letters of Richard Harding Davis	English	1996-01-01	\N
0000000016685	Private Peat	English	2005-09-12	\N
0000000010201	The Desert of Wheat	English	2003-11-01	\N
0000000003288	The Sky Pilot in No Man's Land	English	2006-06-03	\N
0000000003265	The Re-Creation of Brian Kent	English	2006-06-03	\N
0000000018056	The Tin Soldier	English	2006-03-27	\N
0000000014646	Christopher and Columbus	English	2005-01-10	\N
0000000002044	The Education of Henry Adams	English	2000-01-01	\N
0000000017237	A Man for the Ages--A Story of the Builders of Democracy	English	2005-12-05	\N
0000000005815	The Great Impersonation	English	2006-04-22	\N
0000000013763	The Lamp in the Desert	English	2004-10-16	\N
0000000006467	Letters to His Children	English	2006-04-22	\N
0000000002386	Theodore Roosevelt; an Intimate Biography	English	2000-11-01	\N
0000000003317	Now It Can Be Told	English	2002-07-01	\N
0000000014885	Red Pottage	English	2005-02-02	\N
0000000002799	Eben Holden, a tale of the north country	English	2001-09-01	\N
0000000007031	The Sheik	English	2004-12-01	\N
0000000001970	A Poor Wise Man	English	1999-11-01	\N
0000000025702	The Kingdom Round the Corner--A Novel	English	2008-06-05	\N
0000000014145	If Winter Comes	English	2004-11-24	\N
0000000006491	The Head of the House of Coombe	English	2004-09-01	\N
0000000014579	Simon Called Peter	English	2005-01-03	\N
0000000032527	The adventures of Alphonso and Marina	English	2010-05-25	\N
0000000001601	The Breaking Point	English	1999-01-01	\N
0000000001265	Queen Victoria	English	2006-02-19	\N
0000000003812	The Mirrors of Washington	English	2003-03-01	\N
0000000014996	Painted Windows--Studies in Religious Personality	English	2005-02-09	\N
0000000017018	The Life and Letters of Walter H. Page, Volume II	English	2005-11-06	\N
0000000027203	Maîtrise de soi-même par l'autosuggestion consciente. English	English	2008-11-08	\N
0000000017498	When Knighthood Was in Flower--or, the Love Story of Charles Brandon and Mary Tudor the King's Sister, and Happening in the Reign of His August Majesty King Henry the Eighth	English	2006-01-13	\N
0000000014001	The Mississippi Bubble	English	2004-11-10	\N
0000000005970	Lovey Mary	English	2004-06-01	\N
0000000021959	Letters from a Self-Made Merchant to His Son--Being the Letters written by John Graham, Head of the House--of Graham & Company, Pork-Packers in Chicago, familiarly--known on 'Change as "Old Gorgon Graham," to his Son,--Pierrepont, facetiously known to his intimates as "Piggy."	English	2007-06-28	\N
0000000014696	The Wheel of Life	English	2005-01-15	\N
0000000003828	Simon the Jester	English	2006-04-13	\N
0000000018665	Molly Make-Believe	English	2006-06-23	\N
0000000004786	Zone Policeman 88; a close range study of the Panama canal and its workers	English	2003-12-01	\N
0000000034297	Angela's Business	English	2010-11-12	\N
0000000010509	The Bars of Iron	English	2003-12-01	\N
0000000005394	The Crisis — Volume 07	English	2004-10-19	\N
0000000003193	Mark Twain's Letters — Volume 1 (1835-1866)	English	2004-09-18	\N
0000000001693	Dangerous Days	English	1999-04-01	\N
0000000019415	Libraries in the Medieval and Renaissance Periods--The Rede Lecture Delivered June 13, 1894	English	2006-10-01	\N
0000000001961	Books and Bookmen	English	1999-11-01	\N
0000000016350	Curiosities of Literature,  Vol. 2	English	2005-07-24	\N
0000000031078	Curiosities of Literature, Vol. 3	English	2010-01-25	\N
0000000030396	Books and Authors--Curious Facts and Characteristic Sketches	English	2009-11-02	\N
0000000022716	The Book-Hunter at Home	English	2007-09-22	\N
0000000000541	The Age of Innocence	English	1996-05-01	\N
0000000004684	The U. P. Trail	English	2003-11-01	\N
0000000022136	The Book-Hunter--A New Edition, with a Memoir of the Author	English	2007-07-24	\N
0000000022606	The Booklover and His Books	English	2007-09-15	\N
0000000022607	The Book-Hunter in London--Historical and Other Studies of Collectors and Collecting	English	2007-09-15	\N
0000000022608	A Book for All Readers--An Aid to the Collection, Use, and Preservation of Books--and the Formation of Public and Private Libraries	English	2007-09-15	\N
0000000026378	The Care of Books	English	2008-08-20	\N
0000000015199	The Reformed Librarie-Keeper (1650)	English	2005-02-28	\N
0000000020416	The Annual Catalogue (1737)--Or, A New and Compleat List of All The New Books, New--Editions of Books, Pamphlets, &c.	English	2007-01-22	\N
0000000017192	The Raven	English	2005-11-30	\N
0000000004667	Seven Wives and Seven Prisons; Or, Experiences in the Life of a Matrimonial Monomaniac. a True Story	English	2003-11-01	\N
0000000014004	The Every-day Life of Abraham Lincoln--A Narrative And Descriptive Biography With Pen-Pictures And Personal--Recollections By Those Who Knew Him	English	2004-11-10	\N
0000000000813	Reminiscences of Tolstoy	English	1997-02-01	\N
0000000012090	The Lives of the Poets of Great Britain and Ireland (1753) Volume V.	English	2004-04-01	\N
0000000006312	Representative Men	English	2004-08-01	\N
0000000000984	Who Was Who: 5000 BC - 1914 Biographical Dictionary of the Famous and Those Who Wanted to Be	English	1997-07-01	\N
0000000003725	Famous Men of the Middle Ages	English	2003-02-01	\N
0000000002082	Memoirs of the Comtesse Du Barry; with intimate details of her entire career as favorite of Louis XV	English	2000-02-01	\N
0000000004693	Famous Affinities of History, Vol 1-4, Complete--The Romance of Devotion	English	2003-11-01	\N
0000000004691	Famous Affinities of History — Volume 3--The Romance of Devotion	English	2003-11-01	\N
0000000019767	George Borrow and His Circle--Wherein May Be Found Many Hitherto Unpublished Letters Of--Borrow And His Friends	English	2006-11-12	\N
0000000014555	William Lloyd Garrison--The Abolitionist	English	2005-01-01	\N
0000000018757	Prince Henry the Navigator, the Hero of Portugal and of Modern Discovery, 1394-1460 A.D.--With an Account of Geographical Progress Throughout the Middle Ages As the Preparation for His Work.	English	2006-07-04	\N
0000000006702	Life of Harriet Beecher Stowe--Compiled From Her Letters and Journals by Her Son Charles Edward Stowe	English	2004-10-01	\N
0000000002447	Eminent Victorians	English	2000-12-01	\N
0000000012985	Eugene Field, a Study in Heredity and Contradictions — Volume 2	English	2004-07-22	\N
0000000016494	The Transvaal from Within--A Private Record of Public Affairs	English	2005-08-09	\N
0000000025117	With the Naval Brigade in Natal (1899-1900)--Journal of Active Service	English	2008-04-21	\N
0000000012427	Neutral Rights and Obligations in the Anglo-Boer War	English	2004-05-01	\N
0000000026198	South Africa and the Transvaal War, Vol. 2--From the Commencement of the War to the Battle of Colenso, 15th Dec. 1899	English	2008-08-06	\N
0000000018794	Strijd tusschen Boer en Brit. English	English	2006-07-08	\N
0000000003069	The Great Boer War	English	2002-02-01	\N
0000000024951	The War in South Africa--Its Cause and Conduct	English	2008-03-29	\N
0000000021302	Charge!--A Story of Briton and Boer	English	2007-05-04	\N
0000000013855	Une politique européenne : la France, la Russie, l'Allemagne et la guerre au Transvaal	French	2004-10-25	\N
0000000017968	Boer Politics	English	2006-03-12	\N
0000000016131	Campaign Pictures of the War in South Africa (1899-1900)--Letters from the Front	English	2005-06-25	\N
0000000032934	The Young Colonists--A Story of the Zulu and Boer Wars	English	2010-06-20	\N
\.


--
-- Data for Name: autorlibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY autorlibro (isbn, autor) FROM stdin;
0000000011617	Various
0000000002710	Dumas, Alexandre, 1802-1870
0000000010743	Falkner, John Meade, 1858-1932
0000000000711	Haggard, Henry Rider, 1856-1925
0000000002713	Haggard, Henry Rider, 1856-1925
0000000001690	Haggard, Henry Rider, 1856-1925
0000000001711	Haggard, Henry Rider, 1856-1925
0000000002841	Haggard, Henry Rider, 1856-1925
0000000000215	London, Jack, 1876-1916
0000000000589	Stevenson, Robert Louis, 1850-1894
0000000003657	Baker, Samuel White, Sir, 1821-1893
0000000006693	How, Edith A.
0000000003233	Baker, Samuel White, Sir, 1821-1893
0000000007937	Bridge, Horatio, 1806-1893
0000000002225	Kipling, Rudyard, 1865-1936
0000000005760	Burton, Richard Francis, Sir, 1821-1890
0000000012667	Huish, Robert, 1777-1850
0000000002681	Dumas, Alexandre, 1802-1870
0000000006886	Burton, Richard Francis, Sir, 1821-1890
0000000002759	Dumas, Alexandre, 1802-1870
0000000005157	Stanley, Henry M. (Henry Morton), 1841-1904
0000000008564	Park, Mungo, 1771-1806
0000000005305	Park, Mungo, 1771-1806
0000000017164	Richardson, James, 1806-1851
0000000018544	Richardson, James, 1806-1851
0000000014451	White, Stewart Edward, 1873-1946
0000000003810	Patterson, J. H. (John Henry), 1867-1947
0000000015240	Dorman, Marcus Roberts Phipps
0000000016280	Rohlfs, Gerhard, 1831-1896
0000000036791	Beers, R. W.
0000000015399	Equiano, Olaudah, 1745-1797
0000000015042	Gronniosaw, James Albert Ukawsaw
0000000021391	Kingston, William Henry Giles, 1814-1880
0000000014466	Wilson, Sarah Isabella Augusta, Lady, 1865-1929
0000000023638	Scully, W. C. (William Charles), 1855-1943
0000000012428	Clarkson, Thomas, 1760-1846
0000000017599	Rohlfs, Gerhard, 1831-1896
0000000017700	Du Bois, W. E. B. (William Edward Burghardt), 1868-1963
0000000021060	Collingwood, Harry, 1851-1922
0000000017615	Glanville, Ernest, 1855-1925
0000000002761	Haggard, Henry Rider, 1856-1925
0000000002857	Haggard, Henry Rider, 1856-1925
0000000021472	Kingston, William Henry Giles, 1814-1880
0000000021490	Kingston, William Henry Giles, 1814-1880
0000000021448	Kingston, William Henry Giles, 1814-1880
0000000001458	Schreiner, Olive, 1855-1920
0000000001441	Schreiner, Olive, 1855-1920
0000000021899	Cornell, Frederick Carruthers, 1867-1921
0000000021254	McCutcheon, John T. (John Tinney), 1870-1949
0000000011772	Corréard, Alexandre, 1788-1857
0000000011772	Savigny, Jean Baptiste Henri, 1793-1843
0000000016672	Livingstone, David, 1813-1873
0000000022575	Various
0000000022568	Stockley, Cynthia, 1883-1936
0000000010633	Clarkson, Thomas, 1760-1846
0000000002046	Brown, William Wells, 1816?-1884
0000000011228	Chesnutt, Charles W. (Charles Waddell), 1858-1932
0000000011057	Chesnutt, Charles W. (Charles Waddell), 1858-1932
0000000000408	Du Bois, W. E. B. (William Edward Burghardt), 1868-1963
0000000015359	Du Bois, W. E. B. (William Edward Burghardt), 1868-1963
0000000011030	Jacobs, Harriet Ann, 1813-1897
0000000014976	Wells-Barnett, Ida B., 1862-1931
0000000002095	Brown, William Wells, 1816?-1884
0000000019746	Chesnutt, Charles W. (Charles Waddell), 1858-1932
0000000014977	Wells-Barnett, Ida B., 1862-1931
0000000014975	Wells-Barnett, Ida B., 1862-1931
0000000020677	Bakunin, Mikhail Aleksandrovic, 1814-1876
0000000026600	Various
0000000027118	Various
0000000027262	Various
0000000027341	Various
0000000000444	Proudhon, P.-J. (Pierre-Joseph), 1809-1865
0000000004602	Tolstoy, Leo, graf, 1828-1910
0000000008700	Haeckel, Ernst Heinrich Philipp August, 1834-1919
0000000002634	Huxley, Thomas Henry, 1825-1895
0000000000689	Tolstoy, Leo, graf, 1828-1910
0000000036676	Various
0000000018869	Powell, John Wesley, 1834-1902
0000000015293	Semple, Ellen Churchill, 1863-1932
0000000014028	Gerland, Georg Karl Cornelius, 1833-1921
0000000018273	Cole, Fay-Cooper, 1881-1961
0000000014648	Menant, Delphine, 1850-
0000000013831	Gulick, Sidney Lewis, 1860-1945
0000000020116	Frazer, James George, Sir, 1854-1941
0000000017186	Silva, Joaquim Possidónio Narciso da, 1806-1896
0000000013642	Various
0000000035560	Sienkiewicz, Henryk, 1846-1916
0000000020411	Murray, Margaret Alice, 1863-1963
0000000020665	Molkenboer, Theodoor, 1871-1920
0000000018236	Feith, Jan, 1874-1944
0000000007978	Johnson, Elias
0000000008112	Morgan, Lewis H., 1818-1881
0000000016572	Clark, Galen, 1814-1910
0000000017404	Thomas, Northcote Whitridge, 1868-1936
0000000017280	Marett, R. R. (Robert Ranulph), 1866-1943
0000000017262	Pilling, James Constantine, 1846-1895
0000000001323	Prescott, William Hickling, 1796-1859
0000000022601	Hale, Horatio, 1817-1896
0000000017910	Williamson, Robert Wood, 1856-1932
0000000014400	Maspero, G. (Gaston), 1846-1916
0000000019115	Haverfield, F. (Francis), 1860-1919
0000000015126	Noad, Joseph, 1823-1898
0000000017487	Mindeleff, Cosmos, 1863-
0000000024505	Nicholls, H. G. (Henry George), 1825-1867
0000000017606	Mason, Otis Tufton, 1838-1908
0000000019856	Mindeleff, Victor, 1860-1948
0000000019856	Mindeleff, Cosmos, 1863-
0000000035188	Stratton-Porter, Gene, 1863-1924
0000000019606	Stevenson, James, 1840-1888
0000000013575	Various
0000000024654	Ragozin, Zénaïde A. (Zénaïde Alexeïevna), 1835-1924
0000000017774	Ruskin, John, 1819-1900
0000000012625	Bragdon, Claude Fayette, 1866-1946
0000000016531	Benham, William, 1831-1910
0000000010479	Atticus, 1836?-1912
0000000022990	Anonymous
0000000022832	Withers, Hartley, 1867-1950
0000000019881	Eley, C. King
0000000020191	Bygate, Joseph E.
0000000019487	Fisher, A. Hugh (Alfred Hugh), 1867-1945
0000000036780	Daudet, Alphonse, 1840-1897
0000000021511	Worley, George
0000000022260	Massé, H. J. L. J. (Henri Jean Louis Joseph), 1860-
0000000036844	Robinson, Rowland E. (Evans), 1833-1900
0000000020967	Phillips, George S. (George Searle), 1815-1889
0000000019998	Allen, Lewis Falley, 1800-1890
0000000014987	Various
0000000015020	Various
0000000016105	Various
0000000012648	Bragdon, Claude Fayette, 1866-1946
0000000023593	Ruskin, John, 1819-1900
0000000019715	Quennell, C. H. B. (Charles Henry Bourne), 1872-1935
0000000018783	Morillo, Francisco
0000000011302	Villarino, Basilio, 1741-1785
0000000018289	Lozano, Pedro, 1697-1752
0000000019643	Anonymous
0000000018798	Viedma, Francisco de, 1737-1809
0000000036865	Yeats, W. B. (William Butler), 1865-1939
0000000037036	Conwell, Russell H.
0000000037171	Payn, James, 1830-1898
0000000020401	Schmidel, Ulrich, 1510?-1579?
0000000025317	Barco Centenera, Martín del, 1535-
0000000020852	Quiroga, José, 1707?-1784
0000000018723	Undiano y Gastelu, Sebastian
0000000015066	Hernández, José, 1834-1886
0000000007446	Hudson, W. H. (William Henry), 1841-1922
0000000004028	Cellini, Benvenuto, 1500-1571
0000000018937	Kronheim, Joseph Martin, 1810-1896
0000000037178	Ouida, 1839-1908
0000000037190	Nicholson, Meredith, 1866-1947
0000000019570	Hurll, Estelle M. (Estelle May), 1863-1924
0000000022500	Trusler, John, 1735-1820
0000000020607	Israëls, Jozef, 1824-1911
0000000022564	Keysor, Jennie Ellis, 1860-
0000000017289	Anonymous
0000000017244	Brownell, W. C. (William Crary), 1851-1928
0000000014056	Mauclair, Camille, 1872-1945
0000000017730	Holmes, William Henry, 1846-1933
0000000005712	James, Juliet Helena Lumbard, 1864-
0000000013029	Lindsay, Vachel, 1879-1931
0000000016180	Macmillan, Hugh
0000000022574	Sumner, Charles, 1811-1874
0000000006841	Wilson, Robert Pierpont
0000000006841	Willson, Marcius
0000000018733	Bode, Wilhelm, 1845-1929
0000000020915	Field, George, 1777?-1854
0000000037274	Mackintosh, C. (Charles) H. (Henry)
0000000020195	Fletcher, F. Morley (Frank Morley), 1866-1949
0000000000167	Humphrey, S. D. (Samuel Dwight), 1823-1883
0000000014264	Speed, Harold
0000000013755	Jerrold, W. Blanchard, 1826-1884
0000000006932	Bacon, Mary Schell Hoke, 1870-1934
0000000004060	Pater, Walter, 1839-1894
0000000019980	Ruskin, John, 1819-1900
0000000019164	Ruskin, John, 1819-1900
0000000004390	Tarbell, Frank Bigelow, 1853-1920
0000000013119	Hurll, Estelle M. (Estelle May), 1863-1924
0000000019009	Hurll, Estelle M. (Estelle May), 1863-1924
0000000017215	Menpes, Mortimer, 1855-1938
0000000022690	Burnet, John, 1784-1868
0000000019602	Hurll, Estelle M. (Estelle May), 1863-1924
0000000017212	Hurll, Estelle M. (Estelle May), 1863-1924
0000000011242	Symonds, John Addington, 1840-1893
0000000022522	Daudet, Alphonse, 1840-1897
0000000024726	Waters, Clara Erskine Clement, 1834-1916
0000000003151	Barry, John D. (John Daniel), 1866-1942
0000000028434	Orchard, Thomas Nathaniel
0000000028536	Maunder, E. Walter (Edward Walter), 1851-1928
0000000035744	Stimson, Dorothy, 1890-1988
0000000008172	Forbes, George, 1849-1936
0000000017370	Holmes, William Henry, 1846-1933
0000000015622	Brown, William N.
0000000025267	Flammarion, Camille, 1842-1925
0000000026556	Proctor, Richard A. (Richard Anthony), 1837-1888
0000000035261	Todd, David Peck
0000000028752	Serviss, Garrett Putman, 1851-1929
0000000015620	Warren, Henry White, 1831-1912
0000000035588	Darwin, George
0000000004065	Newcomb, Simon, 1835-1909
0000000029031	Holden, Edward Singleton, 1846-1914
0000000034435	Tischner, August, 1819-
0000000024236	Ball, Robert S. (Robert Stawell), Sir, 1840-1913
0000000016227	Everett, Edward, 1794-1865
0000000018431	Serviss, Garrett Putman, 1851-1929
0000000016767	Proctor, Richard A. (Richard Anthony), 1837-1888
0000000030607	Pridden, W. (William), 1810-
0000000008106	Cook, James, 1728-1779
0000000012668	Collins, David, 1754-1810
0000000015675	Dampier, William, 1652-1715
0000000017450	Heeres, J. E. (Jan Ernst), 1858-1932
0000000002660	Pinkerton, John, 1758-1826
0000000007450	Scott, Ernest, 1867-1939
0000000010840	Favenc, Ernest, 1845-1908
0000000007163	Favenc, Ernest, 1845-1908
0000000015662	Hunter, John, 1738-1821
0000000010461	Gregory, Augustus Charles, 1819-1905
0000000010461	Gregory, Francis Thomas, 1821-1888
0000000016027	Grey, George, 1812-1898
0000000016145	Grey, George, 1812-1898
0000000004521	Jardine, Frank, 1841-1919
0000000011203	King, Phillip Parker, 1793?-1856
0000000012046	King, Phillip Parker, 1793?-1856
0000000013248	McKinlay, John
0000000009943	Mitchell, Thomas, 1792-1855
0000000012928	Mitchell, Thomas, 1792-1855
0000000013033	Mitchell, Thomas, 1792-1855
0000000008911	Stuart, John McDouall, 1815-1866
0000000005816	Wills, William John, 1834-1861
0000000012146	Stokes, John Lort, 1812-1885
0000000012929	Flinders, Matthew, 1774-1814
0000000034172	Allies, T. W. (Thomas William), 1813-1903
0000000015100	Phillip, Arthur, 1738-1814
0000000004054	Clacy, Ellen
0000000003546	Carboni, Raffaello, 1817-1885
0000000016050	Thomes, William Henry, 1824-1895
0000000008730	Bruce, Mary Grant, 1878-1958
0000000000304	Paterson, A. B. (Andrew Barton), 1864-1941
0000000000307	Paterson, A. B. (Andrew Barton), 1864-1941
0000000005113	Banfield, E. J. (Edmund James), 1852-1923
0000000019274	Shoghi, Effendi, 1897-1957
0000000027099	Corfield, W. H. (William Henry), 1843-1903
0000000025527	Australia. Dept. of External Affairs
0000000024994	Australia. Dept. of External Affairs
0000000004699	Gunn, Jeannie, 1870-1961
0000000016664	Twopeny, Richard Ernest Nowell, 1857-1915
0000000004221	Boldrewood, Rolf, 1826-1915
0000000025750	Scott, G. Firth
0000000003703	Pedley, Ethel C., 1860?-1898
0000000018891	Pedley, Ethel C., 1860?-1898
0000000021464	Kingston, William Henry Giles, 1814-1880
0000000026034	Baldwin, Gerald
0000000025059	Becke, Louis, 1855-1913
0000000023995	Knox, Thomas Wallace, 1835-1896
0000000022849	West, John, 1809-1873
0000000004731	Turner, Ethel Sybil, 1872-1958
0000000021383	Kingston, William Henry Giles, 1814-1880
0000000019172	Morrison, George Ernest, 1862-1920
0000000003832	Richardson, Henry Handel, 1870-1946
0000000011620	Franklin, Miles, 1879-1954
0000000003424	Clarke, Marcus Andrew Hislop, 1846-1881
0000000024639	Becke, Louis, 1855-1913
0000000024807	Becke, Louis, 1855-1913
0000000027977	Morris, Edward Ellis, 1843-1901
0000000036826	Beaumarchais, Pierre Augustin Caron de, 1732-1799
0000000023615	Various
0000000012565	Collins, David, 1754-1810
0000000015602	Wentworth, William Charles, 1790-1872
0000000005346	Eyre, Edward John, 1815-1901
0000000005005	Leichhardt, Ludwig, 1813-1848
0000000012115	Stokes, John Lort, 1812-1885
0000000007509	Lee, Ida, 1865-1943
0000000001198	Boldrewood, Rolf, 1826-1915
0000000003833	Parker, K. Langloh (Katie Langloh), 1856-1940
0000000003819	Parker, K. Langloh (Katie Langloh), 1856-1940
0000000004050	Bruce, Mary Grant, 1878-1958
0000000021518	Dennis, C. J. (Clarence James), 1876-1938
0000000004830	Motley, John Lothrop, 1814-1877
0000000000214	Lawson, Henry, 1867-1922
0000000001036	Lawson, Henry, 1867-1922
0000000004975	Carnegie, David Wynford, 1871-1900
0000000010842	Kitson, Arthur
0000000015896	Beeston, Joseph Lievesley, 1859-1921
0000000016588	Cuttriss, G. P.
0000000023050	Kingston, William Henry Giles, 1814-1880
0000000016940	Bahá'u'lláh, 1817-1892
0000000016939	Bahá'u'lláh, 1817-1892
0000000016984	Bahá'u'lláh, 1817-1892
0000000019289	`Abdu'l-Bahá, 1844-1921
0000000019284	`Abdu'l-Bahá, 1844-1921
0000000019238	`Abdu'l-Bahá, 1844-1921
0000000019279	`Abdu'l-Bahá, 1844-1921
0000000019312	`Abdu'l-Bahá, 1844-1921
0000000019296	`Abdu'l-Bahá, 1844-1921
0000000007114	Maupassant, Guy de, 1850-1893
0000000023625	Lindsay, Norman, 1879-1969
0000000016891	Goodrich, Samuel G. (Samuel Griswold), 1793-1860
0000000004219	Muskett, Philip E., -1909
0000000016983	Bahá'u'lláh, 1817-1892
0000000019240	Bahá'u'lláh, 1817-1892
0000000019240	`Abdu'l-Bahá, 1844-1921
0000000019240	Bab, `Ali Muhammad Shirazi, 1819-1850
0000000019292	`Abdu'l-Bahá, 1844-1921
0000000019300	`Abdu'l-Bahá, 1844-1921
0000000019243	Shoghi, Effendi, 1897-1957
0000000019254	Shoghi, Effendi, 1897-1957
0000000002562	Aristophanes, 446? BC-385? BC
0000000003160	Homer, 750? BC-650? BC
0000000004094	Legge, James, 1815-1897
0000000003100	Legge, James, 1815-1897
0000000003330	Confucius, 551 BC-479 BC
0000000009371	Erasmus, Desiderius, 1469-1536
0000000027315	Aristophanes, 446? BC-385? BC
0000000001666	Apuleius, Lucius, 125?-180
0000000021262	Marlowe, Christopher, 1564-1593
0000000017814	Aristophanes, 446? BC-385? BC
0000000000392	Tasso, Torquato, 1544-1595
0000000001000	Dante Alighieri, 1265-1321
0000000027846	Erasmus, Desiderius, 1469-1536
0000000003600	Montaigne, Michel de, 1533-1592
0000000001012	Dante Alighieri, 1265-1321
0000000005500	Bacon, Francis, 1561-1626
0000000002250	Shakespeare, William, 1564-1616
0000000001515	Shakespeare, William, 1564-1616
0000000002266	Shakespeare, William, 1564-1616
0000000023306	Descartes, René, 1596-1650
0000000018269	Pascal, Blaise, 1623-1662
0000000017941	La Fontaine, Jean de, 1621-1695
0000000010615	Locke, John, 1632-1704
0000000010616	Locke, John, 1632-1704
0000000030344	Defoe, Daniel, 1661?-1731
0000000033733	Camp, Wadsworth, 1879-1936
0000000000608	Milton, John, 1608-1674
0000000004737	Swift, Jonathan, 1667-1745
0000000011248	Swedenborg, Emanuel, 1688-1772
0000000030268	Montesquieu, Charles de Secondat, baron de, 1689-1755
0000000018569	Voltaire, 1694-1778
0000000006828	Fielding, Henry, 1707-1754
0000000005427	Rousseau, Jean-Jacques, 1712-1778
0000000030433	Rousseau, Jean-Jacques, 1712-1778
0000000000804	Sterne, Laurence, 1713-1768
0000000000601	Lewis, M. G. (Matthew Gregory), 1775-1818
0000000006593	Fielding, Henry, 1707-1754
0000000020577	Beaumarchais, Pierre Augustin Caron de, 1732-1799
0000000025717	Gibbon, Edward, 1737-1794
0000000003743	Paine, Thomas, 1737-1809
0000000004797	Shelley, Percy Bysshe, 1792-1822
0000000016896	Staël, Madame de (Anne-Louise-Germaine), 1766-1817
0000000029549	Hugo, Victor, 1802-1885
0000000004799	Shelley, Percy Bysshe, 1792-1822
0000000009976	Hugo, Victor, 1802-1885
0000000000798	Stendhal, 1783-1842
0000000027942	Mill, John Stuart, 1806-1873
0000000023297	D'Annunzio, Gabriele, 1863-1938
0000000022642	D'Annunzio, Gabriele, 1863-1938
0000000027825	D'Annunzio, Gabriele, 1863-1938
0000000008899	Glyn, Elinor, 1864-1943
0000000004708	Louÿs, Pierre, 1870-1925
0000000026685	Louÿs, Pierre, 1870-1925
0000000030719	Aristophanes, 446? BC-385? BC
0000000005946	Cervantes Saavedra, Miguel de, 1547-1616
0000000005267	Dreiser, Theodore, 1871-1945
0000000031824	Dreiser, Theodore, 1871-1945
0000000026884	La Motte, Ellen Newbold, 1873-1961
0000000002814	Joyce, James, 1882-1941
0000000033797	MacKenzie, Compton, 1883-1972
0000000033798	MacKenzie, Compton, 1883-1972
0000000000140	Sinclair, Upton, 1878-1968
0000000028948	Lawrence, D. H. (David Herbert), 1885-1930
0000000004240	Lawrence, D. H. (David Herbert), 1885-1930
0000000000217	Lawrence, D. H. (David Herbert), 1885-1930
0000000029772	Pascal, Blaise, 1623-1662
0000000029772	Condorcet, Jean-Antoine-Nicolas de Caritat, marquis de, 1743-1794
0000000029772	Voltaire, 1694-1778
0000000029772	Neufchateau, François de
0000000031053	Defoe, Daniel, 1661?-1731
0000000027573	Montesquieu, Charles de Secondat, baron de, 1689-1755
0000000022048	Hugo, Victor, 1802-1885
0000000025344	Hawthorne, Nathaniel, 1804-1864
0000000030107	Mill, John Stuart, 1806-1873
0000000020580	Hugo, Victor, 1802-1885
0000000012784	Swift, Jonathan, 1667-1745
0000000025053	Flaubert, Gustave, 1821-1880
0000000028885	Carroll, Lewis, 1832-1898
0000000000074	Twain, Mark, 1835-1911
0000000006099	Baudelaire, Charles, 1821-1867
0000000002413	Flaubert, Gustave, 1821-1880
0000000026710	Baudelaire, Charles, 1821-1867
0000000000061	Marx, Karl, 1818-1883
0000000000061	Engels, Friedrich, 1820-1895
0000000015995	Flaubert, Gustave, 1821-1880
0000000027401	Swinburne, Algernon Charles, 1837-1909
0000000000110	Hardy, Thomas, 1840-1928
0000000000153	Hardy, Thomas, 1840-1928
0000000008563	Zola, Émile, 1840-1902
0000000020974	Zola, Émile, 1840-1902
0000000018545	France, Anatole, 1844-1924
0000000004788	Maupassant, Guy de, 1850-1893
0000000000160	Chopin, Kate, 1850-1904
0000000037298	Mackinlay, M. (Malcolm) Sterling, 1876-1952
0000000000047	Montgomery, L. M. (Lucy Maud), 1874-1942
0000000000808	Gilbert, W. S. (William Schwenck), Sir, 1836-1911
0000000000808	Sullivan, Arthur, Sir, 1842-1900
0000000007508	Moore, George (George Augustus), 1852-1933
0000000005722	Shaw, Bernard, 1856-1950
0000000023917	Wilde, Oscar, 1854-1900
0000000029208	Wilde, Oscar, 1854-1900
0000000000996	Cervantes Saavedra, Miguel de, 1547-1616
0000000001661	Doyle, Arthur Conan, Sir, 1859-1930
0000000000113	Burnett, Frances Hodgson, 1849-1924
0000000013610	Ellis, Havelock, 1859-1939
0000000013611	Ellis, Havelock, 1859-1939
0000000031732	Dennett, Mary
0000000023700	Boccaccio, Giovanni, 1313-1375
0000000019591	Boccaccio, Giovanni, 1313-1375
0000000002021	Conrad, Joseph, 1857-1924
0000000008800	Dante Alighieri, 1265-1321
0000000001400	Dickens, Charles, 1812-1870
0000000028054	Dostoyevsky, Fyodor, 1821-1881
0000000011000	Anonymous
0000000000145	Eliot, George, 1819-1880
0000000001237	Balzac, Honoré de, 1799-1850
0000000008387	Hamsun, Knut, 1859-1952
0000000015492	Ibsen, Henrik, 1828-1906
0000000004300	Joyce, James, 1882-1941
0000000016659	Kalidasa
0000000021765	Ovid, 43 BC-18?
0000000025667	Shakespeare, William, 1564-1616
0000000001531	Shakespeare, William, 1564-1616
0000000012406	Bryant, Walter W. (Walter William)
0000000007849	Kafka, Franz, 1883-1924
0000000003435	Anonymous
0000000003436	Anonymous
0000000000076	Twain, Mark, 1835-1911
0000000001322	Whitman, Walt, 1819-1892
0000000033281	Various
0000000003420	Wollstonecraft, Mary, 1759-1797
0000000002270	Shakespeare, William, 1564-1616
0000000001906	Butler, Samuel, 1835-1902
0000000000062	Burroughs, Edgar Rice, 1875-1950
0000000001951	Lytton, Edward Bulwer Lytton, Baron, 1803-1873
0000000000228	Virgil, 70 BC-19 BC
0000000001081	Gogol, Nikolai Vasilievich, 1809-1852
0000000001200	Rabelais, François, 1483-1553
0000000003748	Verne, Jules, 1828-1905
0000000014851	Le Fanu, Joseph Sheridan, 1814-1873
0000000000652	Johnson, Samuel, 1709-1784
0000000000271	Sewell, Anna, 1820-1878
0000000000209	James, Henry, 1843-1916
0000000017831	Zola, Émile, 1840-1902
0000000000103	Verne, Jules, 1828-1905
0000000001695	Chesterton, G. K. (Gilbert Keith), 1874-1936
0000000000796	Stendhal, 1783-1842
0000000014645	Grant, Robert, 1852-1940
0000000003791	Allen, James Lane, 1849-1925
0000000005719	Ford, Paul Leicester, 1865-1902
0000000005373	Churchill, Winston, 1871-1947
0000000004097	Thompson, Maurice, 1844-1901
0000000000031	Sophocles, 495? BC-406 BC
0000000005388	Churchill, Winston, 1871-1947
0000000014219	Runkle, Bertha, 1879-1958
0000000006249	Parker, Gilbert, 1862-1932
0000000006245	Parker, Gilbert, 1862-1932
0000000010959	Glyn, Elinor, 1864-1943
0000000012440	Bacheller, Irving, 1859-1950
0000000004377	Rice, Alice Caldwell Hegan, 1870-1942
0000000014513	Johnston, Mary, 1870-1936
0000000002852	Doyle, Arthur Conan, Sir, 1859-1930
0000000003070	Doyle, Arthur Conan, Sir, 1859-1930
0000000003428	Tarkington, Booth, 1869-1946
0000000001603	Van Dyke, Henry, 1852-1933
0000000023784	Malet, Lucas, 1852-1931
0000000013782	Ward, Humphry, Mrs., 1851-1920
0000000012482	Allen, James Lane, 1849-1925
0000000020589	Ewers, Hanns Heinz, 1871-1943
0000000000481	Michelson, Miriam, 1870-1942
0000000013812	Johnston, Mary, 1870-1936
0000000006801	McCutcheon, George Barr, 1866-1928
0000000014126	Ward, Humphry, Mrs., 1851-1920
0000000014079	Rice, Alice Caldwell Hegan, 1870-1942
0000000003637	Hichens, Robert Smythe, 1864-1950
0000000013967	McCutcheon, George Barr, 1866-1928
0000000033490	Thurston, Katherine Cecil, 1875-1911
0000000014740	Williamson, A. M. (Alice Muriel), 1869-1933
0000000014740	Williamson, C. N. (Charles Norris), 1859-1920
0000000003766	Churchill, Winston, 1871-1947
0000000012441	Nicholson, Meredith, 1866-1947
0000000005971	McCutcheon, George Barr, 1866-1928
0000000006315	Deland, Margaret Wade Campbell, 1857-1945
0000000007523	Little, Frances, 1863-1941
0000000013913	Nicholson, Meredith, 1866-1947
0000000000506	Burnett, Frances Hodgson, 1849-1924
0000000008741	Vance, Louis Joseph, 1879-1933
0000000014818	McCutcheon, George Barr, 1866-1928
0000000014852	Chambers, Robert W. (Robert William), 1865-1933
0000000003242	Connor, Ralph, 1860-1937
0000000004790	MacGrath, Harold, 1871-1932
0000000003684	Churchill, Winston, 1871-1947
0000000005122	Fox, John, 1863-1919
0000000004516	Smith, Francis Hopkinson, 1838-1915
0000000009779	Vance, Louis Joseph, 1879-1933
0000000014263	Lane, Elinor Macartney, 1864-1909
0000000014284	McCutcheon, George Barr, 1866-1928
0000000014355	Hough, Emerson, 1857-1923
0000000014395	Locke, William John, 1863-1930
0000000014054	Thurston, Katherine Cecil, 1875-1911
0000000001671	Rinehart, Mary Roberts, 1876-1958
0000000005129	Kester, Vaughan, 1869-1911
0000000006997	Wright, Harold Bell, 1872-1944
0000000014303	Harrison, Henry Sydnor, 1880-1930
0000000013813	Chambers, Robert W. (Robert William), 1865-1933
0000000014394	King, Basil, 1859-1928
0000000030115	Sedgwick, Anne Douglas, 1873-1935
0000000026163	Bergson, Henri, 1859-1941
0000000001440	Schreiner, Olive, 1855-1920
0000000013985	Harrison, Henry Sydnor, 1880-1930
0000000005145	Fox, John, 1863-1919
0000000009879	Farnol, Jeffery, 1878-1952
0000000014597	Caine, Hall, Sir, 1853-1931
0000000002514	Burnett, Frances Hodgson, 1849-1924
0000000015759	Lee, Gerald Stanley, 1862-1944
0000000014811	Wilson, Woodrow, 1856-1924
0000000011715	Wright, Harold Bell, 1872-1944
0000000004379	Locke, William John, 1863-1930
0000000000402	Tarkington, Booth, 1869-1946
0000000006353	McCutcheon, George Barr, 1866-1928
0000000001098	Tarkington, Booth, 1869-1946
0000000009489	Stratton-Porter, Gene, 1863-1924
0000000009931	Rinehart, Mary Roberts, 1876-1958
0000000014669	Locke, William John, 1863-1930
0000000005229	Smith, Francis Hopkinson, 1838-1915
0000000029932	Poole, Ernest, 1880-1950
0000000001027	Grey, Zane, 1872-1939
0000000001611	Tarkington, Booth, 1869-1946
0000000014060	Wells, H. G. (Herbert George), 1866-1946
0000000014571	Glasgow, Ellen Anderson Gholson, 1873-1945
0000000029571	Spearman, Frank H. (Frank Hamilton), 1859-1937
0000000014150	Bacheller, Irving, 1859-1950
0000000004287	Locke, William John, 1863-1930
0000000004603	Hichens, Robert Smythe, 1864-1950
0000000013883	Sinclair, May, 1863-1946
0000000001590	Rinehart, Mary Roberts, 1876-1958
0000000013993	Streeter, Edward, 1891-1976
0000000013497	Dell, Ethel M. (Ethel May), 1881-1939
0000000003249	Connor, Ralph, 1860-1937
0000000009836	Oppenheim, E. Phillips (Edward Phillips), 1866-1946
0000000020072	Appleton, Everard Jack, 1872-1931
0000000012418	Curtin, D. Thomas
0000000003194	Twain, Mark, 1835-1911
0000000003195	Twain, Mark, 1835-1911
0000000003197	Twain, Mark, 1835-1911
0000000000405	Davis, Richard Harding, 1864-1916
0000000016685	Peat, Harold Reginald, 1893-1960
0000000010201	Grey, Zane, 1872-1939
0000000003288	Connor, Ralph, 1860-1937
0000000003265	Wright, Harold Bell, 1872-1944
0000000018056	Bailey, Temple, -1953
0000000014646	Arnim, Elizabeth von, 1866-1941
0000000002044	Adams, Henry, 1838-1918
0000000017237	Bacheller, Irving, 1859-1950
0000000005815	Oppenheim, E. Phillips (Edward Phillips), 1866-1946
0000000013763	Dell, Ethel M. (Ethel May), 1881-1939
0000000006467	Roosevelt, Theodore, 1858-1919
0000000002386	Thayer, William Roscoe, 1859-1923
0000000003317	Gibbs, Philip, 1877-1962
0000000014885	Cholmondeley, Mary, 1859-1925
0000000002799	Bacheller, Irving, 1859-1950
0000000007031	Hull, E. M. (Edith Maude), -1947
0000000001970	Rinehart, Mary Roberts, 1876-1958
0000000025702	Dawson, Coningsby, 1883-1959
0000000014145	Hutchinson, A. S. M. (Arthur Stuart-Menteth), 1879-1971
0000000006491	Burnett, Frances Hodgson, 1849-1924
0000000014579	Keable, Robert, 1887-1927
0000000032527	Florian, 1755-1794
0000000001601	Rinehart, Mary Roberts, 1876-1958
0000000001265	Strachey, Lytton, 1880-1932
0000000003812	Gilbert, Clinton W. (Clinton Wallace), 1871-1933
0000000014996	Begbie, Harold, 1871-1929
0000000017018	Hendrick, Burton Jesse, 1870-1949
0000000027203	Coué, Emile, 1857-1926
0000000017498	Major, Charles, 1856-1913
0000000014001	Hough, Emerson, 1857-1923
0000000005970	Rice, Alice Caldwell Hegan, 1870-1942
0000000021959	Lorimer, George Horace, 1869-1937
0000000014696	Glasgow, Ellen Anderson Gholson, 1873-1945
0000000003828	Locke, William John, 1863-1930
0000000018665	Abbott, Eleanor Hallowell, 1872-1958
0000000004786	Franck, Harry Alverson, 1881-1962
0000000034297	Harrison, Henry Sydnor, 1880-1930
0000000010509	Dell, Ethel M. (Ethel May), 1881-1939
0000000005394	Churchill, Winston, 1871-1947
0000000003193	Twain, Mark, 1835-1911
0000000001693	Rinehart, Mary Roberts, 1876-1958
0000000019415	Clark, John Willis, 1833-1910
0000000001961	Lang, Andrew, 1844-1912
0000000016350	Disraeli, Isaac, 1766-1848
0000000031078	Disraeli, Isaac, 1766-1848
0000000030396	Anonymous
0000000022716	Allan, P. B. M. (Philip Bertram Murray), 1884-1973
0000000000541	Wharton, Edith, 1862-1937
0000000004684	Grey, Zane, 1872-1939
0000000022136	Burton, John Hill, 1809-1881
0000000022606	Koopman, Harry Lyman, 1860-1937
0000000022607	Roberts, W. (William), 1862-1940
0000000022608	Spofford, Ainsworth Rand, 1825-1908
0000000026378	Clark, John Willis, 1833-1910
0000000015199	Dury, John, 1596-1680
0000000020416	Warner, William
0000000020416	Worrall, John, -1771
0000000017192	Poe, Edgar Allan, 1809-1849
0000000004667	Abbott, L. A., 1813-
0000000014004	Browne, Francis F. (Francis Fisher), 1843-1913
0000000000813	Tolstoi, Ilia Lvovich, Graf, 1866-1933
0000000012090	Cibber, Theophilus, 1703-1758
0000000006312	Emerson, Ralph Waldo, 1803-1882
0000000003725	Poland, Addison B.
0000000003725	Haaren, John H. (John Henry), 1855-1916
0000000002082	Lamothe-Langon, Etienne-Léon, baron de, 1786-1864
0000000004693	Orr, Lyndon
0000000004691	Orr, Lyndon
0000000019767	Shorter, Clement King, 1857-1926
0000000014555	Grimké, Archibald Henry, 1849-1930
0000000018757	Beazley, C. Raymond (Charles Raymond), 1868-1955
0000000006702	Stowe, Harriet Beecher, 1811-1896
0000000002447	Strachey, Lytton, 1880-1932
0000000012985	Thompson, Slason, 1849-1935
0000000016494	Fitzpatrick, Percy, Sir, 1862-1931
0000000025117	Burne, C. R. N. (Charles Richard Newdigate)
0000000012427	Campbell, Robert Granville
0000000026198	Creswicke, Louis
0000000018794	De Wet, Christiaan Rudolf, 1854-1922
0000000003069	Doyle, Arthur Conan, Sir, 1859-1930
0000000024951	Doyle, Arthur Conan, Sir, 1859-1930
0000000021302	Fenn, George Manville, 1831-1909
0000000013855	Grosclaude, Etienne, 1858-1932
0000000017968	Guyot, Yves, 1843-1928
0000000016131	Hales, A. G. (Alfred Greenwood), 1870-1936
0000000032934	Henty, G. A. (George Alfred), 1832-1902
\.


--
-- Data for Name: dificultad; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY dificultad (id_dificultad, descripcion) FROM stdin;
0	Sin asignar
1	Beginners Only
2	Easy
3	Average
4	Hard
\.


--
-- Data for Name: proyecto; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY proyecto (isbn, fecha, n_paginas, id_fase, coordinador, id_dificultad, n_paginaspf, n_paginassf, n_paginastf) FROM stdin;
0000000022564	2007-09-10	74	PF	309	4	74	56	0
0000000019009	2006-08-08	49	PF	113	4	49	17	0
0000000019312	2006-09-20	59	PF	314	4	59	38	0
0000000026710	2008-09-27	32	TF	47	1	32	32	32
0000000002021	2006-01-09	52	TF	199	2	52	52	52
0000000002270	2000-07-01	28	F0	175	0	4	0	0
0000000014284	2004-12-07	76	PF	113	0	76	13	0
0000000003265	2006-06-03	72	TF	296	0	72	72	72
0000000000813	1997-02-01	56	PF	165	2	56	1	0
0000000026198	2008-08-06	29	TF	287	0	29	29	29
0000000023297	2007-11-03	63	TF	112	2	63	63	63
0000000021472	2007-05-15	29	SF	240	4	29	29	21
0000000017487	2006-01-10	75	SF	351	4	75	75	38
0000000020852	2007-03-20	48	SF	376	4	48	48	13
0000000014056	2004-11-15	39	SF	296	2	39	39	21
0000000002562	2001-03-01	31	SF	376	2	31	31	3
0000000000103	1994-01-01	68	SF	380	0	68	68	11
0000000014579	2005-01-03	20	SF	251	3	20	20	4
0000000000541	1996-05-01	32	SF	370	2	32	32	30
0000000016531	2005-08-15	79	F0	251	1	61	0	0
0000000012784	2004-06-29	38	FI	383	0	38	38	38
0000000001531	1998-11-01	34	FI	148	3	34	34	34
\.


--
-- Data for Name: pagina; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY pagina (isbn, n_pagina, id_fase) FROM stdin;
0000000021472	1	TF
0000000021472	2	TF
0000000021472	3	TF
0000000021472	4	TF
0000000021472	5	TF
0000000021472	6	TF
0000000021472	7	TF
0000000021472	8	TF
0000000021472	9	TF
0000000021472	10	TF
0000000021472	11	TF
0000000021472	12	TF
0000000021472	13	TF
0000000021472	14	TF
0000000021472	15	TF
0000000021472	16	TF
0000000021472	17	TF
0000000021472	18	TF
0000000021472	19	TF
0000000021472	20	TF
0000000021472	21	TF
0000000021472	22	SF
0000000021472	23	SF
0000000021472	24	SF
0000000021472	25	SF
0000000021472	26	SF
0000000021472	27	SF
0000000021472	28	SF
0000000021472	29	SF
0000000017487	1	TF
0000000017487	2	TF
0000000017487	3	TF
0000000017487	4	TF
0000000017487	5	TF
0000000017487	6	TF
0000000017487	7	TF
0000000017487	8	TF
0000000017487	9	TF
0000000017487	10	TF
0000000017487	11	TF
0000000017487	12	TF
0000000017487	13	TF
0000000017487	14	TF
0000000017487	15	TF
0000000017487	16	TF
0000000017487	17	TF
0000000017487	18	TF
0000000017487	19	TF
0000000017487	20	TF
0000000017487	21	TF
0000000017487	22	TF
0000000017487	23	TF
0000000017487	24	TF
0000000017487	25	TF
0000000017487	26	TF
0000000017487	27	TF
0000000017487	28	TF
0000000017487	29	TF
0000000017487	30	TF
0000000017487	31	TF
0000000017487	32	TF
0000000017487	33	TF
0000000017487	34	TF
0000000017487	35	TF
0000000017487	36	TF
0000000017487	37	TF
0000000017487	38	TF
0000000017487	39	SF
0000000017487	40	SF
0000000017487	41	SF
0000000017487	42	SF
0000000017487	43	SF
0000000017487	44	SF
0000000017487	45	SF
0000000017487	46	SF
0000000017487	47	SF
0000000017487	48	SF
0000000017487	49	SF
0000000017487	50	SF
0000000017487	51	SF
0000000017487	52	SF
0000000017487	53	SF
0000000017487	54	SF
0000000017487	55	SF
0000000017487	56	SF
0000000017487	57	SF
0000000017487	58	SF
0000000017487	59	SF
0000000017487	60	SF
0000000017487	61	SF
0000000017487	62	SF
0000000017487	63	SF
0000000017487	64	SF
0000000017487	65	SF
0000000017487	66	SF
0000000017487	67	SF
0000000017487	68	SF
0000000017487	69	SF
0000000017487	70	SF
0000000017487	71	SF
0000000017487	72	SF
0000000017487	73	SF
0000000017487	74	SF
0000000017487	75	SF
0000000016531	1	PF
0000000016531	2	PF
0000000016531	3	PF
0000000016531	4	PF
0000000016531	5	PF
0000000016531	6	PF
0000000016531	7	PF
0000000016531	8	PF
0000000016531	9	PF
0000000016531	10	PF
0000000016531	11	PF
0000000016531	12	PF
0000000016531	13	PF
0000000016531	14	PF
0000000016531	15	PF
0000000016531	16	PF
0000000016531	17	PF
0000000016531	18	PF
0000000016531	19	PF
0000000016531	20	PF
0000000016531	21	PF
0000000016531	22	PF
0000000016531	23	PF
0000000016531	24	PF
0000000016531	25	PF
0000000016531	26	PF
0000000016531	27	PF
0000000016531	28	PF
0000000016531	29	PF
0000000016531	30	PF
0000000016531	31	PF
0000000016531	32	PF
0000000016531	33	PF
0000000016531	34	PF
0000000016531	35	PF
0000000016531	36	PF
0000000016531	37	PF
0000000016531	38	PF
0000000016531	39	PF
0000000016531	40	PF
0000000016531	41	PF
0000000016531	42	PF
0000000016531	43	PF
0000000016531	44	PF
0000000016531	45	PF
0000000016531	46	PF
0000000016531	47	PF
0000000016531	48	PF
0000000016531	49	PF
0000000016531	50	PF
0000000016531	51	PF
0000000016531	52	PF
0000000016531	53	PF
0000000016531	54	PF
0000000016531	55	PF
0000000016531	56	PF
0000000016531	57	PF
0000000016531	58	PF
0000000016531	59	PF
0000000016531	60	PF
0000000016531	61	PF
0000000016531	62	F0
0000000016531	63	F0
0000000016531	64	F0
0000000016531	65	F0
0000000016531	66	F0
0000000016531	67	F0
0000000016531	68	F0
0000000016531	69	F0
0000000016531	70	F0
0000000016531	71	F0
0000000016531	72	F0
0000000016531	73	F0
0000000016531	74	F0
0000000016531	75	F0
0000000016531	76	F0
0000000016531	77	F0
0000000016531	78	F0
0000000016531	79	F0
0000000020852	1	TF
0000000020852	2	TF
0000000020852	3	TF
0000000020852	4	TF
0000000020852	5	TF
0000000020852	6	TF
0000000020852	7	TF
0000000020852	8	TF
0000000020852	9	TF
0000000020852	10	TF
0000000020852	11	TF
0000000020852	12	TF
0000000020852	13	TF
0000000020852	14	SF
0000000020852	15	SF
0000000020852	16	SF
0000000020852	17	SF
0000000020852	18	SF
0000000020852	19	SF
0000000020852	20	SF
0000000020852	21	SF
0000000020852	22	SF
0000000020852	23	SF
0000000020852	24	SF
0000000020852	25	SF
0000000020852	26	SF
0000000020852	27	SF
0000000020852	28	SF
0000000020852	29	SF
0000000020852	30	SF
0000000020852	31	SF
0000000020852	32	SF
0000000020852	33	SF
0000000020852	34	SF
0000000020852	35	SF
0000000020852	36	SF
0000000020852	37	SF
0000000020852	38	SF
0000000020852	39	SF
0000000020852	40	SF
0000000020852	41	SF
0000000020852	42	SF
0000000020852	43	SF
0000000020852	44	SF
0000000020852	45	SF
0000000020852	46	SF
0000000020852	47	SF
0000000020852	48	SF
0000000022564	1	SF
0000000022564	2	SF
0000000022564	3	SF
0000000022564	4	SF
0000000022564	5	SF
0000000022564	6	SF
0000000022564	7	SF
0000000022564	8	SF
0000000022564	9	SF
0000000022564	10	SF
0000000022564	11	SF
0000000022564	12	SF
0000000022564	13	SF
0000000022564	14	SF
0000000022564	15	SF
0000000022564	16	SF
0000000022564	17	SF
0000000022564	18	SF
0000000022564	19	SF
0000000022564	20	SF
0000000022564	21	SF
0000000022564	22	SF
0000000022564	23	SF
0000000022564	24	SF
0000000022564	25	SF
0000000022564	26	SF
0000000022564	27	SF
0000000022564	28	SF
0000000022564	29	SF
0000000022564	30	SF
0000000022564	31	SF
0000000022564	32	SF
0000000022564	33	SF
0000000022564	34	SF
0000000022564	35	SF
0000000022564	36	SF
0000000022564	37	SF
0000000022564	38	SF
0000000022564	39	SF
0000000022564	40	SF
0000000022564	41	SF
0000000022564	42	SF
0000000022564	43	SF
0000000022564	44	SF
0000000022564	45	SF
0000000022564	46	SF
0000000022564	47	SF
0000000022564	48	SF
0000000022564	49	SF
0000000022564	50	SF
0000000022564	51	SF
0000000022564	52	SF
0000000022564	53	SF
0000000022564	54	SF
0000000022564	55	SF
0000000022564	56	SF
0000000022564	57	PF
0000000022564	58	PF
0000000022564	59	PF
0000000022564	60	PF
0000000022564	61	PF
0000000022564	62	PF
0000000022564	63	PF
0000000022564	64	PF
0000000022564	65	PF
0000000022564	66	PF
0000000022564	67	PF
0000000022564	68	PF
0000000022564	69	PF
0000000022564	70	PF
0000000022564	71	PF
0000000022564	72	PF
0000000022564	73	PF
0000000022564	74	PF
0000000014056	1	TF
0000000014056	2	TF
0000000014056	3	TF
0000000014056	4	TF
0000000014056	5	TF
0000000014056	6	TF
0000000014056	7	TF
0000000014056	8	TF
0000000014056	9	TF
0000000014056	10	TF
0000000014056	11	TF
0000000014056	12	TF
0000000014056	13	TF
0000000014056	14	TF
0000000014056	15	TF
0000000014056	16	TF
0000000014056	17	TF
0000000014056	18	TF
0000000014056	19	TF
0000000014056	20	TF
0000000014056	21	TF
0000000014056	22	SF
0000000014056	23	SF
0000000014056	24	SF
0000000014056	25	SF
0000000014056	26	SF
0000000014056	27	SF
0000000014056	28	SF
0000000014056	29	SF
0000000014056	30	SF
0000000014056	31	SF
0000000014056	32	SF
0000000014056	33	SF
0000000014056	34	SF
0000000014056	35	SF
0000000014056	36	SF
0000000014056	37	SF
0000000014056	38	SF
0000000014056	39	SF
0000000019009	1	SF
0000000019009	2	SF
0000000019009	3	SF
0000000019009	4	SF
0000000019009	5	SF
0000000019009	6	SF
0000000019009	7	SF
0000000019009	8	SF
0000000019009	9	SF
0000000019009	10	SF
0000000019009	11	SF
0000000019009	12	SF
0000000019009	13	SF
0000000019009	14	SF
0000000019009	15	SF
0000000019009	16	SF
0000000019009	17	SF
0000000019009	18	PF
0000000019009	19	PF
0000000019009	20	PF
0000000019009	21	PF
0000000019009	22	PF
0000000019009	23	PF
0000000019009	24	PF
0000000019009	25	PF
0000000019009	26	PF
0000000019009	27	PF
0000000019009	28	PF
0000000019009	29	PF
0000000019009	30	PF
0000000019009	31	PF
0000000019009	32	PF
0000000019009	33	PF
0000000019009	34	PF
0000000019009	35	PF
0000000019009	36	PF
0000000019009	37	PF
0000000019009	38	PF
0000000019009	39	PF
0000000019009	40	PF
0000000019009	41	PF
0000000019009	42	PF
0000000019009	43	PF
0000000019009	44	PF
0000000019009	45	PF
0000000019009	46	PF
0000000019009	47	PF
0000000019009	48	PF
0000000019009	49	PF
0000000019312	1	SF
0000000019312	2	SF
0000000019312	3	SF
0000000019312	4	SF
0000000019312	5	SF
0000000019312	6	SF
0000000019312	7	SF
0000000019312	8	SF
0000000019312	9	SF
0000000019312	10	SF
0000000019312	11	SF
0000000019312	12	SF
0000000019312	13	SF
0000000019312	14	SF
0000000019312	15	SF
0000000019312	16	SF
0000000019312	17	SF
0000000019312	18	SF
0000000019312	19	SF
0000000019312	20	SF
0000000019312	21	SF
0000000019312	22	SF
0000000019312	23	SF
0000000019312	24	SF
0000000019312	25	SF
0000000019312	26	SF
0000000019312	27	SF
0000000019312	28	SF
0000000019312	29	SF
0000000019312	30	SF
0000000019312	31	SF
0000000019312	32	SF
0000000019312	33	SF
0000000019312	34	SF
0000000019312	35	SF
0000000019312	36	SF
0000000019312	37	SF
0000000019312	38	SF
0000000019312	39	PF
0000000019312	40	PF
0000000019312	41	PF
0000000019312	42	PF
0000000019312	43	PF
0000000019312	44	PF
0000000019312	45	PF
0000000019312	46	PF
0000000019312	47	PF
0000000019312	48	PF
0000000019312	49	PF
0000000019312	50	PF
0000000019312	51	PF
0000000019312	52	PF
0000000019312	53	PF
0000000019312	54	PF
0000000019312	55	PF
0000000019312	56	PF
0000000019312	57	PF
0000000019312	58	PF
0000000019312	59	PF
0000000002562	1	TF
0000000002562	2	TF
0000000002562	3	TF
0000000002562	4	SF
0000000002562	5	SF
0000000002562	6	SF
0000000002562	7	SF
0000000002562	8	SF
0000000002562	9	SF
0000000002562	10	SF
0000000002562	11	SF
0000000002562	12	SF
0000000002562	13	SF
0000000002562	14	SF
0000000002562	15	SF
0000000002562	16	SF
0000000002562	17	SF
0000000002562	18	SF
0000000002562	19	SF
0000000002562	20	SF
0000000002562	21	SF
0000000002562	22	SF
0000000002562	23	SF
0000000002562	24	SF
0000000002562	25	SF
0000000002562	26	SF
0000000002562	27	SF
0000000002562	28	SF
0000000002562	29	SF
0000000002562	30	SF
0000000002562	31	SF
0000000023297	1	TF
0000000023297	2	TF
0000000023297	3	TF
0000000023297	4	TF
0000000023297	5	TF
0000000023297	6	TF
0000000023297	7	TF
0000000023297	8	TF
0000000023297	9	TF
0000000023297	10	TF
0000000023297	11	TF
0000000023297	12	TF
0000000023297	13	TF
0000000023297	14	TF
0000000023297	15	TF
0000000023297	16	TF
0000000023297	17	TF
0000000023297	18	TF
0000000023297	19	TF
0000000023297	20	TF
0000000023297	21	TF
0000000023297	22	TF
0000000023297	23	TF
0000000023297	24	TF
0000000023297	25	TF
0000000023297	26	TF
0000000023297	27	TF
0000000023297	28	TF
0000000023297	29	TF
0000000023297	30	TF
0000000023297	31	TF
0000000023297	32	TF
0000000023297	33	TF
0000000023297	34	TF
0000000023297	35	TF
0000000023297	36	TF
0000000023297	37	TF
0000000023297	38	TF
0000000023297	39	TF
0000000023297	40	TF
0000000023297	41	TF
0000000023297	42	TF
0000000023297	43	TF
0000000023297	44	TF
0000000023297	45	TF
0000000023297	46	TF
0000000023297	47	TF
0000000023297	48	TF
0000000023297	49	TF
0000000023297	50	TF
0000000023297	51	TF
0000000023297	52	TF
0000000023297	53	TF
0000000023297	54	TF
0000000023297	55	TF
0000000023297	56	TF
0000000023297	57	TF
0000000023297	58	TF
0000000023297	59	TF
0000000023297	60	TF
0000000023297	61	TF
0000000023297	62	TF
0000000023297	63	TF
0000000012784	1	TF
0000000012784	2	TF
0000000012784	3	TF
0000000012784	4	TF
0000000012784	5	TF
0000000012784	6	TF
0000000012784	7	TF
0000000012784	8	TF
0000000012784	9	TF
0000000012784	10	TF
0000000012784	11	TF
0000000012784	12	TF
0000000012784	13	TF
0000000012784	14	TF
0000000012784	15	TF
0000000012784	16	TF
0000000012784	17	TF
0000000012784	18	TF
0000000012784	19	TF
0000000012784	20	TF
0000000012784	21	TF
0000000012784	22	TF
0000000012784	23	TF
0000000012784	24	TF
0000000012784	25	TF
0000000012784	26	TF
0000000012784	27	TF
0000000012784	28	TF
0000000012784	29	TF
0000000012784	30	TF
0000000012784	31	TF
0000000012784	32	TF
0000000012784	33	TF
0000000012784	34	TF
0000000012784	35	TF
0000000012784	36	TF
0000000012784	37	TF
0000000012784	38	TF
0000000026710	1	TF
0000000026710	2	TF
0000000026710	3	TF
0000000026710	4	TF
0000000026710	5	TF
0000000026710	6	TF
0000000026710	7	TF
0000000026710	8	TF
0000000026710	9	TF
0000000026710	10	TF
0000000026710	11	TF
0000000026710	12	TF
0000000026710	13	TF
0000000026710	14	TF
0000000026710	15	TF
0000000026710	16	TF
0000000026710	17	TF
0000000026710	18	TF
0000000026710	19	TF
0000000026710	20	TF
0000000026710	21	TF
0000000026710	22	TF
0000000026710	23	TF
0000000026710	24	TF
0000000026710	25	TF
0000000026710	26	TF
0000000026710	27	TF
0000000026710	28	TF
0000000026710	29	TF
0000000026710	30	TF
0000000026710	31	TF
0000000026710	32	TF
0000000002021	1	TF
0000000002021	2	TF
0000000002021	3	TF
0000000002021	4	TF
0000000002021	5	TF
0000000002021	6	TF
0000000002021	7	TF
0000000002021	8	TF
0000000002021	9	TF
0000000002021	10	TF
0000000002021	11	TF
0000000002021	12	TF
0000000002021	13	TF
0000000002021	14	TF
0000000002021	15	TF
0000000002021	16	TF
0000000002021	17	TF
0000000002021	18	TF
0000000002021	19	TF
0000000002021	20	TF
0000000002021	21	TF
0000000002021	22	TF
0000000002021	23	TF
0000000002021	24	TF
0000000002021	25	TF
0000000002021	26	TF
0000000002021	27	TF
0000000002021	28	TF
0000000002021	29	TF
0000000002021	30	TF
0000000002021	31	TF
0000000002021	32	TF
0000000002021	33	TF
0000000002021	34	TF
0000000002021	35	TF
0000000002021	36	TF
0000000002021	37	TF
0000000002021	38	TF
0000000002021	39	TF
0000000002021	40	TF
0000000002021	41	TF
0000000002021	42	TF
0000000002021	43	TF
0000000002021	44	TF
0000000002021	45	TF
0000000002021	46	TF
0000000002021	47	TF
0000000002021	48	TF
0000000002021	49	TF
0000000002021	50	TF
0000000002021	51	TF
0000000002021	52	TF
0000000001531	1	TF
0000000001531	2	TF
0000000001531	3	TF
0000000001531	4	TF
0000000001531	5	TF
0000000001531	6	TF
0000000001531	7	TF
0000000001531	8	TF
0000000001531	9	TF
0000000001531	10	TF
0000000001531	11	TF
0000000001531	12	TF
0000000001531	13	TF
0000000001531	14	TF
0000000001531	15	TF
0000000001531	16	TF
0000000001531	17	TF
0000000001531	18	TF
0000000001531	19	TF
0000000001531	20	TF
0000000001531	21	TF
0000000001531	22	TF
0000000001531	23	TF
0000000001531	24	TF
0000000001531	25	TF
0000000001531	26	TF
0000000001531	27	TF
0000000001531	28	TF
0000000001531	29	TF
0000000001531	30	TF
0000000001531	31	TF
0000000001531	32	TF
0000000001531	33	TF
0000000001531	34	TF
0000000002270	1	PF
0000000002270	2	PF
0000000002270	3	PF
0000000002270	4	PF
0000000002270	5	F0
0000000002270	6	F0
0000000002270	7	F0
0000000002270	8	F0
0000000002270	9	F0
0000000002270	10	F0
0000000002270	11	F0
0000000002270	12	F0
0000000002270	13	F0
0000000002270	14	F0
0000000002270	15	F0
0000000002270	16	F0
0000000002270	17	F0
0000000002270	18	F0
0000000002270	19	F0
0000000002270	20	F0
0000000002270	21	F0
0000000002270	22	F0
0000000002270	23	F0
0000000002270	24	F0
0000000002270	25	F0
0000000002270	26	F0
0000000002270	27	F0
0000000002270	28	F0
0000000000103	1	TF
0000000000103	2	TF
0000000000103	3	TF
0000000000103	4	TF
0000000000103	5	TF
0000000000103	6	TF
0000000000103	7	TF
0000000000103	8	TF
0000000000103	9	TF
0000000000103	10	TF
0000000000103	11	TF
0000000000103	12	SF
0000000000103	13	SF
0000000000103	14	SF
0000000000103	15	SF
0000000000103	16	SF
0000000000103	17	SF
0000000000103	18	SF
0000000000103	19	SF
0000000000103	20	SF
0000000000103	21	SF
0000000000103	22	SF
0000000000103	23	SF
0000000000103	24	SF
0000000000103	25	SF
0000000000103	26	SF
0000000000103	27	SF
0000000000103	28	SF
0000000000103	29	SF
0000000000103	30	SF
0000000000103	31	SF
0000000000103	32	SF
0000000000103	33	SF
0000000000103	34	SF
0000000000103	35	SF
0000000000103	36	SF
0000000000103	37	SF
0000000000103	38	SF
0000000000103	39	SF
0000000000103	40	SF
0000000000103	41	SF
0000000000103	42	SF
0000000000103	43	SF
0000000000103	44	SF
0000000000103	45	SF
0000000000103	46	SF
0000000000103	47	SF
0000000000103	48	SF
0000000000103	49	SF
0000000000103	50	SF
0000000000103	51	SF
0000000000103	52	SF
0000000000103	53	SF
0000000000103	54	SF
0000000000103	55	SF
0000000000103	56	SF
0000000000103	57	SF
0000000000103	58	SF
0000000000103	59	SF
0000000000103	60	SF
0000000000103	61	SF
0000000000103	62	SF
0000000000103	63	SF
0000000000103	64	SF
0000000000103	65	SF
0000000000103	66	SF
0000000000103	67	SF
0000000000103	68	SF
0000000014284	1	SF
0000000014284	2	SF
0000000014284	3	SF
0000000014284	4	SF
0000000014284	5	SF
0000000014284	6	SF
0000000014284	7	SF
0000000014284	8	SF
0000000014284	9	SF
0000000014284	10	SF
0000000014284	11	SF
0000000014284	12	SF
0000000014284	13	SF
0000000014284	14	PF
0000000014284	15	PF
0000000014284	16	PF
0000000014284	17	PF
0000000014284	18	PF
0000000014284	19	PF
0000000014284	20	PF
0000000014284	21	PF
0000000014284	22	PF
0000000014284	23	PF
0000000014284	24	PF
0000000014284	25	PF
0000000014284	26	PF
0000000014284	27	PF
0000000014284	28	PF
0000000014284	29	PF
0000000014284	30	PF
0000000014284	31	PF
0000000014284	32	PF
0000000014284	33	PF
0000000014284	34	PF
0000000014284	35	PF
0000000014284	36	PF
0000000014284	37	PF
0000000014284	38	PF
0000000014284	39	PF
0000000014284	40	PF
0000000014284	41	PF
0000000014284	42	PF
0000000014284	43	PF
0000000014284	44	PF
0000000014284	45	PF
0000000014284	46	PF
0000000014284	47	PF
0000000014284	48	PF
0000000014284	49	PF
0000000014284	50	PF
0000000014284	51	PF
0000000014284	52	PF
0000000014284	53	PF
0000000014284	54	PF
0000000014284	55	PF
0000000014284	56	PF
0000000014284	57	PF
0000000014284	58	PF
0000000014284	59	PF
0000000014284	60	PF
0000000014284	61	PF
0000000014284	62	PF
0000000014284	63	PF
0000000014284	64	PF
0000000014284	65	PF
0000000014284	66	PF
0000000014284	67	PF
0000000014284	68	PF
0000000014284	69	PF
0000000014284	70	PF
0000000014284	71	PF
0000000014284	72	PF
0000000014284	73	PF
0000000014284	74	PF
0000000014284	75	PF
0000000014284	76	PF
0000000003265	1	TF
0000000003265	2	TF
0000000003265	3	TF
0000000003265	4	TF
0000000003265	5	TF
0000000003265	6	TF
0000000003265	7	TF
0000000003265	8	TF
0000000003265	9	TF
0000000003265	10	TF
0000000003265	11	TF
0000000003265	12	TF
0000000003265	13	TF
0000000003265	14	TF
0000000003265	15	TF
0000000003265	16	TF
0000000003265	17	TF
0000000003265	18	TF
0000000003265	19	TF
0000000003265	20	TF
0000000003265	21	TF
0000000003265	22	TF
0000000003265	23	TF
0000000003265	24	TF
0000000003265	25	TF
0000000003265	26	TF
0000000003265	27	TF
0000000003265	28	TF
0000000003265	29	TF
0000000003265	30	TF
0000000003265	31	TF
0000000003265	32	TF
0000000003265	33	TF
0000000003265	34	TF
0000000003265	35	TF
0000000003265	36	TF
0000000003265	37	TF
0000000003265	38	TF
0000000003265	39	TF
0000000003265	40	TF
0000000003265	41	TF
0000000003265	42	TF
0000000003265	43	TF
0000000003265	44	TF
0000000003265	45	TF
0000000003265	46	TF
0000000003265	47	TF
0000000003265	48	TF
0000000003265	49	TF
0000000003265	50	TF
0000000003265	51	TF
0000000003265	52	TF
0000000003265	53	TF
0000000003265	54	TF
0000000003265	55	TF
0000000003265	56	TF
0000000003265	57	TF
0000000003265	58	TF
0000000003265	59	TF
0000000003265	60	TF
0000000003265	61	TF
0000000003265	62	TF
0000000003265	63	TF
0000000003265	64	TF
0000000003265	65	TF
0000000003265	66	TF
0000000003265	67	TF
0000000003265	68	TF
0000000003265	69	TF
0000000003265	70	TF
0000000003265	71	TF
0000000003265	72	TF
0000000014579	1	TF
0000000014579	2	TF
0000000014579	3	TF
0000000014579	4	TF
0000000014579	5	SF
0000000014579	6	SF
0000000014579	7	SF
0000000014579	8	SF
0000000014579	9	SF
0000000014579	10	SF
0000000014579	11	SF
0000000014579	12	SF
0000000014579	13	SF
0000000014579	14	SF
0000000014579	15	SF
0000000014579	16	SF
0000000014579	17	SF
0000000014579	18	SF
0000000014579	19	SF
0000000014579	20	SF
0000000000541	1	TF
0000000000541	2	TF
0000000000541	3	TF
0000000000541	4	TF
0000000000541	5	TF
0000000000541	6	TF
0000000000541	7	TF
0000000000541	8	TF
0000000000541	9	TF
0000000000541	10	TF
0000000000541	11	TF
0000000000541	12	TF
0000000000541	13	TF
0000000000541	14	TF
0000000000541	15	TF
0000000000541	16	TF
0000000000541	17	TF
0000000000541	18	TF
0000000000541	19	TF
0000000000541	20	TF
0000000000541	21	TF
0000000000541	22	TF
0000000000541	23	TF
0000000000541	24	TF
0000000000541	25	TF
0000000000541	26	TF
0000000000541	27	TF
0000000000541	28	TF
0000000000541	29	TF
0000000000541	30	TF
0000000000541	31	SF
0000000000541	32	SF
0000000000813	1	SF
0000000000813	2	PF
0000000000813	3	PF
0000000000813	4	PF
0000000000813	5	PF
0000000000813	6	PF
0000000000813	7	PF
0000000000813	8	PF
0000000000813	9	PF
0000000000813	10	PF
0000000000813	11	PF
0000000000813	12	PF
0000000000813	13	PF
0000000000813	14	PF
0000000000813	15	PF
0000000000813	16	PF
0000000000813	17	PF
0000000000813	18	PF
0000000000813	19	PF
0000000000813	20	PF
0000000000813	21	PF
0000000000813	22	PF
0000000000813	23	PF
0000000000813	24	PF
0000000000813	25	PF
0000000000813	26	PF
0000000000813	27	PF
0000000000813	28	PF
0000000000813	29	PF
0000000000813	30	PF
0000000000813	31	PF
0000000000813	32	PF
0000000000813	33	PF
0000000000813	34	PF
0000000000813	35	PF
0000000000813	36	PF
0000000000813	37	PF
0000000000813	38	PF
0000000000813	39	PF
0000000000813	40	PF
0000000000813	41	PF
0000000000813	42	PF
0000000000813	43	PF
0000000000813	44	PF
0000000000813	45	PF
0000000000813	46	PF
0000000000813	47	PF
0000000000813	48	PF
0000000000813	49	PF
0000000000813	50	PF
0000000000813	51	PF
0000000000813	52	PF
0000000000813	53	PF
0000000000813	54	PF
0000000000813	55	PF
0000000000813	56	PF
0000000026198	1	TF
0000000026198	2	TF
0000000026198	3	TF
0000000026198	4	TF
0000000026198	5	TF
0000000026198	6	TF
0000000026198	7	TF
0000000026198	8	TF
0000000026198	9	TF
0000000026198	10	TF
0000000026198	11	TF
0000000026198	12	TF
0000000026198	13	TF
0000000026198	14	TF
0000000026198	15	TF
0000000026198	16	TF
0000000026198	17	TF
0000000026198	18	TF
0000000026198	19	TF
0000000026198	20	TF
0000000026198	21	TF
0000000026198	22	TF
0000000026198	23	TF
0000000026198	24	TF
0000000026198	25	TF
0000000026198	26	TF
0000000026198	27	TF
0000000026198	28	TF
0000000026198	29	TF
\.


--
-- Data for Name: correccion; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY correccion (isbn, n_pagina, fecha_inicio, fecha_fin, id_fase, corrector) FROM stdin;
0000000021472	1	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000021472	1	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	83
0000000021472	2	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000021472	2	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	42
0000000021472	2	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	153
0000000021472	3	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000021472	3	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	433
0000000021472	3	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000021472	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000021472	4	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000021472	4	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	195
0000000021472	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	52
0000000021472	5	2011-04-19 00:00:00+02	2011-10-15 00:00:00+02	SF	151
0000000021472	5	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	232
0000000021472	6	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	432
0000000021472	6	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	364
0000000021472	6	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000021472	7	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000021472	7	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	199
0000000021472	7	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000021472	8	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	141
0000000021472	8	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000021472	8	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	199
0000000021472	9	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000021472	9	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	83
0000000021472	9	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000021472	10	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000021472	10	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000021472	10	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	139
0000000021472	11	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	141
0000000021472	11	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	139
0000000021472	11	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000021472	12	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	326
0000000021472	12	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000021472	12	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	232
0000000021472	13	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000021472	13	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000021472	13	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	433
0000000021472	14	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000021472	14	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000021472	14	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	232
0000000021472	15	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000021472	15	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000021472	15	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	364
0000000021472	16	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	179
0000000021472	16	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000021472	16	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	255
0000000021472	17	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000021472	17	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000021472	17	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	83
0000000021472	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	52
0000000021472	18	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000021472	18	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	100
0000000021472	19	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000021472	19	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000021472	19	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	100
0000000021472	20	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	179
0000000021472	20	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000021472	20	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	83
0000000021472	21	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	174
0000000021472	21	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000021472	21	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	83
0000000021472	22	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	124
0000000021472	22	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000021472	23	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000021472	23	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000021472	23	2011-10-16 00:00:00+02	\N	TF	139
0000000021472	24	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000021472	24	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000021472	25	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000021472	25	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	42
0000000021472	26	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000021472	26	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	139
0000000021472	27	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000021472	27	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000021472	28	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	369
0000000021472	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	364
0000000021472	29	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	326
0000000021472	29	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	232
0000000017487	1	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000017487	1	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	42
0000000017487	1	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000017487	2	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	326
0000000017487	2	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000017487	2	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000017487	3	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000017487	3	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	42
0000000017487	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000017487	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000017487	4	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000017487	4	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	42
0000000017487	5	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000017487	5	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000017487	5	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	139
0000000017487	6	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000017487	6	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000017487	6	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	80
0000000017487	7	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000017487	7	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	139
0000000017487	7	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000017487	8	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000017487	8	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	383
0000000017487	8	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000017487	9	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000017487	9	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	48
0000000017487	9	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000017487	10	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000017487	10	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	83
0000000017487	10	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000017487	11	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000017487	11	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	48
0000000017487	11	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	151
0000000017487	12	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000017487	12	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000017487	12	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	433
0000000017487	13	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000017487	13	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000017487	13	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	100
0000000017487	14	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	326
0000000017487	14	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000017487	14	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	139
0000000017487	15	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000017487	15	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	232
0000000017487	15	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000017487	16	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000017487	16	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000017487	16	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	195
0000000017487	17	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	123
0000000017487	17	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000017487	17	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	195
0000000017487	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000017487	18	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	127
0000000017487	18	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	151
0000000017487	19	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000017487	19	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	83
0000000017487	19	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000017487	20	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000017487	20	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	232
0000000017487	20	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000017487	21	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000017487	21	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	199
0000000017487	21	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000017487	22	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	302
0000000017487	22	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	83
0000000017487	22	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	153
0000000017487	23	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000017487	23	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000017487	23	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	42
0000000017487	24	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	426
0000000017487	24	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	383
0000000017487	24	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000017487	25	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000017487	25	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	255
0000000017487	25	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000017487	26	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000017487	26	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000017487	26	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	100
0000000017487	27	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000017487	27	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000017487	27	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	433
0000000017487	28	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000017487	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	199
0000000017487	28	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000017487	29	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000017487	29	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000017487	29	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	42
0000000017487	30	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	326
0000000017487	30	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	195
0000000017487	30	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000017487	31	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000017487	31	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000017487	31	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	80
0000000017487	32	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000017487	32	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000017487	32	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	195
0000000017487	33	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	179
0000000017487	33	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000017487	33	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	100
0000000017487	34	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	141
0000000017487	34	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000017487	34	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	100
0000000017487	35	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000017487	35	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	232
0000000017487	35	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000017487	36	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000017487	36	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	127
0000000017487	36	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000017487	37	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000017487	37	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000017487	37	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	364
0000000017487	38	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000017487	38	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000017487	38	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	100
0000000017487	39	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000017487	39	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000017487	40	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	302
0000000017487	40	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000017487	40	2011-10-14 00:00:00+02	\N	TF	139
0000000017487	41	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000017487	41	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000017487	42	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000017487	42	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000017487	43	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	141
0000000017487	43	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000017487	43	2011-10-16 00:00:00+02	\N	TF	139
0000000017487	44	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000017487	44	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000017487	45	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	52
0000000017487	45	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	199
0000000017487	46	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	179
0000000017487	46	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000017487	46	2011-10-13 00:00:00+02	\N	TF	433
0000000017487	47	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000017487	47	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000017487	48	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	302
0000000017487	48	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	83
0000000017487	49	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000017487	49	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	80
0000000017487	50	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000017487	50	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000017487	51	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000017487	51	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000017487	51	2011-10-05 00:00:00+02	\N	TF	364
0000000017487	52	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000017487	52	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	433
0000000017487	53	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	326
0000000017487	53	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	383
0000000017487	54	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000017487	54	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	139
0000000017487	54	2011-10-14 00:00:00+02	\N	TF	153
0000000017487	55	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000017487	55	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	199
0000000017487	55	2011-10-16 00:00:00+02	\N	TF	153
0000000017487	56	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000017487	56	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	255
0000000017487	57	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000017487	57	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	151
0000000017487	57	2011-10-06 00:00:00+02	\N	TF	255
0000000017487	58	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000017487	58	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	364
0000000017487	59	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000017487	59	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000017487	60	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000017487	60	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	83
0000000017487	61	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000017487	61	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000017487	62	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	302
0000000017487	62	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	364
0000000017487	62	2011-10-16 00:00:00+02	\N	TF	151
0000000017487	63	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000017487	63	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	433
0000000017487	63	2011-10-15 00:00:00+02	\N	TF	151
0000000017487	64	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	426
0000000017487	64	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000017487	65	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000017487	65	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	127
0000000017487	66	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	179
0000000017487	66	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	127
0000000017487	67	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000017487	67	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000017487	68	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	426
0000000017487	68	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000017487	69	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000017487	69	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000017487	70	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000017487	70	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	433
0000000017487	71	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000017487	71	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	80
0000000017487	72	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	326
0000000017487	72	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	80
0000000017487	73	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000017487	73	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	433
0000000017487	74	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000017487	74	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000017487	75	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000017487	75	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000016531	1	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000016531	2	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	433
0000000016531	3	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	179
0000000016531	4	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000016531	5	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000016531	5	2011-10-15 00:00:00+02	\N	SF	153
0000000016531	6	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	123
0000000016531	7	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000016531	8	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	123
0000000016531	9	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000016531	10	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000016531	11	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	433
0000000016531	11	2011-10-15 00:00:00+02	\N	SF	151
0000000016531	12	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000016531	13	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	232
0000000016531	14	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	199
0000000016531	15	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	153
0000000016531	16	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	48
0000000016531	17	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	151
0000000016531	18	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000016531	19	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	151
0000000016531	20	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	383
0000000016531	21	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	432
0000000016531	22	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	364
0000000016531	23	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000016531	24	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000016531	25	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	151
0000000016531	26	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	83
0000000016531	27	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	42
0000000016531	28	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000016531	29	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	127
0000000016531	29	2011-10-15 00:00:00+02	\N	SF	153
0000000016531	30	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000016531	30	2011-10-16 00:00:00+02	\N	SF	153
0000000016531	31	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000016531	32	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	127
0000000016531	33	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000016531	33	2011-10-13 00:00:00+02	\N	SF	151
0000000016531	34	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	153
0000000016531	35	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000016531	36	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000016531	37	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000016531	38	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000016531	39	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	100
0000000016531	40	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000016531	41	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000016531	42	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	326
0000000016531	43	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	153
0000000016531	44	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	151
0000000016531	45	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	52
0000000016531	45	2011-10-14 00:00:00+02	\N	SF	153
0000000016531	46	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	432
0000000016531	47	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	151
0000000016531	48	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	48
0000000016531	48	2011-10-03 00:00:00+02	\N	SF	153
0000000016531	49	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	151
0000000016531	50	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	123
0000000016531	51	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	123
0000000016531	52	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	52
0000000016531	53	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	153
0000000016531	54	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000016531	55	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	426
0000000016531	56	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	52
0000000016531	57	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	153
0000000016531	58	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000016531	59	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	153
0000000016531	60	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	52
0000000016531	60	2011-10-15 00:00:00+02	\N	SF	153
0000000016531	61	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	364
0000000016531	66	2011-10-16 00:00:00+02	\N	PF	151
0000000016531	72	2011-10-16 00:00:00+02	\N	PF	151
0000000020852	1	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	430
0000000020852	1	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000020852	1	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	48
0000000020852	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000020852	2	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	100
0000000020852	2	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000020852	3	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000020852	3	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	42
0000000020852	3	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000020852	4	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000020852	4	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000020852	4	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	364
0000000020852	5	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	369
0000000020852	5	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	232
0000000020852	5	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000020852	6	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	302
0000000020852	6	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	364
0000000020852	6	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000020852	7	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000020852	7	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000020852	7	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	42
0000000020852	8	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000020852	8	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000020852	8	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	42
0000000020852	9	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000020852	9	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000020852	9	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	364
0000000020852	10	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	123
0000000020852	10	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000020852	10	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	139
0000000020852	11	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000020852	11	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000020852	11	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	48
0000000020852	12	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	326
0000000020852	12	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000020852	12	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000020852	13	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000020852	13	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000020852	13	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	127
0000000020852	14	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	326
0000000020852	14	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	232
0000000020852	15	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	141
0000000020852	15	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000020852	15	2011-10-16 00:00:00+02	\N	TF	255
0000000020852	16	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000020852	16	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000020852	17	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000020852	17	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	199
0000000020852	17	2011-10-14 00:00:00+02	\N	TF	153
0000000020852	18	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000020852	18	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000020852	19	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000020852	19	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	195
0000000020852	20	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	179
0000000020852	20	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	383
0000000020852	20	2011-10-16 00:00:00+02	\N	TF	151
0000000020852	21	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000020852	21	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	139
0000000020852	22	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000020852	22	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	199
0000000020852	23	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000020852	23	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000020852	24	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000020852	24	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	127
0000000020852	25	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000020852	25	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000020852	26	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	52
0000000020852	26	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	139
0000000020852	27	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000020852	27	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	139
0000000020852	28	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000020852	28	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000020852	29	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	123
0000000020852	29	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000020852	30	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000020852	30	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000020852	31	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	179
0000000020852	31	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000020852	31	2011-10-15 00:00:00+02	\N	TF	127
0000000020852	32	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000020852	32	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000020852	32	2011-10-05 00:00:00+02	\N	TF	139
0000000020852	33	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	179
0000000020852	33	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	383
0000000020852	34	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	426
0000000020852	34	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000020852	34	2011-10-13 00:00:00+02	\N	TF	364
0000000020852	35	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000020852	35	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000020852	35	2011-10-15 00:00:00+02	\N	TF	199
0000000020852	36	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	326
0000000020852	36	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000020852	37	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000020852	37	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	83
0000000020852	38	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	426
0000000020852	38	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	255
0000000020852	39	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000020852	39	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000020852	40	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	141
0000000020852	40	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	195
0000000020852	40	2011-10-04 00:00:00+02	\N	TF	153
0000000020852	41	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	141
0000000020852	41	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	80
0000000020852	42	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000020852	42	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	42
0000000020852	43	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	179
0000000020852	43	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000020852	44	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000020852	44	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	83
0000000020852	45	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000020852	45	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000020852	46	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000020852	46	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000020852	47	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000020852	47	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	83
0000000020852	48	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	369
0000000020852	48	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000022564	1	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000022564	1	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000022564	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000022564	2	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000022564	3	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000022564	3	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000022564	4	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000022564	4	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	100
0000000022564	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000022564	5	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	100
0000000022564	5	2011-10-13 00:00:00+02	\N	TF	151
0000000022564	6	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000022564	6	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000022564	7	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000022564	7	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000022564	8	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	123
0000000022564	8	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	48
0000000022564	9	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	141
0000000022564	9	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	364
0000000022564	10	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000022564	10	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	433
0000000022564	11	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000022564	11	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	100
0000000022564	11	2011-10-16 00:00:00+02	\N	TF	153
0000000022564	12	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000022564	12	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000022564	12	2011-10-16 00:00:00+02	\N	TF	151
0000000022564	13	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000022564	13	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000022564	14	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	432
0000000022564	14	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	433
0000000022564	14	2011-10-15 00:00:00+02	\N	TF	153
0000000022564	15	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000022564	15	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000022564	16	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000022564	16	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	232
0000000022564	17	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000022564	17	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	48
0000000022564	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000022564	18	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	383
0000000022564	19	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000022564	19	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	83
0000000022564	20	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000022564	20	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000022564	21	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000022564	21	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	232
0000000022564	22	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000022564	22	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000022564	23	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000022564	23	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	127
0000000022564	23	2011-10-16 00:00:00+02	\N	TF	151
0000000022564	24	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000022564	24	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000022564	25	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000022564	25	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000022564	26	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000022564	26	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	80
0000000022564	26	2011-10-13 00:00:00+02	\N	TF	151
0000000022564	27	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	179
0000000022564	27	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	100
0000000022564	28	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	203
0000000022564	28	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000022564	28	2011-10-15 00:00:00+02	\N	TF	232
0000000022564	29	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	426
0000000022564	29	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000022564	30	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000022564	30	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	139
0000000022564	31	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	430
0000000022564	31	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	232
0000000022564	32	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000022564	32	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000022564	33	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000022564	33	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	255
0000000022564	33	2011-10-14 00:00:00+02	\N	TF	151
0000000022564	34	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000022564	34	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	48
0000000022564	35	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	302
0000000022564	35	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000022564	36	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000022564	36	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000022564	37	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000022564	37	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	383
0000000022564	38	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000022564	38	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	127
0000000022564	39	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000022564	39	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000022564	40	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000022564	40	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	151
0000000022564	40	2011-10-14 00:00:00+02	\N	TF	80
0000000022564	41	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	123
0000000022564	41	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000022564	42	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	326
0000000022564	42	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	433
0000000022564	43	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	179
0000000022564	43	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000022564	44	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000022564	44	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000022564	45	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000022564	45	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000022564	46	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	326
0000000022564	46	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000022564	46	2011-10-16 00:00:00+02	\N	TF	48
0000000022564	47	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000022564	47	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000022564	48	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	141
0000000022564	48	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000022564	49	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	426
0000000022564	49	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	199
0000000022564	50	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	369
0000000022564	50	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000022564	51	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000022564	51	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	195
0000000022564	52	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000022564	52	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	127
0000000022564	53	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000022564	53	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000022564	54	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000022564	54	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	383
0000000022564	55	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000022564	55	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	364
0000000022564	56	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000022564	56	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	195
0000000022564	57	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000022564	58	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000022564	58	2011-10-13 00:00:00+02	\N	SF	151
0000000022564	59	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	326
0000000022564	60	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	153
0000000022564	61	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000022564	62	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	80
0000000022564	63	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	426
0000000022564	63	2011-10-15 00:00:00+02	\N	SF	151
0000000022564	64	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	153
0000000022564	65	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000022564	66	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	100
0000000022564	67	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000022564	68	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000022564	69	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	48
0000000022564	70	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000022564	71	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000022564	72	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	195
0000000022564	73	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000022564	74	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	153
0000000014056	1	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000014056	1	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	83
0000000014056	1	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000014056	2	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	52
0000000014056	2	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	232
0000000014056	2	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000014056	3	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000014056	3	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	100
0000000014056	3	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000014056	4	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000014056	4	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000014056	4	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000014056	5	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000014056	5	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	127
0000000014056	5	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000014056	6	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000014056	6	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000014056	6	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	100
0000000014056	7	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000014056	7	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000014056	7	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	199
0000000014056	8	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000014056	8	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000014056	8	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	255
0000000014056	9	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000014056	9	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000014056	9	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	127
0000000014056	10	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000014056	10	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000014056	10	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	100
0000000014056	11	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000014056	11	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	42
0000000014056	11	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000014056	12	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000014056	12	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	364
0000000014056	12	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000014056	13	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	432
0000000014056	13	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000014056	13	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	364
0000000019009	22	2011-10-14 00:00:00+02	\N	SF	255
0000000014056	14	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000014056	14	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000014056	14	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	199
0000000014056	15	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	302
0000000014056	15	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000014056	15	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	80
0000000014056	16	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	123
0000000014056	16	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000014056	16	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	80
0000000014056	17	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000014056	17	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000014056	17	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	48
0000000014056	18	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000014056	18	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	100
0000000014056	18	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000014056	19	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000014056	19	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000014056	19	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000014056	20	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000014056	20	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000014056	20	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	80
0000000014056	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000014056	21	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000014056	21	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	139
0000000014056	22	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	203
0000000014056	22	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	48
0000000014056	23	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000014056	23	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	195
0000000014056	23	2011-10-15 00:00:00+02	\N	TF	151
0000000014056	24	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	52
0000000014056	24	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000014056	25	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000014056	25	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000014056	26	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	123
0000000014056	26	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000014056	26	2011-10-14 00:00:00+02	\N	TF	100
0000000014056	27	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000014056	27	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000014056	28	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000014056	28	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	42
0000000014056	29	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000014056	29	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000014056	30	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	302
0000000014056	30	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000014056	30	2011-10-05 00:00:00+02	\N	TF	232
0000000014056	31	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	432
0000000014056	31	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	199
0000000014056	32	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000014056	32	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	48
0000000014056	33	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	302
0000000014056	33	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000014056	34	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	203
0000000014056	34	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	80
0000000014056	35	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000014056	35	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	80
0000000014056	36	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000014056	36	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	127
0000000014056	36	2011-10-16 00:00:00+02	\N	TF	151
0000000014056	37	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000014056	37	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	232
0000000014056	38	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000014056	38	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000014056	39	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	430
0000000014056	39	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	139
0000000014056	39	2011-10-14 00:00:00+02	\N	TF	151
0000000019009	1	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000019009	1	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000019009	2	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	203
0000000019009	2	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	139
0000000019009	2	2011-10-13 00:00:00+02	\N	TF	151
0000000019009	3	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	141
0000000019009	3	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000019009	4	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000019009	4	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000019009	5	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	302
0000000019009	5	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	48
0000000019009	6	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000019009	6	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000019009	7	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	124
0000000019009	7	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000019009	8	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000019009	8	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000019009	9	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000019009	9	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000019009	10	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000019009	10	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000019009	11	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000019009	11	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	364
0000000019009	11	2011-10-15 00:00:00+02	\N	TF	153
0000000019009	12	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	96
0000000019009	12	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000019009	12	2011-10-15 00:00:00+02	\N	TF	153
0000000019009	13	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000019009	13	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	199
0000000019009	14	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	430
0000000019009	14	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	139
0000000019009	15	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000019009	15	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	83
0000000019009	16	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000019009	16	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	100
0000000019009	17	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000019009	17	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	127
0000000019009	18	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000019009	19	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	151
0000000019009	20	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	48
0000000019009	20	2011-10-16 00:00:00+02	\N	SF	153
0000000019009	21	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	80
0000000019009	22	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	153
0000000019009	23	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	100
0000000019009	24	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	199
0000000019009	25	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000019009	26	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	153
0000000019009	27	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	151
0000000019009	28	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000019009	29	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	83
0000000019009	30	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	195
0000000019009	31	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	433
0000000019009	31	2011-10-14 00:00:00+02	\N	SF	151
0000000019009	32	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	123
0000000019009	32	2011-10-14 00:00:00+02	\N	SF	153
0000000019009	33	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000019009	34	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	48
0000000019009	34	2011-10-16 00:00:00+02	\N	SF	151
0000000019009	35	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	153
0000000019009	35	2011-10-14 00:00:00+02	\N	SF	383
0000000019009	36	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000019009	36	2011-10-16 00:00:00+02	\N	SF	153
0000000019009	37	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000019009	38	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000019009	39	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	48
0000000019009	40	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000019009	41	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	123
0000000019009	42	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000019009	43	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	151
0000000019009	43	2011-10-15 00:00:00+02	\N	SF	364
0000000019009	44	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	232
0000000019009	45	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	203
0000000019009	46	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000019009	47	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	199
0000000019009	48	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	123
0000000019009	49	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	232
0000000019312	1	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	52
0000000019312	1	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000019312	2	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000019312	2	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000019312	3	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000019312	3	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	195
0000000019312	4	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	302
0000000019312	4	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000019312	5	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	203
0000000019312	5	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	139
0000000019312	5	2011-10-14 00:00:00+02	\N	TF	153
0000000019312	6	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	430
0000000019312	6	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	433
0000000019312	7	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000019312	7	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	100
0000000019312	8	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000019312	8	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000019312	9	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000019312	9	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	383
0000000019312	10	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000019312	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000019312	11	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	203
0000000019312	11	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000019312	12	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000019312	12	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	100
0000000019312	13	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	141
0000000019312	13	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	383
0000000019312	13	2011-10-13 00:00:00+02	\N	TF	151
0000000019312	14	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000019312	14	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000019312	15	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000019312	15	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000019312	15	2011-10-16 00:00:00+02	\N	TF	383
0000000019312	16	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000019312	16	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000019312	17	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000019312	17	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000019312	18	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000019312	18	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	48
0000000019312	19	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000019312	19	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	48
0000000019312	20	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000019312	20	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	195
0000000019312	20	2011-10-06 00:00:00+02	\N	TF	151
0000000019312	21	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000019312	21	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000019312	22	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	179
0000000019312	22	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000019312	23	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000019312	23	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	364
0000000019312	24	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	179
0000000019312	24	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000019312	25	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000019312	25	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000019312	26	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000019312	26	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	383
0000000019312	27	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000019312	27	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000019312	28	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	141
0000000019312	28	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000019312	29	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000019312	29	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000019312	30	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000019312	30	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000019312	31	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	203
0000000019312	31	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	433
0000000019312	31	2011-10-14 00:00:00+02	\N	TF	153
0000000019312	32	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000019312	32	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000019312	33	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000019312	33	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000019312	34	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000019312	34	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000019312	35	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000019312	35	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	127
0000000019312	35	2011-10-16 00:00:00+02	\N	TF	153
0000000019312	36	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	426
0000000019312	36	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000019312	37	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	426
0000000019312	37	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000019312	38	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000019312	38	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000019312	39	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	153
0000000019312	40	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000019312	41	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	42
0000000019312	42	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	42
0000000019312	43	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	151
0000000019312	43	2011-10-06 00:00:00+02	\N	SF	139
0000000019312	44	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	326
0000000019312	45	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000019312	46	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000019312	47	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	151
0000000019312	48	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	153
0000000019312	48	2011-10-16 00:00:00+02	\N	SF	80
0000000019312	49	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	83
0000000019312	50	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000019312	50	2011-10-13 00:00:00+02	\N	SF	153
0000000019312	51	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	369
0000000019312	52	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	153
0000000019312	53	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	151
0000000019312	54	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000019312	55	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	153
0000000019312	56	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000019312	57	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000019312	58	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	141
0000000019312	59	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000002562	1	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000002562	1	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000002562	1	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000002562	2	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000002562	2	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	433
0000000002562	2	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000002562	3	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000002562	3	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000002562	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	232
0000000002562	4	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000002562	4	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000002562	4	2011-10-13 00:00:00+02	\N	TF	232
0000000002562	5	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000002562	5	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	232
0000000002562	6	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000002562	6	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	232
0000000002562	7	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000002562	7	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	195
0000000002562	8	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000002562	8	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	232
0000000002562	9	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000002562	9	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000002562	10	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	369
0000000002562	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000002562	10	2011-10-14 00:00:00+02	\N	TF	48
0000000002562	11	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000002562	11	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000002562	12	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000002562	12	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000002562	13	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000002562	13	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	433
0000000002562	13	2011-10-13 00:00:00+02	\N	TF	153
0000000002562	14	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000002562	14	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000002562	14	2011-10-14 00:00:00+02	\N	TF	139
0000000002562	15	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	426
0000000002562	15	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000002562	15	2011-10-16 00:00:00+02	\N	TF	232
0000000002562	16	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	141
0000000002562	16	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	42
0000000002562	17	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000002562	17	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	80
0000000002562	17	2011-10-13 00:00:00+02	\N	TF	151
0000000002562	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	369
0000000002562	18	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000002562	19	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000002562	19	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000002562	20	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	430
0000000002562	20	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000002562	21	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	96
0000000002562	21	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	383
0000000002562	22	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000002562	22	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000002562	23	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000002562	23	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	364
0000000002562	24	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	369
0000000002562	24	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000002562	25	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000002562	25	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	255
0000000002562	26	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	426
0000000002562	26	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000002562	27	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000002562	27	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000002562	28	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000002562	28	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	232
0000000002562	29	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	426
0000000002562	29	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	83
0000000002562	30	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000002562	30	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	151
0000000002562	30	2011-10-15 00:00:00+02	\N	TF	83
0000000002562	31	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000002562	31	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000023297	1	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000023297	1	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000023297	1	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	80
0000000023297	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	426
0000000023297	2	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	199
0000000023297	2	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000023297	3	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000023297	3	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	364
0000000023297	3	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000023297	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000023297	4	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	383
0000000023297	4	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000023297	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	141
0000000023297	5	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000023297	5	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	195
0000000023297	6	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	179
0000000023297	6	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000023297	6	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	139
0000000023297	7	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	430
0000000023297	7	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	48
0000000023297	7	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000023297	8	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000023297	8	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000023297	8	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	232
0000000023297	9	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	203
0000000023297	9	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000023297	9	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	433
0000000023297	10	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000023297	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000023297	10	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	199
0000000023297	11	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000023297	11	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	139
0000000023297	11	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000023297	12	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	302
0000000023297	12	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000023297	12	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	195
0000000023297	13	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000023297	13	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	139
0000000023297	13	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	153
0000000023297	14	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	203
0000000023297	14	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	48
0000000023297	14	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000023297	15	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000023297	15	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	48
0000000023297	15	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000023297	16	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000023297	16	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000023297	16	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	127
0000000023297	17	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000023297	17	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000023297	17	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	199
0000000023297	18	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000023297	18	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	139
0000000023297	18	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000023297	19	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	123
0000000023297	19	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000023297	19	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	199
0000000023297	20	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	123
0000000023297	20	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000023297	20	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	83
0000000023297	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	432
0000000023297	21	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	80
0000000023297	21	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000023297	22	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000023297	22	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000023297	22	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	48
0000000023297	23	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000023297	23	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000023297	23	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	100
0000000023297	24	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000023297	24	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	139
0000000023297	24	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	153
0000000023297	25	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	369
0000000023297	25	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000023297	25	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	83
0000000023297	26	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	141
0000000023297	26	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	151
0000000023297	26	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	195
0000000023297	27	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000023297	27	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	199
0000000023297	27	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000023297	28	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000023297	28	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	48
0000000023297	28	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000023297	29	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	430
0000000023297	29	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000023297	29	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	42
0000000023297	30	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000023297	30	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	48
0000000023297	30	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000023297	31	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	432
0000000023297	31	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000023297	31	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	383
0000000023297	32	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	123
0000000023297	32	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	433
0000000023297	32	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	153
0000000023297	33	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000023297	33	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000023297	33	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	433
0000000023297	34	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000023297	34	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	199
0000000023297	34	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000023297	35	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000023297	35	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000023297	35	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	433
0000000023297	36	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	426
0000000023297	36	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	100
0000000023297	36	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000023297	37	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	426
0000000023297	37	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	232
0000000023297	37	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	153
0000000023297	38	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	432
0000000023297	38	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	195
0000000023297	38	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000023297	39	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	52
0000000023297	39	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000023297	39	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	433
0000000023297	40	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	432
0000000023297	40	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000023297	40	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000023297	41	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000023297	41	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	433
0000000023297	41	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000023297	42	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000023297	42	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000023297	42	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	42
0000000023297	43	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	432
0000000023297	43	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000023297	43	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	232
0000000023297	44	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000023297	44	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	433
0000000023297	44	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000023297	45	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	430
0000000023297	45	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000023297	45	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	383
0000000023297	46	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	426
0000000023297	46	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000023297	46	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000023297	47	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000023297	47	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000023297	47	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	433
0000000023297	48	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	326
0000000023297	48	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000023297	48	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	255
0000000023297	49	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000023297	49	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	83
0000000023297	49	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000023297	50	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	430
0000000023297	50	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000023297	50	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	83
0000000023297	51	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000023297	51	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	80
0000000023297	51	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000023297	52	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	123
0000000023297	52	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	151
0000000023297	52	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	42
0000000023297	53	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000023297	53	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	100
0000000023297	53	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000023297	54	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000023297	54	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000023297	54	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	383
0000000023297	55	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000023297	55	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000023297	55	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	199
0000000023297	56	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000023297	56	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	127
0000000023297	56	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000023297	57	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000023297	57	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	100
0000000023297	57	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000023297	58	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	426
0000000023297	58	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000023297	58	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	42
0000000023297	59	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	369
0000000023297	59	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	83
0000000023297	59	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000023297	60	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	369
0000000023297	60	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000023297	60	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	127
0000000023297	61	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000023297	61	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000023297	61	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	364
0000000023297	62	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	369
0000000023297	62	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	199
0000000023297	62	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000023297	63	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000023297	63	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	199
0000000023297	63	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000012784	1	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	369
0000000012784	1	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000012784	1	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	433
0000000012784	2	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	302
0000000012784	2	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000012784	2	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	127
0000000012784	3	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000012784	3	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000012784	3	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	195
0000000012784	4	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000012784	4	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	80
0000000012784	4	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000012784	5	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000012784	5	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000012784	5	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000012784	6	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	141
0000000012784	6	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000012784	6	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000012784	7	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000012784	7	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	139
0000000012784	7	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000012784	8	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000012784	8	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000012784	8	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	255
0000000012784	9	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000012784	9	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000012784	9	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	80
0000000012784	10	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	179
0000000012784	10	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	42
0000000012784	10	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000012784	11	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000012784	11	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	48
0000000012784	11	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000012784	12	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	179
0000000012784	12	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	83
0000000012784	12	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000012784	13	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	369
0000000012784	13	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000012784	13	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	100
0000000012784	14	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	326
0000000012784	14	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	195
0000000012784	14	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000012784	15	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000012784	15	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	127
0000000012784	15	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000012784	16	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000012784	16	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	255
0000000012784	16	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000012784	17	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	326
0000000012784	17	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	83
0000000012784	17	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	151
0000000012784	18	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000012784	18	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000012784	18	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	364
0000000012784	19	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000012784	19	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000012784	19	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	232
0000000012784	20	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000012784	20	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000012784	20	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	80
0000000012784	21	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	326
0000000012784	21	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	127
0000000012784	21	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000012784	22	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	203
0000000012784	22	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	364
0000000012784	22	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	153
0000000012784	23	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	426
0000000012784	23	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000012784	23	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	195
0000000012784	24	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000012784	24	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000012784	24	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	139
0000000012784	25	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000012784	25	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000012784	25	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	255
0000000012784	26	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000012784	26	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000012784	26	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	48
0000000012784	27	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000012784	27	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000012784	27	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	383
0000000012784	28	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	326
0000000012784	28	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000012784	28	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	100
0000000012784	29	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	302
0000000012784	29	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000012784	29	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	80
0000000012784	30	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	203
0000000012784	30	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	80
0000000012784	30	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000012784	31	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	302
0000000012784	31	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	364
0000000012784	31	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000012784	32	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000012784	32	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000012784	32	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	139
0000000012784	33	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000012784	33	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000012784	33	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	232
0000000012784	34	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000012784	34	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000012784	34	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	255
0000000012784	35	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	369
0000000012784	35	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	433
0000000012784	35	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000012784	36	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000012784	36	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000012784	36	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	383
0000000012784	37	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000012784	37	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	80
0000000012784	37	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000012784	38	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000012784	38	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000012784	38	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	127
0000000026710	1	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	369
0000000026710	1	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	195
0000000026710	1	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	153
0000000026710	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	123
0000000026710	2	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000026710	2	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	255
0000000026710	3	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	141
0000000026710	3	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000026710	3	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000026710	4	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000026710	4	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000026710	4	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	195
0000000026710	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000026710	5	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	48
0000000026710	5	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000026710	6	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	302
0000000026710	6	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000026710	6	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	42
0000000026710	7	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000026710	7	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	139
0000000026710	7	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000026710	8	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	179
0000000026710	8	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000026710	8	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	48
0000000026710	9	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000026710	9	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	139
0000000026710	9	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000026710	10	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	179
0000000026710	10	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	48
0000000026710	10	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	153
0000000026710	11	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000026710	11	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	433
0000000026710	11	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000026710	12	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	203
0000000026710	12	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	195
0000000026710	12	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	153
0000000026710	13	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000026710	13	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	255
0000000026710	13	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000026710	14	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	96
0000000026710	14	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000026710	14	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	48
0000000026710	15	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000026710	15	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	199
0000000026710	15	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000026710	16	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	432
0000000026710	16	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	42
0000000026710	16	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000026710	17	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000026710	17	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000026710	17	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	195
0000000026710	18	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000026710	18	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	255
0000000026710	18	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000026710	19	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000026710	19	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	199
0000000026710	19	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000026710	20	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000026710	20	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000026710	20	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	42
0000000026710	21	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	203
0000000026710	21	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000026710	21	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	199
0000000026710	22	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000026710	22	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000026710	22	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	127
0000000026710	23	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	141
0000000026710	23	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000026710	23	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	199
0000000026710	24	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	52
0000000026710	24	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	199
0000000026710	24	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	153
0000000026710	25	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	203
0000000026710	25	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	232
0000000026710	25	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000026710	26	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000026710	26	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	48
0000000026710	26	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000026710	27	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000026710	27	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000026710	27	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	433
0000000026710	28	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000026710	28	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	255
0000000026710	28	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000026710	29	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000026710	29	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	199
0000000026710	29	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000026710	30	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000026710	30	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	255
0000000026710	30	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000026710	31	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	52
0000000026710	31	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000026710	31	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	383
0000000026710	32	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000026710	32	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000026710	32	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	433
0000000002021	1	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000002021	1	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000002021	1	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	83
0000000002021	2	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	369
0000000002021	2	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	48
0000000002021	2	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000002021	3	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	124
0000000002021	3	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	199
0000000002021	3	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000002021	4	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	179
0000000002021	4	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	433
0000000002021	4	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000002021	5	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	179
0000000002021	5	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000002021	5	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	255
0000000002021	6	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000002021	6	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000002021	6	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	83
0000000002021	7	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	430
0000000002021	7	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000002021	7	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	195
0000000002021	8	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000002021	8	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	48
0000000002021	8	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000002021	9	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000002021	9	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000002021	9	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	48
0000000002021	10	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	426
0000000002021	10	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	199
0000000002021	10	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000002021	11	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000002021	11	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000002021	11	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	80
0000000002021	12	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	302
0000000002021	12	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000002021	12	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	127
0000000002021	13	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	123
0000000002021	13	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	255
0000000002021	13	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000002021	14	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000002021	14	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000002021	14	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	42
0000000002021	15	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000002021	15	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000002021	15	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	433
0000000002021	16	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000002021	16	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000002021	16	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	364
0000000002021	17	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	124
0000000002021	17	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000002021	17	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	48
0000000002021	18	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	426
0000000002021	18	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000002021	18	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	48
0000000002021	19	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000002021	19	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	255
0000000002021	19	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000002021	20	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000002021	20	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	232
0000000002021	20	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000002021	21	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000002021	21	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	139
0000000002021	21	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000002021	22	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	302
0000000002021	22	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	232
0000000002021	22	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000002021	23	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	426
0000000002021	23	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000002021	23	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	364
0000000002021	24	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000002021	24	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000002021	24	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000002021	25	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000002021	25	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	383
0000000002021	25	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000002021	26	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	430
0000000002021	26	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	100
0000000002021	26	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000002021	27	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000002021	27	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000002021	27	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	80
0000000002021	28	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000002021	28	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000002021	28	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	80
0000000002021	29	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000002021	29	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000002021	29	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	42
0000000002021	30	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	426
0000000002021	30	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000002021	30	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	383
0000000002021	31	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	369
0000000002021	31	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	255
0000000002021	31	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000002021	32	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	302
0000000002021	32	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000002021	32	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	364
0000000002021	33	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000002021	33	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000002021	33	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000002021	34	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	326
0000000002021	34	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000002021	34	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	127
0000000002021	35	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	179
0000000002021	35	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000002021	35	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	80
0000000002021	36	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000002021	36	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000002021	36	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	195
0000000002021	37	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000002021	37	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000002021	37	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	199
0000000002021	38	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000002021	38	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	255
0000000002021	38	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000002021	39	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000002021	39	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000002021	39	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000002021	40	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	326
0000000002021	40	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	139
0000000002021	40	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000002021	41	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000002021	41	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	42
0000000002021	41	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000002021	42	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	326
0000000002021	42	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000002021	42	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	199
0000000002021	43	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000002021	43	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000002021	43	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	100
0000000002021	44	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000002021	44	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000002021	44	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	127
0000000002021	45	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000002021	45	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	232
0000000002021	45	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000002021	46	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000002021	46	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	232
0000000002021	46	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000002021	47	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	430
0000000002021	47	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	195
0000000002021	47	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	151
0000000002021	48	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	179
0000000002021	48	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000002021	48	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	48
0000000002021	49	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000002021	49	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000002021	49	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	80
0000000002021	50	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	203
0000000002021	50	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	127
0000000002021	50	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	153
0000000002021	51	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000002021	51	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	100
0000000002021	51	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000002021	52	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000002021	52	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000002021	52	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	80
0000000001531	1	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000001531	1	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000001531	1	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	232
0000000001531	2	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000001531	2	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000001531	2	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	195
0000000001531	3	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000001531	3	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000001531	3	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	80
0000000001531	4	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000001531	4	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	433
0000000001531	4	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000001531	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	430
0000000001531	5	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000001531	5	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	42
0000000001531	6	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000001531	6	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000001531	6	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	100
0000000001531	7	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000001531	7	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000001531	7	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	48
0000000001531	8	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	302
0000000001531	8	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000001531	8	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	48
0000000001531	9	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000001531	9	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000001531	9	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	80
0000000001531	10	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	430
0000000001531	10	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	48
0000000001531	10	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000001531	11	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000001531	11	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000001531	11	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	139
0000000001531	12	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	369
0000000001531	12	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	42
0000000001531	12	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000001531	13	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	302
0000000001531	13	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	100
0000000001531	13	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	151
0000000001531	14	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000001531	14	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	42
0000000001531	14	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000001531	15	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000001531	15	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	195
0000000001531	15	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000001531	16	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	302
0000000001531	16	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000001531	16	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	127
0000000001531	17	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	174
0000000001531	17	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	195
0000000001531	17	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000001531	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000001531	18	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000001531	18	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	83
0000000001531	19	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000001531	19	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	48
0000000001531	19	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000001531	20	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	96
0000000001531	20	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	232
0000000001531	20	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000001531	21	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000001531	21	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000001531	21	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	199
0000000001531	22	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000001531	22	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000001531	22	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	383
0000000001531	23	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	52
0000000001531	23	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000001531	23	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000001531	24	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000001531	24	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000001531	24	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	127
0000000001531	25	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000001531	25	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000001531	25	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	364
0000000001531	26	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000001531	26	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	127
0000000001531	26	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000001531	27	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	432
0000000001531	27	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	195
0000000001531	27	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000001531	28	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000001531	28	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	383
0000000001531	28	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000001531	29	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	326
0000000001531	29	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	255
0000000001531	29	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000001531	30	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000001531	30	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000001531	30	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	100
0000000001531	31	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	430
0000000001531	31	2002-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000001531	31	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000001531	32	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000001531	32	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	255
0000000001531	32	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000001531	33	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	52
0000000001531	33	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000001531	33	2007-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	100
0000000001531	34	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	179
0000000001531	34	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000001531	34	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	127
0000000002270	1	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	96
0000000002270	2	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	48
0000000002270	3	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	153
0000000002270	3	2007-10-15 00:00:00+02	\N	SF	139
0000000002270	4	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	42
0000000002270	21	2011-10-15 00:00:00+02	\N	PF	433
0000000000103	1	2009-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	52
0000000000103	1	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000000103	1	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	127
0000000000103	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000000103	2	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	100
0000000000103	2	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000000103	3	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000000103	3	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000000103	3	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	232
0000000000103	4	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	426
0000000000103	4	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	199
0000000000103	4	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000000103	5	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000000103	5	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000103	5	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	48
0000000000103	6	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000000103	6	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	232
0000000000103	6	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	153
0000000000103	7	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	302
0000000000103	7	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	199
0000000000103	7	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000000103	8	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	124
0000000000103	8	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000000103	8	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	42
0000000000103	9	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	302
0000000000103	9	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	199
0000000000103	9	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000000103	10	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000000103	10	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000000103	10	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	127
0000000000103	11	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000000103	11	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	195
0000000000103	11	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	153
0000000000103	12	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	52
0000000000103	12	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000000103	13	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000000103	13	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	83
0000000000103	14	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000000103	14	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	433
0000000000103	15	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	52
0000000000103	15	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	232
0000000000103	15	2011-10-04 00:00:00+02	\N	TF	151
0000000000103	16	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000000103	16	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000000103	17	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000000103	17	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	100
0000000000103	18	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000000103	18	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	151
0000000000103	19	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000000103	19	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	139
0000000000103	20	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000000103	20	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000103	21	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000000103	21	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	100
0000000000103	22	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000000103	22	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	48
0000000000103	23	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000000103	23	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000000103	24	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	203
0000000000103	24	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000000103	24	2011-10-16 00:00:00+02	\N	TF	100
0000000000103	25	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000000103	25	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000103	26	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000000103	26	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	195
0000000000103	26	2011-10-06 00:00:00+02	\N	TF	151
0000000000103	27	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000000103	27	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	127
0000000000103	28	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	141
0000000000103	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	232
0000000000103	29	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000000103	29	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000000103	29	2011-10-16 00:00:00+02	\N	TF	199
0000000000103	30	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000000103	30	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000000103	31	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000000103	31	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000000103	32	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000000103	32	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000000103	33	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	141
0000000000103	33	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	255
0000000000103	34	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000000103	34	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	80
0000000000103	35	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000000103	35	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000000103	36	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000000103	36	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	199
0000000000103	37	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000000103	37	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000000103	38	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000000103	38	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000000103	38	2011-10-16 00:00:00+02	\N	TF	139
0000000000103	39	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	179
0000000000103	39	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000000103	40	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000000103	40	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	383
0000000000103	41	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000000103	41	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000000103	42	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000000103	42	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000103	42	2011-10-14 00:00:00+02	\N	TF	195
0000000000103	43	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	141
0000000000103	43	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	232
0000000000103	43	2011-10-05 00:00:00+02	\N	TF	153
0000000000103	44	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000000103	44	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000000103	45	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000000103	45	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	48
0000000000103	46	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000000103	46	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000000103	47	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000000103	47	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	80
0000000000103	48	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000000103	48	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	383
0000000000103	49	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000000103	49	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000000103	50	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	179
0000000000103	50	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	232
0000000000103	51	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	302
0000000000103	51	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000000103	52	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	52
0000000000103	52	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000000103	53	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000000103	53	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	364
0000000000103	53	2011-10-16 00:00:00+02	\N	TF	151
0000000000103	54	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	52
0000000000103	54	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	255
0000000000103	55	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000000103	55	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000000103	56	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000000103	56	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000000103	57	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000000103	57	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000000103	58	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000000103	58	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	83
0000000000103	59	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	426
0000000000103	59	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	83
0000000000103	60	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000000103	60	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	433
0000000000103	60	2011-10-15 00:00:00+02	\N	TF	153
0000000000103	61	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	123
0000000000103	61	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000000103	62	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000000103	62	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	255
0000000000103	63	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	179
0000000000103	63	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	139
0000000000103	64	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000000103	64	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000000103	65	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	123
0000000000103	65	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000103	66	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	179
0000000000103	66	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	139
0000000000103	67	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000000103	67	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	255
0000000000103	68	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000000103	68	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	151
0000000000103	68	2011-10-06 00:00:00+02	\N	TF	139
0000000014284	1	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	123
0000000014284	1	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000014284	1	2011-10-15 00:00:00+02	\N	TF	195
0000000014284	2	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000014284	2	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	364
0000000014284	2	2011-10-16 00:00:00+02	\N	TF	151
0000000014284	3	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	96
0000000014284	3	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000014284	3	2011-10-13 00:00:00+02	\N	TF	195
0000000014284	4	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	432
0000000014284	4	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000014284	5	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	123
0000000014284	5	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	48
0000000014284	6	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000014284	6	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000014284	7	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	203
0000000014284	7	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000014284	8	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000014284	8	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	48
0000000014284	9	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000014284	9	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	48
0000000014284	10	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000014284	10	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000014284	11	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000014284	11	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000014284	11	2011-10-14 00:00:00+02	\N	TF	127
0000000014284	12	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000014284	12	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	232
0000000014284	13	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	179
0000000014284	13	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000014284	14	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	174
0000000014284	14	2011-10-03 00:00:00+02	\N	SF	151
0000000014284	15	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	433
0000000014284	15	2011-10-16 00:00:00+02	\N	SF	153
0000000014284	16	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000014284	17	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000014284	18	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	151
0000000014284	19	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	127
0000000014284	20	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	42
0000000014284	20	2011-10-15 00:00:00+02	\N	SF	153
0000000014284	21	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000014284	22	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	151
0000000014284	22	2011-10-13 00:00:00+02	\N	SF	195
0000000014284	23	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	153
0000000014284	24	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000014284	25	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	151
0000000014284	26	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000014284	27	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	80
0000000014284	28	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	48
0000000014284	29	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	52
0000000014284	30	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	232
0000000014284	31	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	383
0000000014284	31	2011-10-04 00:00:00+02	\N	SF	153
0000000014284	32	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000014284	33	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	255
0000000014284	34	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	369
0000000014284	35	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	426
0000000014284	36	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	199
0000000014284	37	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000014284	38	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	151
0000000014284	39	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000014284	39	2011-10-15 00:00:00+02	\N	SF	151
0000000014284	40	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	141
0000000014284	41	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000014284	42	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	153
0000000014284	43	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000014284	44	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	153
0000000014284	44	2011-10-13 00:00:00+02	\N	SF	383
0000000014284	45	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	151
0000000014284	46	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	127
0000000014284	47	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	83
0000000014284	48	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000014284	49	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	80
0000000014284	49	2011-10-05 00:00:00+02	\N	SF	151
0000000014284	50	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000014284	51	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000014284	52	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000014284	53	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	232
0000000014284	54	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	179
0000000014284	55	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	127
0000000014284	56	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	383
0000000014284	57	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	80
0000000014284	58	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	80
0000000014284	59	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000014284	59	2011-10-14 00:00:00+02	\N	SF	151
0000000014284	60	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	141
0000000014284	61	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000014284	61	2011-10-15 00:00:00+02	\N	SF	153
0000000014284	62	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000014284	63	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	42
0000000014284	64	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	151
0000000014284	65	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	369
0000000014284	66	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000014284	67	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	151
0000000014284	68	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	141
0000000014284	69	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000014284	70	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	369
0000000014284	71	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000014284	72	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	179
0000000014284	73	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000014284	73	2011-10-13 00:00:00+02	\N	SF	151
0000000014284	74	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	83
0000000014284	75	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	433
0000000014284	76	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	174
0000000014284	76	2011-10-13 00:00:00+02	\N	SF	153
0000000003265	1	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	430
0000000003265	1	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	195
0000000003265	1	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000003265	2	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000003265	2	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	42
0000000003265	2	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000003265	3	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	96
0000000003265	3	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000003265	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	48
0000000003265	4	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000003265	4	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000003265	4	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	364
0000000003265	5	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000003265	5	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000003265	5	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	127
0000000003265	6	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000003265	6	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	48
0000000003265	6	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000003265	7	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000003265	7	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000003265	7	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	139
0000000003265	8	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000003265	8	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	80
0000000003265	8	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000003265	9	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000003265	9	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000003265	9	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	232
0000000003265	10	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	432
0000000003265	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	255
0000000003265	10	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000003265	11	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000003265	11	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	364
0000000003265	11	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000003265	12	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	124
0000000003265	12	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000003265	12	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	255
0000000003265	13	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	179
0000000003265	13	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	364
0000000003265	13	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000003265	14	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	174
0000000003265	14	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	48
0000000003265	14	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	153
0000000003265	15	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	326
0000000003265	15	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	153
0000000003265	15	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	83
0000000003265	16	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000003265	16	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000003265	16	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	199
0000000003265	17	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	426
0000000003265	17	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	127
0000000003265	17	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000003265	18	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000003265	18	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	153
0000000003265	18	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	100
0000000003265	19	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000003265	19	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	232
0000000003265	19	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000003265	20	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000003265	20	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	80
0000000003265	20	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000003265	21	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000003265	21	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000003265	21	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	195
0000000003265	22	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000003265	22	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	433
0000000003265	22	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000003265	23	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000003265	23	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000003265	23	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	100
0000000003265	24	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	174
0000000003265	24	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	83
0000000003265	24	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000003265	25	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000003265	25	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	100
0000000003265	25	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000003265	26	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000003265	26	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	195
0000000003265	26	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000003265	27	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	326
0000000003265	27	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000003265	27	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	195
0000000003265	28	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	302
0000000003265	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	199
0000000003265	28	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000003265	29	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	369
0000000003265	29	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	255
0000000003265	29	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	153
0000000003265	30	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000003265	30	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	151
0000000003265	30	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	139
0000000003265	31	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000003265	31	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000003265	31	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	80
0000000003265	32	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	179
0000000003265	32	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000003265	32	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	80
0000000003265	33	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000003265	33	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000003265	33	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	80
0000000003265	34	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000003265	34	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000003265	34	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	433
0000000003265	35	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	203
0000000003265	35	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	80
0000000003265	35	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000003265	36	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	302
0000000003265	36	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000003265	36	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	83
0000000003265	37	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000003265	37	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000003265	37	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	364
0000000003265	38	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	426
0000000003265	38	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000003265	38	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	80
0000000003265	39	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000003265	39	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000003265	39	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	153
0000000003265	40	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	326
0000000003265	40	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	153
0000000003265	40	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	232
0000000003265	41	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000003265	41	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000003265	41	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	199
0000000003265	42	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	369
0000000003265	42	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000003265	42	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	199
0000000003265	43	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000003265	43	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000003265	43	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	42
0000000003265	44	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000003265	44	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000003265	44	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	80
0000000003265	45	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000003265	45	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000003265	45	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	139
0000000003265	46	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	123
0000000003265	46	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	139
0000000003265	46	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000003265	47	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	174
0000000003265	47	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	199
0000000003265	47	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000003265	48	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	369
0000000003265	48	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	383
0000000003265	48	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000003265	49	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000003265	49	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	364
0000000003265	49	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	151
0000000003265	50	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	52
0000000003265	50	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000003265	50	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	139
0000000003265	51	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000003265	51	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000003265	51	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	100
0000000003265	52	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000003265	52	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	199
0000000003265	52	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000003265	53	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	432
0000000003265	53	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000003265	53	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	232
0000000003265	54	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000003265	54	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	151
0000000003265	54	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	83
0000000003265	55	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	369
0000000003265	55	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	139
0000000003265	55	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000003265	56	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	203
0000000003265	56	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	83
0000000003265	56	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	153
0000000003265	57	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000003265	57	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000003265	57	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	127
0000000003265	58	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	174
0000000003265	58	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000003265	58	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	255
0000000003265	59	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000003265	59	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	100
0000000003265	59	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	151
0000000003265	60	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000003265	60	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000003265	60	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	199
0000000003265	61	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000003265	61	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	153
0000000003265	61	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	139
0000000003265	62	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	52
0000000003265	62	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	100
0000000003265	62	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000003265	63	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	432
0000000003265	63	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	199
0000000003265	63	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000003265	64	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000003265	64	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	364
0000000003265	64	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000003265	65	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000003265	65	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	48
0000000003265	65	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000003265	66	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	141
0000000003265	66	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	364
0000000003265	66	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000003265	67	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000003265	67	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	153
0000000003265	67	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	139
0000000003265	68	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000003265	68	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000003265	68	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	48
0000000003265	69	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000003265	69	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000003265	69	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	383
0000000003265	70	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	426
0000000003265	70	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	100
0000000003265	70	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000003265	71	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000003265	71	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	433
0000000003265	71	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000003265	72	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000003265	72	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	83
0000000003265	72	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	151
0000000014579	1	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	141
0000000014579	1	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	383
0000000014579	1	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000014579	2	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	203
0000000014579	2	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	83
0000000014579	2	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	151
0000000014579	3	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000014579	3	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	48
0000000014579	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000014579	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000014579	4	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000014579	4	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	364
0000000014579	5	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000014579	5	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	100
0000000014579	6	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000014579	6	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	80
0000000014579	7	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	203
0000000014579	7	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	42
0000000014579	8	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000014579	8	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000014579	9	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000014579	9	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000014579	9	2011-10-15 00:00:00+02	\N	TF	48
0000000014579	10	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000014579	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000014579	11	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000014579	11	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	195
0000000014579	12	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	141
0000000014579	12	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	151
0000000014579	13	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	430
0000000014579	13	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000014579	14	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	124
0000000014579	14	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	364
0000000014579	15	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	302
0000000014579	15	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	195
0000000014579	16	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000014579	16	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000014579	17	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	432
0000000014579	17	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000014579	17	2011-10-13 00:00:00+02	\N	TF	383
0000000014579	18	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	426
0000000014579	18	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	364
0000000014579	19	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000014579	19	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	80
0000000014579	20	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	302
0000000014579	20	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000000541	1	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	426
0000000000541	1	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	100
0000000000541	1	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000000541	2	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	432
0000000000541	2	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000000541	2	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	48
0000000000541	3	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	123
0000000000541	3	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000000541	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	80
0000000000541	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	124
0000000000541	4	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	232
0000000000541	4	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000000541	5	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	179
0000000000541	5	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	151
0000000000541	5	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	364
0000000000541	6	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000000541	6	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000541	6	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	433
0000000000541	7	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	302
0000000000541	7	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000000541	7	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	127
0000000000541	8	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000000541	8	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	364
0000000000541	8	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000000541	9	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	302
0000000000541	9	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	195
0000000000541	9	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000000541	10	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	203
0000000000541	10	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	255
0000000000541	10	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000000541	11	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	432
0000000000541	11	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000000541	11	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	80
0000000000541	12	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000000541	12	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	199
0000000000541	12	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	151
0000000000541	13	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000000541	13	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000000541	13	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	42
0000000000541	14	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000000541	14	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	433
0000000000541	14	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	153
0000000000541	15	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	179
0000000000541	15	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	100
0000000000541	15	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000000541	16	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	52
0000000000541	16	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	151
0000000000541	16	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	127
0000000000541	17	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	52
0000000000541	17	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000000541	17	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	364
0000000000541	18	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	369
0000000000541	18	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	42
0000000000541	18	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	153
0000000000541	19	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	124
0000000000541	19	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	153
0000000000541	19	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	364
0000000000541	20	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	430
0000000000541	20	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000000541	20	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	127
0000000000541	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000000541	21	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000000541	21	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	48
0000000000541	22	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	430
0000000000541	22	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	80
0000000000541	22	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	153
0000000000541	23	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000000541	23	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	153
0000000000541	23	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	83
0000000000541	24	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000000541	24	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000000541	24	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	153
0000000000541	25	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	369
0000000000541	25	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	364
0000000000541	25	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000000541	26	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	179
0000000000541	26	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	42
0000000000541	26	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000000541	27	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000000541	27	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	151
0000000000541	27	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	232
0000000000541	28	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	141
0000000000541	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000000541	28	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	83
0000000000541	29	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	426
0000000000541	29	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	364
0000000000541	29	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000000541	30	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	432
0000000000541	30	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000000541	30	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	255
0000000000541	31	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	123
0000000000541	31	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	139
0000000000541	32	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	174
0000000000541	32	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	364
0000000000813	1	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000000813	1	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	151
0000000000813	2	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	3	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	153
0000000000813	4	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	151
0000000000813	4	2011-10-16 00:00:00+02	\N	SF	127
0000000000813	5	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	96
0000000000813	6	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	124
0000000000813	7	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000000813	8	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	232
0000000000813	9	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	430
0000000000813	9	2011-10-13 00:00:00+02	\N	SF	153
0000000000813	10	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	199
0000000000813	10	2011-10-13 00:00:00+02	\N	SF	153
0000000000813	11	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	96
0000000000813	12	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	80
0000000000813	13	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	203
0000000000813	14	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	426
0000000000813	15	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	96
0000000000813	15	2011-10-16 00:00:00+02	\N	SF	153
0000000000813	16	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	17	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	153
0000000000813	18	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000000813	19	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	96
0000000000813	20	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000000813	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	124
0000000000813	22	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	195
0000000000813	23	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	42
0000000000813	24	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	153
0000000000813	25	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	151
0000000000813	26	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000000813	27	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	174
0000000000813	28	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	364
0000000000813	29	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	430
0000000000813	30	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	31	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	430
0000000000813	32	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	127
0000000000813	33	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	124
0000000000813	34	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	48
0000000000813	35	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	42
0000000000813	36	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	124
0000000000813	37	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	199
0000000000813	38	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	96
0000000000813	39	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	153
0000000000813	40	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	383
0000000000813	41	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	42	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	43	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	141
0000000000813	44	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	151
0000000000813	45	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000000813	46	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	199
0000000000813	46	2011-10-16 00:00:00+02	\N	SF	153
0000000021472	1	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	96
0000000000813	47	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000000813	48	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	174
0000000000813	48	2011-10-14 00:00:00+02	\N	SF	153
0000000000813	49	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000000813	50	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	174
0000000000813	51	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	123
0000000000813	51	2011-10-16 00:00:00+02	\N	SF	151
0000000000813	52	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	174
0000000000813	53	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	151
0000000000813	54	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	141
0000000000813	55	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	151
0000000000813	56	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	151
0000000026198	1	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	52
0000000026198	1	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	364
0000000026198	1	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000026198	2	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	430
0000000026198	2	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	48
0000000026198	2	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000026198	3	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000026198	3	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	151
0000000026198	3	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	139
0000000026198	4	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	124
0000000026198	4	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	42
0000000026198	4	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	151
0000000026198	5	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	203
0000000026198	5	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	195
0000000026198	5	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	151
0000000026198	6	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	52
0000000026198	6	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	364
0000000026198	6	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000026198	7	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	124
0000000026198	7	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000026198	7	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	139
0000000026198	8	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000026198	8	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	153
0000000026198	8	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	83
0000000026198	9	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	432
0000000026198	9	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	151
0000000026198	9	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	255
0000000026198	10	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	124
0000000026198	10	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	232
0000000026198	10	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	153
0000000026198	11	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	203
0000000026198	11	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	83
0000000026198	11	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000026198	12	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	96
0000000026198	12	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	153
0000000026198	12	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	255
0000000026198	13	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	141
0000000026198	13	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	433
0000000026198	13	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	153
0000000026198	14	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	369
0000000026198	14	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	83
0000000026198	14	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	153
0000000026198	15	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	96
0000000026198	15	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	151
0000000026198	15	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	139
0000000026198	16	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	141
0000000026198	16	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	80
0000000026198	16	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000026198	17	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	369
0000000026198	17	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	83
0000000026198	17	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000026198	18	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	203
0000000026198	18	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	153
0000000026198	18	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	364
0000000026198	19	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000026198	19	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	127
0000000026198	19	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	151
0000000026198	20	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	179
0000000026198	20	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	153
0000000026198	20	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	100
0000000026198	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	174
0000000026198	21	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	80
0000000026198	21	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000026198	22	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	203
0000000026198	22	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	195
0000000026198	22	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	153
0000000026198	23	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	174
0000000026198	23	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	151
0000000026198	23	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	100
0000000026198	24	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	96
0000000026198	24	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	153
0000000026198	24	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	83
0000000026198	25	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000026198	25	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	151
0000000026198	25	2011-07-18 00:00:00+02	2011-07-18 00:00:00+02	TF	42
0000000026198	26	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	174
0000000026198	26	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	433
0000000026198	26	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	153
0000000026198	27	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	430
0000000026198	27	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	100
0000000026198	27	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	151
0000000026198	28	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	426
0000000026198	28	2011-03-20 00:00:00+01	2011-03-23 00:00:00+01	SF	139
0000000026198	28	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	151
0000000026198	29	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	96
0000000026198	29	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	151
0000000026198	29	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	232
\.


--
-- Data for Name: generolibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY generolibro (isbn, genero) FROM stdin;
0000000011617	English wit and humor -- Periodicals
0000000011617	AP
0000000002710	France -- History -- Louis XIV, 1643-1715 -- Fiction
0000000002710	PQ
0000000010743	England -- Fiction
0000000010743	Adventure stories
0000000010743	Smugglers -- Fiction
0000000010743	Treasure troves -- Fiction
0000000010743	PR
0000000010743	PZ
0000000000711	Adventure stories
0000000000711	Africa -- Fiction
0000000000711	Quatermain, Allan (Fictitious character) -- Fiction
0000000000711	Hunting guides -- Fiction
0000000000711	PR
0000000002713	Africa, East -- Fiction
0000000002713	PR
0000000001690	Quatermain, Allan (Fictitious character) -- Fiction
0000000001690	PR
0000000001711	Zulu (African people) -- Fiction
0000000001711	Zululand (South Africa) -- History -- Fiction
0000000001711	Historical fiction
0000000001711	PR
0000000002841	Fantasy fiction, English
0000000002841	PR
0000000000215	Adventure stories
0000000000215	Nature stories
0000000000215	Dogs -- Fiction
0000000000215	Sled dogs -- Fiction
0000000000215	Pet theft -- Fiction
0000000000215	Animal welfare -- Fiction
0000000000215	Klondike River Valley (Yukon) -- Fiction
0000000000215	Feral dogs -- Fiction
0000000000215	PS
0000000000589	Scotland -- History -- 18th century -- Fiction
0000000000589	PR
0000000003657	Animal behavior
0000000003657	Hunting
0000000003657	SK
0000000006693	Ethnology -- Africa
0000000006693	GN
0000000003233	Sudan -- Description and travel
0000000003233	Albert, Lake (Congo and Uganda)
0000000003233	Nile River
0000000003233	DT
0000000002225	Sea stories
0000000002225	Saltwater fishing -- Fiction
0000000002225	Bildungsromans
0000000002225	Fishing boats -- Fiction
0000000002225	Fishers -- Fiction
0000000002225	Grand Banks of Newfoundland -- Fiction
0000000002225	Children of the rich -- Fiction
0000000002225	Teenage boys -- Fiction
0000000002225	Rescues -- Fiction
0000000002225	PR
0000000002681	Historical fiction
0000000002681	Swordsmen -- Fiction
0000000002681	France -- History -- Louis XIV, 1643-1715 -- Fiction
0000000002681	Adventure and adventurers -- Fiction
0000000002681	PQ
0000000006886	Harari language
0000000006886	Horn of Africa -- Description and travel
0000000006886	Harar -- Description and travel
0000000006886	DT
0000000002759	Historical fiction
0000000002759	Swordsmen -- Fiction
0000000002759	France -- History -- Louis XIV, 1643-1715 -- Fiction
0000000002759	Adventure and adventurers -- Fiction
0000000002759	PQ
0000000005157	Africa, Central -- Description and travel
0000000005157	Livingstone, David, 1813-1873
0000000005157	DT
0000000005305	Niger River
0000000005305	Africa -- Discovery and exploration
0000000005305	DT
0000000017164	Africa, Central -- Description and travel
0000000017164	Africa, North -- Description and travel
0000000017164	Richardson, James, 1806-1851
0000000017164	DT
0000000018544	Africa, Central -- Description and travel
0000000018544	Africa, North -- Description and travel
0000000018544	Richardson, James, 1806-1851
0000000018544	DT
0000000003810	Uganda Railway
0000000003810	Africa, East -- Description and travel
0000000003810	Hunting -- Africa, East
0000000003810	SK
0000000016280	Africa, Central -- Description and travel
0000000016280	Africa, West -- Description and travel
0000000016280	Africa, North -- Description and travel
0000000016280	DT
0000000015399	Equiano, Olaudah, 1745-1797
0000000015399	Slaves -- United States -- Biography
0000000015399	Slaves -- Great Britain -- Biography
0000000015399	HT
0000000021391	Explorers
0000000021391	Africa -- Description and travel
0000000021391	Africa -- Discovery and exploration
0000000021391	DT
0000000014466	South Africa -- Description and travel
0000000014466	South African War, 1899-1902 -- Personal narratives
0000000014466	DT
0000000023638	Scully, W. C. (William Charles), 1855-1943
0000000023638	South Africa -- Description and travel
0000000023638	Authors, South African -- Biography
0000000023638	Frontier and pioneer life -- South Africa
0000000023638	DT
0000000023638	PR
0000000012428	Slavery
0000000017599	Africa, North -- Description and travel
0000000017599	DT
0000000017700	Slave trade -- United States -- History
0000000017700	E300
0000000021060	Slave trade -- Juvenile fiction
0000000021060	PZ
0000000017615	Adventure stories
0000000017615	Africa -- Juvenile fiction
0000000017615	PZ
0000000002761	Africa, East -- Fiction
0000000002761	Adventure and adventurers -- Fiction
0000000002761	PR
0000000002857	Africa -- Fiction
0000000002857	PR
0000000021472	Sailors -- Juvenile fiction
0000000021472	Seafaring life -- Juvenile fiction
0000000021472	Christian life -- Juvenile fiction
0000000021472	Friendship -- Juvenile fiction
0000000021472	Slave trade -- Juvenile fiction
0000000021472	Slavery -- Juvenile fiction
0000000021472	PZ
0000000021490	Adventure and adventurers -- Juvenile fiction
0000000021490	Pirates -- Juvenile fiction
0000000021490	Slave trade -- Juvenile fiction
0000000021490	Africa -- Juvenile fiction
0000000021490	PZ
0000000021448	Conduct of life -- Juvenile fiction
0000000021448	Sailors -- Juvenile fiction
0000000021448	Friendship -- Juvenile fiction
0000000021448	Shipwrecks -- Juvenile fiction
0000000021448	Slavery -- Juvenile fiction
0000000021448	Fatherless families -- Juvenile fiction
0000000021448	Poverty -- Juvenile fiction
0000000021448	Rescues -- Juvenile fiction
0000000021448	Africa -- Juvenile fiction
0000000021448	PZ
0000000001458	Essays
0000000001458	PR
0000000001441	Africa -- Fiction
0000000001441	PR
0000000021899	Africa -- Fiction
0000000021899	PR
0000000021254	Hunting -- Africa, East
0000000021254	Africa, East -- Description and travel
0000000021254	SK
0000000021254	DT
0000000011772	Méduse (Ship)
0000000011772	Shipwrecks -- Senegal
0000000011772	G
0000000016672	Africa, Central -- Description and travel
0000000016672	DT
0000000022575	Geography -- Pictorial works -- Periodicals
0000000022575	Travelers -- Periodicals
0000000022575	Voyages and travels -- Periodicals
0000000022575	G
0000000022568	South Africa -- Social life and customs -- Fiction
0000000022568	PR
0000000001980	Africa -- Fiction
0000000001980	Short stories, English
0000000001980	PR
0000000010633	Slavery
0000000002046	Children of presidents -- Fiction
0000000002046	Women slaves -- Fiction
0000000002046	Jefferson, Thomas, 1743-1826 -- Relations with women -- Fiction
0000000002046	African American families -- Fiction
0000000002046	Domestic fiction
0000000002046	Illegitimate children -- Fiction
0000000002046	African American women -- Fiction
0000000002046	PS
0000000000408	African Americans
0000000000408	E151
0000000015359	Africa -- History
0000000015359	Black race
0000000015359	HT
0000000014976	Lynching
0000000014976	HV
0000000002095	Women slaves -- Fiction
0000000002095	Domestic fiction
0000000002095	Illegitimate children -- Fiction
0000000002095	African American families -- Fiction
0000000002095	African American women -- Fiction
0000000002095	PS
0000000019746	Failure (Psychology) -- Fiction
0000000019746	City and town life -- Fiction
0000000019746	Rich people -- Fiction
0000000019746	North Carolina -- Fiction
0000000019746	Psychological fiction
0000000019746	Race relations -- Fiction
0000000019746	Racism -- Fiction
0000000019746	United States -- History -- Civil War, 1861-1865 -- Veterans -- Fiction
0000000019746	PS
0000000014977	African Americans -- History -- 1877-1964
0000000014977	Lynching -- United States
0000000014977	Lynching -- United States -- Statistics
0000000014977	HV
0000000014975	Lynching
0000000014975	HV
0000000020677	Atheism
0000000020677	Christianity -- Controversial literature
0000000020677	Anarchism
0000000020677	HX
0000000026600	Anarchism -- Periodicals
0000000026600	HX
0000000027118	Anarchism -- Periodicals
0000000027118	HX
0000000027262	Anarchism -- Periodicals
0000000027262	HX
0000000027341	Anarchism -- Periodicals
0000000027341	HX
0000000000444	Philosophy
0000000000444	Behavior
0000000000444	Economics
0000000000444	BF
0000000000444	HB
0000000004602	Evil, Non-resistance to
0000000004602	Christianity
0000000004602	BR
0000000008700	Embryology, Human
0000000008700	Evolution
0000000008700	Anatomy, Comparative
0000000008700	Human beings -- Origin
0000000008700	QH
0000000002634	Paleontology
0000000002634	Science
0000000002634	Bible and science
0000000002634	Evolution
0000000002634	Q
0000000000689	Fiction
0000000000689	Short stories
0000000000689	Russian literature
0000000000689	PG
0000000018869	Anthropology
0000000018869	Indians of North America
0000000018869	E011
0000000015293	Human geography
0000000015293	Human beings -- Effect of environment on
0000000015293	GF
0000000014028	Ethnology
0000000014028	Anthropology
0000000014028	GN
0000000018273	Ethnology -- Philippines -- Mindanao Island
0000000018273	GN
0000000014648	Parsees
0000000014648	Zoroastrianism
0000000014648	DS
0000000013831	Japan -- Civilization
0000000013831	National characteristics, Japanese
0000000013831	Japan -- Social life and customs
0000000013831	DS
0000000020116	Ancestor worship -- Oceania
0000000020116	Oceania -- Religion
0000000020116	Immortality -- Comparative studies
0000000020116	Funeral rites and ceremonies -- Oceania
0000000020116	Burial
0000000020116	Oceania -- Social life and customs.
0000000020116	BL
0000000017186	Archaeology
0000000017186	Architecture -- History
0000000017186	CC
0000000013642	African Americans -- Periodicals
0000000013642	E151
0000000020411	Witchcraft -- Great Britain
0000000020411	Ethnology
0000000020411	BF
0000000020665	Costume -- Netherlands -- History
0000000020665	GT
0000000018236	Jews -- Netherlands -- Amsterdam
0000000018236	DJ
0000000007978	Tuscarora Indians
0000000007978	Iroquois Indians
0000000007978	E011
0000000008112	Indians of North America -- Dwellings
0000000008112	Indians of North America -- Social life and customs
0000000008112	E011
0000000016572	Yosemite Valley (Calif.)
0000000016572	Indians of North America -- California
0000000016572	E011
0000000017404	Aboriginal Australians -- Kinship
0000000017404	Tribes
0000000017404	Marriage -- History
0000000017404	Consanguinity
0000000017404	Ethnology -- Australia
0000000017404	Kinship
0000000017404	Aboriginal Australians -- Social life and customs
0000000017404	GN
0000000017280	Anthropology
0000000017280	Sociology
0000000017280	GN
0000000017262	Indians of North America -- Languages -- Bibliography
0000000017262	E011
0000000001323	Peru -- History -- Conquest, 1522-1548
0000000001323	Incas
0000000001323	F3401
0000000022601	Hiawatha, 15th cent.
0000000022601	Iroquois Indians
0000000022601	E011
0000000017910	Mafulus
0000000017910	Fuyuge language
0000000017910	Ethnology -- New Guinea
0000000017910	GN
0000000014400	Egypt -- Antiquities
0000000014400	Art -- Egypt
0000000014400	DT
0000000014400	N
0000000019115	Great Britain -- Antiquities, Roman
0000000019115	Romans -- Great Britain
0000000019115	DA
0000000015126	Indians of North America -- Newfoundland and Labrador
0000000015126	Newfoundland and Labrador -- History
0000000015126	Indians of North America -- Origin
0000000015126	Beothuk Indians
0000000015126	F1001
0000000017487	Hohokam architecture
0000000017487	Arizona -- Antiquities
0000000017487	Casa Grande National Monument (Ariz.)
0000000017487	Indians of North America -- Arizona
0000000017487	E011
0000000024505	Technology, History of
0000000024505	England -- Description and travel
0000000024505	Archaeology
0000000024505	England -- History
0000000024505	Dean, Forest of (England : Forest)
0000000024505	DA
0000000017606	United States National Museum -- Collections
0000000017606	Eskimos -- Implements -- Catalogs
0000000017606	Throwing-sticks -- Catalogs
0000000017606	E011
0000000019856	Pueblo Indians -- Antiquities
0000000019856	Pueblo architecture
0000000019856	E011
0000000019606	Zuni Indians -- Antiquities
0000000019606	Hopi Indians -- Antiquities
0000000019606	E011
0000000013575	Archaeology
0000000013575	Oriental antiquities
0000000013575	CC
0000000024654	Babylonia -- History
0000000024654	DS
0000000017774	Architecture
0000000017774	NA
0000000012625	Sullivan, Louis H., 1856-1924
0000000012625	Architecture
0000000012625	Architecture -- United States
0000000012625	Decoration and ornament
0000000012625	NA
0000000016531	St. Paul's Cathedral (London, England)
0000000016531	DA
0000000010479	Preston (Lancashire, England) -- Church history
0000000010479	DA
0000000022990	Strassburger Münster
0000000022990	NA
0000000022832	Canterbury Cathedral
0000000022832	NA
0000000019881	Carlisle Cathedral (Carlisle, England)
0000000019881	NA
0000000020191	Durham Cathedral
0000000020191	Church of England. Diocese of Durham
0000000020191	NA
0000000019487	Hereford Cathedral
0000000019487	NA
0000000021511	St. Bartholomew-the-Great (Church : London, England)
0000000021511	St. Bartholomew-the-Less (Church : London, England)
0000000021511	London (England) -- Church history
0000000021511	NA
0000000022260	Deerhurst (England). Priory church
0000000022260	Tewkesbury Abbey
0000000022260	NA
0000000020967	Peterborough Cathedral -- Guidebooks
0000000020967	Peterborough Cathedral -- History
0000000020967	DA
0000000020967	NA
0000000019998	Architecture, Domestic
0000000019998	Domestic animals
0000000019998	NA
0000000014987	Architecture -- Periodicals
0000000014987	NA
0000000015020	Architecture -- Periodicals
0000000015020	NA
0000000012648	Architecture
0000000012648	Theosophy
0000000012648	NA
0000000023593	Architecture
0000000023593	Painting
0000000023593	Turner, J. M. W. (Joseph Mallord William), 1775-1851
0000000023593	Pre-Raphaelitism
0000000023593	N
0000000019715	Norwich Cathedral (Norwich, England)
0000000019715	NA
0000000018783	Bermejo River (Bolivia and Argentina) -- Discovery and exploration
0000000018783	Gran Chaco -- Discovery and exploration
0000000018783	F2801
0000000018289	Argentina -- Discovery and exploration
0000000018289	Patagonia (Argentina and Chile) -- Description and travel
0000000018289	F2801
0000000019643	Argentina -- History -- War of Independence, 1810-1817
0000000019643	F2801
0000000018157	Garay, Juan de, 1528?-1583
0000000018157	Buenos Aires (Argentina) -- History
0000000018157	America -- Early accounts to 1600
0000000018157	Argentina -- History -- 1535-1617 -- Sources
0000000018157	Paraguay -- History -- To 1811 -- Sources
0000000018157	F2801
0000000018798	Argentina -- History -- 1776-1810
0000000018798	Patagonia (Argentina and Chile) -- History
0000000018798	F2801
0000000020401	Paraguay -- History -- To 1811
0000000020401	America -- Early accounts to 1600
0000000020401	Mendoza, Pedro de, 1487?-1537
0000000020401	Indians of South America
0000000020401	America -- Discovery and exploration -- Spanish
0000000020401	Argentina -- History -- 1535-1617
0000000020401	Rio de la Plata (Argentina and Uruguay)
0000000020401	F2801
0000000020401	F2661
0000000025317	America -- Discovery and exploration -- Spanish -- Poetry
0000000025317	America -- Early accounts to 1600
0000000025317	Argentina -- History -- 1535-1617 -- Poetry
0000000025317	Rio de la Plata Region (Argentina and Uruguay) -- History -- Poetry
0000000025317	PQ
0000000020852	Paraguay River
0000000020852	F2801
0000000018723	Mountain passes -- Andes
0000000018723	Argentina -- Boundaries
0000000018723	Negro River (Río Negro, Argentina)
0000000018723	Colorado River (Mendoza and Neuquén-Buenos Aires, Argentina)
0000000018723	Pampas (Argentina)
0000000018723	Cerro y Zamudio, José Santiago
0000000018723	Buenos Aires (Argentina : Province) -- Boundaries
0000000018723	Argentina -- Discovery and exploration
0000000018723	F2801
0000000007446	PR
0000000004028	Cellini, Benvenuto, 1500-1571
0000000004028	Sculptors -- Italy -- Biography
0000000004028	NB
0000000018937	Children's poetry
0000000018937	Children's stories
0000000018937	Fairy tales
0000000018937	PZ
0000000019570	Van Dyck, Anthony, Sir, 1599-1641
0000000019570	ND
0000000022500	Hogarth, William, 1697-1764
0000000022500	ND
0000000020607	Rembrandt Harmenszoon van Rijn, 1606-1669
0000000020607	ND
0000000022564	Artists
0000000022564	N
0000000017289	Dance -- History
0000000017289	GV
0000000017244	Art, French
0000000017244	Painting, French
0000000017244	Sculpture, French
0000000017244	N
0000000014056	Impressionism (Art)
0000000014056	Painters -- France
0000000014056	Painting -- France -- History
0000000014056	ND
0000000017730	Indian textile fabrics -- North America
0000000017730	Decoration and ornament
0000000017730	Textile industry
0000000017730	Textile fabrics
0000000017730	TS
0000000017730	E011
0000000005712	Sculpture
0000000005712	Panama-Pacific International Exposition (1915 : San Francisco, Calif.)
0000000005712	NB
0000000013029	Motion pictures
0000000013029	PN
0000000016180	Rome (Italy) -- Description and travel
0000000016180	DG
0000000022574	Engraving
0000000022574	Portraits
0000000022574	NE
0000000006841	Greece -- History
0000000006841	DF
0000000018733	Sculpture -- Italy -- History
0000000018733	NB
0000000020915	Colors
0000000020915	Painting -- Technique
0000000020915	Color
0000000020915	ND
0000000020195	Wood-engraving -- Printing
0000000020195	Color prints
0000000020195	Wood-engraving -- Technique
0000000020195	NE
0000000000167	Daguerreotype
0000000000167	Photography
0000000000167	TR
0000000014264	Drawing
0000000014264	NC
0000000013755	British Museum
0000000013755	DA
0000000006932	Painting -- Juvenile literature
0000000006932	Art -- Juvenile literature
0000000006932	Painters -- Juvenile literature
0000000006932	ND
0000000004060	Renaissance
0000000004060	Arts, Renaissance
0000000004060	Renaissance -- Italy
0000000004060	NX
0000000019980	Art
0000000019980	N
0000000019164	Art
0000000019164	N
0000000004390	Art, Greek -- History
0000000004390	N
0000000013119	Millet, Jean François, 1814-1875
0000000013119	ND
0000000019009	Reynolds, Joshua, Sir, 1723-1792
0000000019009	ND
0000000017215	Rembrandt Harmenszoon van Rijn, 1606-1669
0000000017215	ND
0000000022690	Etching -- Catalogs
0000000022690	Rembrandt Harmenszoon van Rijn, 1606-1669
0000000022690	ND
0000000019602	Rembrandt Harmenszoon van Rijn, 1606-1669
0000000019602	ND
0000000017212	Michelangelo Buonarroti, 1475-1564
0000000017212	N
0000000011242	Michelangelo Buonarroti, 1475-1564
0000000011242	N
0000000022522	Short stories
0000000022522	PQ
0000000024726	Art -- History
0000000024726	N
0000000003151	Panama-Pacific International Exposition (1915 : San Francisco, Calif.)
0000000003151	N
0000000028434	Epic poetry, English -- History and criticism
0000000028434	Milton, John, 1608-1674. Paradise lost
0000000028434	Milton, John, 1608-1674 -- Knowledge -- Astronomy
0000000028434	Astronomy in literature
0000000028434	PR
0000000028536	Astronomy in the Bible
0000000028536	Constellations
0000000028536	QB
0000000008172	Astronomy -- History
0000000008172	QB
0000000017370	Indian pottery -- North America
0000000017370	Indian textile fabrics -- North America
0000000017370	E011
0000000015622	Japanning
0000000015622	TP
0000000025267	Astronomy
0000000025267	QB
0000000026556	Astronomy
0000000026556	QB
0000000028752	Astronomy -- Observers' manuals
0000000028752	Astronomy -- Amateurs' manuals
0000000028752	Telescopes
0000000028752	QB
0000000004065	Compass
0000000004065	Hyperspace
0000000004065	Rain-making
0000000004065	Flying-machines
0000000004065	Astronomy
0000000004065	Learning and scholarship
0000000004065	QB
0000000029031	Astronomy -- Great Britain -- History -- 18th century
0000000029031	Herschel, William, Sir, 1738-1822
0000000029031	Astronomers -- Great Britain -- Biography
0000000029031	Astronomy -- Great Britain -- History -- 19th century
0000000029031	QB
0000000034435	Astronomy
0000000034435	QB
0000000024236	Satellites
0000000024236	Moon
0000000024236	Tides
0000000024236	QB
0000000018431	Astronomy
0000000018431	Planets
0000000018431	QB
0000000016767	Astronomy
0000000016767	Telescopes
0000000016767	QB
0000000030607	Australia -- Description and travel
0000000030607	DU
0000000017450	Australia -- Discovery and exploration
0000000017450	Dutch -- Australia
0000000017450	DU
0000000002660	Australia -- Discovery and exploration
0000000002660	Dampier, William, 1652-1715
0000000002660	Pelsaert, Francisco, d. 1630
0000000002660	Tasman, Abel Janszoon, 1603?-1659
0000000002660	DU
0000000007450	Australia -- Discovery and exploration
0000000007450	Napoleon I, Emperor of the French, 1769-1821
0000000007450	Baudin, Nicolas, 1754-1803
0000000007450	DU
0000000015662	New South Wales -- History -- Sources
0000000015662	DU
0000000004521	Explorers -- Australia
0000000004521	DU
0000000004054	Australia -- Description and travel
0000000004054	Gold mines and mining -- Australia
0000000004054	DU
0000000003546	Eureka Stockade (Ballarat, Vic.)
0000000003546	DU
0000000016050	Australia -- Fiction
0000000016050	Gold mines and mining -- Fiction
0000000016050	PS
0000000008730	Country life -- Australia -- Juvenile fiction
0000000008730	Adventure stories, Australian
0000000008730	Australia -- Social conditions -- Juvenile fiction
0000000008730	PR
0000000008730	PZ
0000000000304	Australian poetry
0000000000304	PR
0000000000307	Frontier and pioneer life -- Australia -- Fiction
0000000000307	Short stories, Australian
0000000000307	Australia -- Social life and customs -- Fiction
0000000000307	PR
0000000005113	Natural history -- Queensland
0000000005113	Dunk Island (Qld.)
0000000005113	DU
0000000019274	Shoghi, Effendi, 1897-1957 -- Correspondence
0000000019274	Bahai Faith -- New Zealand
0000000019274	Bahai Faith -- Australia
0000000019274	BP
0000000027099	Frontier and pioneer life -- Australia -- Queensland
0000000027099	Queensland -- History
0000000027099	DU
0000000025527	Dairying -- Australia
0000000025527	SF
0000000024994	Wheat -- Australia
0000000024994	SB
0000000004699	Frontier and pioneer life -- Australia
0000000004699	Northern Territory -- Description and travel
0000000004699	DU
0000000016664	Adelaide (S. Aust.) -- Social life and customs
0000000016664	Melbourne (Vic.) -- Social life and customs
0000000016664	Sydney (N.S.W.) -- Social life and customs
0000000016664	DU
0000000004221	Sheep-shearing -- Australia
0000000004221	SF
0000000025750	Australia -- Fiction
0000000025750	PR
0000000003703	Kangaroos -- Juvenile fiction
0000000003703	PZ
0000000018891	Kangaroos -- Juvenile fiction
0000000018891	PZ
0000000021464	Christian life -- Juvenile fiction
0000000021464	Friendship -- Juvenile fiction
0000000021464	Adventure and adventurers -- Juvenile fiction
0000000021464	Australia -- Juvenile fiction
0000000021464	PZ
0000000026034	Australia -- Fiction
0000000026034	PR
0000000025059	Short stories
0000000025059	Australia -- Fiction
0000000025059	PR
0000000023995	Voyages and travels -- Juvenile fiction
0000000023995	Australia -- Juvenile fiction
0000000023995	PZ
0000000022849	Tasmania -- History
0000000022849	DU
0000000004731	Australia -- History -- 1788-1900 -- Fiction
0000000004731	Brothers and sisters -- Fiction
0000000004731	Family life -- Australia -- Fiction
0000000004731	PR
0000000004731	PZ
0000000021383	Aboriginal Australians -- Juvenile fiction
0000000021383	Animals -- Australia -- Juvenile fiction
0000000021383	Australia -- Juvenile fiction
0000000021383	PZ
0000000019172	China -- Description and travel
0000000019172	DS
0000000003832	Australia -- Fiction
0000000003832	PR
0000000001199	Poetry
0000000001199	PR
0000000003424	Australia -- Fiction
0000000003424	Prisoners -- Fiction
0000000003424	Penal colonies -- Australia -- Fiction
0000000003424	PR
0000000024639	Short stories
0000000024639	Sea stories
0000000024639	Adventure stories, Australian
0000000024639	Pacific Area -- Social life and customs -- Fiction
0000000024639	PR
0000000024807	Short stories
0000000024807	Pacific Area -- Social life and customs -- Fiction
0000000024807	South Pacific Ocean -- Fiction
0000000024807	PR
0000000027977	English language -- Foreign words and phrases -- Maori
0000000027977	Maori language -- Influence on English -- Dictionaries
0000000027977	English language -- Australasia -- Dictionaries
0000000027977	Australian languages -- Influence on English -- Dictionaries
0000000027977	English language -- New Zealand -- Dictionaries
0000000027977	English language -- Australia -- Dictionaries
0000000027977	PE
0000000036826	Comedies
0000000036826	French drama -- 18th century
0000000036826	PQ
0000000023615	Geography -- Pictorial works -- Periodicals
0000000023615	Travelers -- Periodicals
0000000023615	Voyages and travels -- Periodicals
0000000023615	G
0000000005346	Australia -- Discovery and exploration
0000000005346	Ethnology -- Australia
0000000005346	DU
0000000005005	Australia -- Discovery and exploration
0000000005005	Australia -- Description and travel -- To 1850
0000000005005	DU
0000000007509	Australia -- Discovery and exploration
0000000007509	Grant, James, 1771 or 2-1833
0000000007509	Lady Nelson (Ship)
0000000007509	DU
0000000001198	Frontier and pioneer life -- Australia -- Fiction
0000000001198	PR
0000000003833	Folklore -- Australia
0000000003833	GR
0000000003819	Euahlayi (Australian people)
0000000003819	GN
0000000004050	Australia -- Fiction
0000000004050	PR
0000000021518	Australian poetry
0000000021518	PR
0000000004830	Netherlands -- History -- Wars of Independence, 1556-1648
0000000004830	Netherlands -- Church history
0000000004830	DH
0000000000214	Australian poetry
0000000000214	Frontier and pioneer life -- Australia -- Poetry
0000000000214	PR
0000000001036	Frontier and pioneer life -- Australia -- Fiction
0000000001036	Australia -- Fiction
0000000001036	Historical fiction
0000000001036	PR
0000000004975	Western Australia -- Description and travel
0000000004975	Gold mines and mining -- Western Australia
0000000004975	DU
0000000010842	Cook, James, 1728-1779
0000000010842	G
0000000015896	World War, 1914-1918 -- Personal narratives, Australian
0000000015896	World War, 1914-1918 -- Regimental histories -- Australia
0000000015896	Australia. Australian Army. Australian Imperial Force (1914-1921). Australian Field Ambulance, 4th
0000000015896	D501
0000000016588	World War, 1914-1918 -- Personal narratives, English
0000000016588	D501
0000000023050	Conduct of life -- Juvenile fiction
0000000023050	Australia -- Juvenile fiction
0000000023050	PZ
0000000016940	Bahai Faith -- Doctrines
0000000016940	BP
0000000016939	Bahai Faith
0000000016939	BP
0000000016984	Bahai Faith -- Prayers and devotions
0000000016984	BP
0000000019289	Bahai Faith -- Doctrines
0000000019289	BP
0000000019284	Bahai Faith
0000000019284	BP
0000000019238	Bahai Faith
0000000019238	BP
0000000019279	Bahais -- Biography
0000000019279	Bahai Faith
0000000019279	BP
0000000019312	Bahai Faith
0000000019312	BP
0000000019296	Bahai Faith
0000000019296	BP
0000000007114	PQ
0000000023625	Fantasy
0000000023625	Humorous stories
0000000023625	Animals -- Juvenile fiction
0000000023625	Puddings -- Juvenile fiction
0000000023625	Australia -- Juvenile fiction
0000000023625	PZ
0000000016891	America -- History -- Juvenile literature
0000000016891	Australia -- History -- Juvenile literature
0000000016891	PZ
0000000004219	Health
0000000004219	Cooking, Australian
0000000004219	Hygiene
0000000004219	Australia -- Social life and customs
0000000004219	TX
0000000016983	Bahai Faith -- Doctrines
0000000016983	BP
0000000019240	Bahai Faith -- Prayers and devotions
0000000019240	BP
0000000019292	Bahai Faith
0000000019292	BP
0000000019300	Babism
0000000019300	Bahai Faith
0000000019300	BP
0000000019243	Shoghi, Effendi, 1897-1957 -- Correspondence
0000000019243	Bahai Faith -- North America
0000000019243	BP
0000000019254	Bahai Faith -- North America
0000000019254	Shoghi, Effendi, 1897-1957 -- Correspondence
0000000019254	BP
0000000002562	Classical literature
0000000002562	Socrates, 470 BC-399 BC
0000000002562	Comedies
0000000002562	PA
0000000003160	Odysseus (Greek mythology) -- Poetry
0000000003160	Epic poetry, Greek -- Translations into English
0000000003160	Homer -- Translations into English
0000000003160	PA
0000000004094	Chinese literature
0000000004094	Chinese literature -- Translations into English
0000000004094	China -- Maps
0000000004094	China -- History
0000000004094	PL
0000000003100	Chinese literature
0000000003100	Chinese literature -- Translations into English
0000000003100	China -- History
0000000003100	PL
0000000003330	Chinese literature
0000000003330	Chinese literature -- Translations into English
0000000003330	China -- Description and travel -- Maps
0000000003330	China -- History
0000000003330	PL
0000000027315	Birds -- Drama
0000000027315	Athens (Greece) -- Social life and customs -- Drama
0000000027315	Gods, Greek -- Drama
0000000027315	Imaginary societies -- Drama
0000000027315	Comedies
0000000027315	PA
0000000001666	Classical literature
0000000001666	PA
0000000021262	English poetry
0000000021262	PR
0000000017814	Peace movements -- Drama
0000000017814	Comedies
0000000017814	Lysistrata (Fictitious character) -- Drama
0000000017814	Women and peace -- Drama
0000000017814	Greece -- History -- Peloponnesian War, 431-404 B.C. -- Drama
0000000017814	PA
0000000000392	Epic poetry, Italian -- Translations into English
0000000000392	Crusades, First, 1096-1099 -- Poetry
0000000000392	Jerusalem -- History -- Latin Kingdom, 1099-1244 -- Poetry
0000000000392	Godfrey, of Bouillon, ca. 1060-1100 -- Poetry
0000000000392	PQ
0000000001000	Poetry
0000000001000	PQ
0000000027846	Folly -- Early works to 1800
0000000027846	PA
0000000003600	Essays
0000000003600	PQ
0000000001012	Italian poetry -- To 1400
0000000001012	PQ
0000000005500	Philosophy
0000000005500	B
0000000002250	Historical drama
0000000000140	Immigrants -- Fiction
0000000002250	Richard II, King of England, 1367-1400 -- Drama
0000000002250	Great Britain -- History -- Richard II, 1377-1399 -- Drama
0000000002250	PR
0000000001515	Comedies
0000000001515	Moneylenders -- Drama
0000000001515	Jews -- Italy -- Drama
0000000001515	Venice (Italy) -- Drama
0000000001515	PR
0000000002266	Kings and rulers -- Succession -- Drama
0000000002266	Aging parents -- Drama
0000000002266	Kings and rulers -- Drama
0000000002266	Tragedies
0000000002266	Fathers and daughters -- Drama
0000000002266	Inheritance and succession -- Drama
0000000002266	Lear, King (Legendary character) -- Drama
0000000002266	Britons -- Drama
0000000002266	PR
0000000023306	First philosophy
0000000023306	God -- Proof, Ontological
0000000023306	B
0000000018269	Philosophy
0000000018269	Apologetics
0000000018269	B
0000000017941	Fables, French
0000000017941	PQ
0000000030344	Mistresses -- Fiction
0000000030344	Europe -- History -- 17th century -- Fiction
0000000030344	Picaresque literature
0000000030344	Historical fiction
0000000030344	Adventure stories
0000000030344	Women -- Great Britain -- Fiction
0000000030344	Women -- Europe -- Fiction
0000000030344	Great Britain -- History -- Charles II, 1660-1685 -- Fiction
0000000030344	PR
0000000000608	Books
0000000000608	Copyright law
0000000000608	England
0000000000608	Z
0000000000608	PR
0000000004737	Satire, English
0000000004737	PR
0000000030268	Montesquieu, Charles de Secondat, baron de, 1689-1755
0000000030268	PQ
0000000018569	Philosophy -- Dictionaries
0000000018569	B
0000000006828	PR
0000000005427	Education -- Early works to 1800
0000000005427	LB
0000000030433	Education
0000000030433	LB
0000000000804	France -- Fiction
0000000000804	Psychological fiction
0000000000804	Humorous stories
0000000000804	Travelers -- Fiction
0000000000804	Italy -- Fiction
0000000000804	British -- Italy -- Fiction
0000000000804	British -- France -- Fiction
0000000000804	Clergy -- Fiction
0000000000804	PR
0000000000601	Monks -- Fiction
0000000000601	Horror tales
0000000000601	Madrid (Spain) -- Fiction
0000000000601	Gothic fiction
0000000000601	PR
0000000006593	Humorous stories
0000000006593	Bildungsromans
0000000006593	England -- Fiction
0000000006593	Young men -- Fiction
0000000006593	Identity (Psychology) -- Fiction
0000000006593	Foundlings -- Fiction
0000000006593	PR
0000000020577	Comedies
0000000020577	French drama -- 18th century
0000000020577	PQ
0000000025717	Byzantine Empire -- History
0000000025717	Indexes
0000000025717	Rome -- History -- Empire, 30 B.C.-476 A.D.
0000000025717	DG
0000000003743	Rationalism
0000000003743	Philosophy and religion
0000000003743	B
0000000004797	PR
0000000016896	Italy -- History -- 1789-1815 -- Fiction
0000000016896	Italy -- Description and travel
0000000016896	Nobility -- Scotland -- Fiction
0000000016896	Women poets -- Italy -- Fiction
0000000016896	PQ
0000000029549	French drama -- 19th century
0000000029549	PQ
0000000004799	PR
0000000000798	Fiction
0000000000798	French literature
0000000000798	PQ
0000000027942	Knowledge, Theory of
0000000027942	Logic
0000000027942	Science -- Methodology
0000000027942	BC
0000000023297	Italian drama -- 19th century
0000000023297	Tragedies
0000000023297	PQ
0000000022642	Fiction
0000000022642	PQ
0000000027825	Poetry
0000000027825	PQ
0000000004708	PQ
0000000026685	Courtesans -- Egypt -- Alexandria -- Fiction
0000000026685	Alexandria (Egypt) -- Fiction
0000000026685	PQ
0000000030719	Comedies
0000000030719	PA
0000000005946	Spain -- Social life and customs -- 16th century -- Fiction
0000000005946	Knights and knighthood -- Spain -- Fiction
0000000005946	Picaresque literature
0000000005946	Romances
0000000005946	PQ
0000000005267	PS
0000000026884	World War, 1914-1918 -- Personal narratives
0000000026884	World War, 1914-1918 -- Hospitals, charities, etc.
0000000026884	D501
0000000002814	Short stories
0000000002814	Dublin (Ireland) -- Fiction
0000000002814	PR
0000000000140	Meat industry and trade -- Fiction
0000000000140	Working class -- Fiction
0000000000140	Lithuanian Americans -- Fiction
0000000000140	Political fiction
0000000000140	Stockyards -- Fiction
0000000000140	Chicago (Ill.) -- Fiction
0000000000140	PS
0000000028948	Family -- England -- Midlands -- Fiction
0000000028948	Domestic fiction
0000000028948	Midlands (England) -- Fiction
0000000028948	PR
0000000004240	Love stories
0000000004240	Male friendship -- Fiction
0000000004240	Psychological fiction
0000000004240	Coal mines and mining -- Fiction
0000000004240	Women -- England -- Fiction
0000000004240	Sisters -- Fiction
0000000004240	Midlands (England) -- Fiction
0000000004240	PR
0000000000217	Working class families -- Fiction
0000000000217	Young men -- Fiction
0000000000217	England -- Fiction
0000000000217	Domestic fiction
0000000000217	Bildungsromans
0000000000217	Autobiographical fiction
0000000000217	PR
0000000029772	B
0000000027573	Political science
0000000027573	Law -- Philosophy
0000000027573	State, The
0000000027573	Jurisprudence
0000000027573	JC
0000000022048	Napoleon III, Emperor of the French, 1808-1873
0000000022048	France -- History -- Second Republic, 1848-1852
0000000022048	France -- History -- Coup d'état, 1851
0000000022048	DC
0000000025344	Adultery -- Fiction
0000000025344	Historical fiction
0000000025344	Illegitimate children -- Fiction
0000000025344	Psychological fiction
0000000025344	Puritans -- Fiction
0000000025344	Boston (Mass.) -- History -- Colonial period, ca. 1600-1775 -- Fiction
0000000025344	Clergy -- Fiction
0000000025344	Married women -- Fiction
0000000025344	Revenge -- Fiction
0000000025344	Triangles (Interpersonal relations) -- Fiction
0000000025344	Women immigrants -- Fiction
0000000025344	PS
0000000030107	Economics
0000000030107	HB
0000000020580	France -- History -- Second Republic, 1848-1852
0000000020580	Napoleon III, Emperor of the French, 1808-1873
0000000020580	France -- History -- Coup d'état, 1851
0000000020580	DC
0000000025053	Christian saints -- Fiction
0000000025053	Christian fiction
0000000025053	Anthony, of Egypt, Saint, ca. 250-355 or 6 -- Fiction
0000000025053	Egypt -- Fiction
0000000025053	Biographical fiction
0000000025053	PQ
0000000028885	Fantasy
0000000028885	PR
0000000028885	PZ
0000000000074	Male friendship -- Fiction
0000000000074	Boys -- Fiction
0000000000074	Adventure stories
0000000000074	Humorous stories
0000000000074	Bildungsromans
0000000000074	Sawyer, Tom (Fictitious character) -- Fiction
0000000000074	Runaway children -- Fiction
0000000000074	Child witnesses -- Fiction
0000000000074	Mississippi River Valley -- Fiction
0000000000074	Missouri -- Fiction
0000000000074	PZ
0000000000074	PS
0000000006099	PQ
0000000002413	Adultery -- Fiction
0000000002413	Domestic fiction
0000000002413	France -- Fiction
0000000002413	Physicians' spouses -- Fiction
0000000002413	Married women -- Fiction
0000000002413	Middle class -- Fiction
0000000002413	Suicide victims -- Fiction
0000000002413	PQ
0000000026710	PQ
0000000000061	Communism
0000000000061	Socialism
0000000000061	HX
0000000015995	Carthage (Extinct city) -- History -- Fiction
0000000015995	PQ
0000000027401	English poetry
0000000027401	Ballads, English
0000000027401	PR
0000000000110	Man-woman relationships -- Fiction
0000000000110	Women domestics -- Fiction
0000000000110	Poor families -- Fiction
0000000000110	Wessex (England) -- Fiction
0000000000110	Didactic fiction
0000000000110	Triangles (Interpersonal relations) -- Fiction
0000000000110	Children of the rich -- Fiction
0000000000110	Children of clergy -- Fiction
0000000000110	Women murderers -- Fiction
0000000000110	Pastoral fiction
0000000000110	PR
0000000000153	Stonemasons -- Fiction
0000000000153	Illegitimate children -- Fiction
0000000000153	Children -- Death -- Fiction
0000000000153	Unmarried couples -- Fiction
0000000000153	Adultery -- Fiction
0000000000153	Wessex (England) -- Fiction
0000000000153	Didactic fiction
0000000000153	Love stories
0000000000153	PR
0000000020974	Dreyfus, Alfred, 1859-1935
0000000020974	Esterhazy, Ferdinand Walsin, 1847-1923
0000000020974	France -- Politics and government -- 1870-1940
0000000020974	Treason -- France -- History -- 19th century
0000000020974	Antisemitism -- France -- History -- 19th century
0000000020974	DC
0000000018545	Fiction
0000000018545	PQ
0000000004788	PQ
0000000000160	Adultery -- Fiction
0000000000160	Women -- Louisiana -- New Orleans -- Social conditions -- Fiction
0000000000160	Self-actualization (Psychology) -- Fiction
0000000000160	New Orleans (La.) -- Fiction
0000000000160	Louisiana -- Social life and customs -- Fiction
0000000000160	PS
0000000000047	Teachers -- Fiction
0000000000047	Orphans -- Fiction
0000000000047	Islands -- Fiction
0000000000047	Prince Edward Island -- History -- 20th century -- Fiction
0000000000047	Canada -- History -- 1914-1945 -- Fiction
0000000000047	PZ
0000000000808	Operas -- Librettos
0000000000808	ML
0000000007508	PR
0000000023917	Tragedies
0000000023917	Salome (Biblical figure) -- Drama
0000000023917	PR
0000000029208	Tragedies
0000000029208	Salome (Biblical figure) -- Drama
0000000029208	PR
0000000000996	Knights and knighthood -- Spain -- Fiction
0000000000996	Picaresque literature
0000000000996	Romances
0000000000996	Spain -- Social life and customs -- 16th century -- Fiction
0000000000996	PQ
0000000001661	Holmes, Sherlock (Fictitious character) -- Fiction
0000000001661	Detective and mystery stories, English
0000000001661	Private investigators -- England -- Fiction
0000000001661	PR
0000000000113	Yorkshire (England) -- Fiction
0000000000113	Gardens -- Fiction
0000000000113	England -- Fiction
0000000000113	People with disabilities -- Fiction
0000000000113	PZ
0000000000113	PS
0000000013610	Sex
0000000013610	Sex (Psychology)
0000000013610	HQ
0000000013611	Sex
0000000013611	Sex (Psychology)
0000000013611	HQ
0000000023700	Allegories
0000000023700	Frame-stories
0000000023700	Plague -- Europe -- History -- Fiction
0000000023700	Storytelling -- Fiction
0000000023700	PQ
0000000019591	Allegories
0000000019591	Frame-stories
0000000019591	Plague -- Europe -- History -- Fiction
0000000019591	Storytelling -- Fiction
0000000019591	PQ
0000000002021	Revolutions -- Fiction
0000000002021	Sailors -- Fiction
0000000002021	Latin America -- Fiction
0000000002021	Political fiction
0000000002021	Sea stories
0000000002021	PR
0000000008800	Poetry
0000000008800	PQ
0000000001400	Man-woman relationships -- Fiction
0000000001400	Ex-convicts -- Fiction
0000000001400	Young men -- Fiction
0000000001400	Orphans -- Fiction
0000000001400	England -- Fiction
0000000001400	Bildungsromans
0000000001400	Benefactors -- Fiction
0000000001400	Revenge -- Fiction
0000000001400	PR
0000000028054	Didactic fiction
0000000028054	Fathers and sons -- Fiction
0000000028054	Brothers -- Fiction
0000000028054	Russia -- Social life and customs -- 1533-1917 -- Fiction
0000000028054	PG
0000000000145	England -- Social life and customs -- 19th century -- Fiction
0000000000145	City and town life -- Fiction
0000000000145	Didactic fiction
0000000000145	Domestic fiction
0000000000145	Bildungsromans
0000000000145	Married people -- Fiction
0000000000145	Young women -- Fiction
0000000000145	England -- Fiction
0000000000145	Love stories
0000000000145	PR
0000000001237	French literature
0000000001237	PQ
0000000008387	Authors -- Fiction
0000000008387	Norway -- Fiction
0000000008387	Starvation -- Fiction
0000000008387	Urban poor -- Fiction
0000000008387	Hunger -- Fiction
0000000008387	PT
0000000015492	Wives -- Drama
0000000015492	Norwegian drama -- Translations into English
0000000015492	Marriage -- Drama
0000000015492	Man-woman relationships -- Drama
0000000015492	PT
0000000004300	Domestic fiction
0000000004300	Epic literature
0000000004300	Psychological fiction
0000000004300	Artists -- Fiction
0000000004300	Married people -- Fiction
0000000004300	Male friendship -- Fiction
0000000004300	City and town life -- Fiction
0000000004300	Alienation (Social psychology) -- Fiction
0000000004300	Dublin (Ireland) -- Fiction
0000000004300	Jewish men -- Fiction
0000000004300	PR
0000000016659	Sanskrit drama -- Translations into English
0000000016659	Sanskrit poetry -- Translations into English
0000000016659	PK
0000000021765	Classical literature
0000000021765	Fables, Latin -- Translations into English
0000000021765	Latin poetry -- Translations into English
0000000021765	Metamorphosis -- Mythology -- Poetry
0000000021765	Mythology, Classical -- Poetry
0000000021765	PA
0000000025667	Denmark -- Drama
0000000025667	Hamlet (Legendary character) -- Drama
0000000025667	Kings and rulers -- Succession -- Drama
0000000025667	Revenge -- Drama
0000000025667	Tragedies
0000000025667	Fathers -- Death -- Drama
0000000025667	Murder victims' families -- Drama
0000000025667	Princes -- Drama
0000000025667	PR
0000000001531	Interracial marriage -- Drama
0000000001531	Tragedies
0000000001531	Jealousy -- Drama
0000000001531	Muslims -- Drama
0000000001531	Othello (Fictitious character) -- Drama
0000000001531	Venice (Italy) -- Drama
0000000001531	PR
0000000012406	Kepler, Johannes, 1571-1630
0000000012406	QB
0000000007849	Social problems -- Fiction
0000000007849	PT
0000000003435	Fairy tales
0000000003435	Tales -- Arab countries
0000000003435	PJ
0000000003436	Fairy tales
0000000003436	Tales -- Arab countries
0000000003436	PJ
0000000000076	Male friendship -- Fiction
0000000000076	Boys -- Fiction
0000000000076	Adventure stories
0000000000076	Humorous stories
0000000000076	Bildungsromans
0000000000076	Finn, Huckleberry (Fictitious character) -- Fiction
0000000000076	Runaway children -- Fiction
0000000000076	Fugitive slaves -- Fiction
0000000000076	Race relations -- Fiction
0000000000076	Mississippi River -- Fiction
0000000000076	Missouri -- Fiction
0000000000076	PZ
0000000000076	PS
0000000001322	Poetry
0000000001322	PS
0000000033281	English wit and humor -- Periodicals
0000000033281	AP
0000000003420	Women's rights -- Great Britain
0000000003420	Women -- Education -- Great Britain
0000000003420	Women -- History -- 19th century
0000000003420	Feminism
0000000003420	HQ
0000000002270	Drama
0000000002270	PR
0000000001906	Utopias
0000000001906	Philosophy
0000000001906	PR
0000000000062	Mars (Planet) -- Fiction
0000000000062	Science fiction
0000000000062	Carter, John (Fictitious character) -- Fiction
0000000000062	Dejah Thoris (Fictitious character) -- Fiction
0000000000062	Princesses -- Fiction
0000000000062	PS
0000000001951	Civilization, Subterranean -- Fiction
0000000001951	Utopias -- Fiction
0000000001951	Science fiction
0000000001951	Underground areas -- Fiction
0000000001951	Utopian fiction
0000000001951	PR
0000000000228	Legends -- Rome -- Poetry
0000000000228	Epic poetry, Latin -- Translations into English
0000000000228	Aeneas (Legendary character) -- Poetry
0000000000228	PA
0000000001081	Humorous stories
0000000001081	Satire
0000000001081	Russia -- Social life and customs -- 1533-1917 -- Fiction
0000000001081	PG
0000000001200	Giants -- Fiction
0000000001200	Fantasy fiction, French -- Translations into English
0000000001200	Gargantua (Legendary character) -- Fiction
0000000001200	PQ
0000000003748	Science fiction
0000000003748	Adventure stories
0000000003748	Earth -- Core -- Fiction
0000000003748	Voyages, Imaginary -- Fiction
0000000003748	PQ
0000000000652	Princes -- Fiction
0000000000652	Satire
0000000000652	Happiness -- Fiction
0000000000652	Ethiopia -- Fiction
0000000000652	PR
0000000000271	Horses -- Juvenile fiction
0000000000271	PR
0000000000271	PZ
0000000000209	England -- Fiction
0000000000209	Psychological fiction
0000000000209	Ghost stories
0000000000209	Children -- Fiction
0000000000209	Governesses -- Fiction
0000000000209	PS
0000000017831	War stories
0000000017831	Franco-Prussian War, 1870-1871 -- Fiction
0000000017831	PQ
0000000000103	Adventure stories
0000000000103	Voyages around the world -- Fiction
0000000000103	PQ
0000000001695	Detective and mystery stories
0000000001695	Anarchists -- Fiction
0000000001695	London (England) -- Fiction
0000000001695	Fantasy fiction
0000000001695	Allegories
0000000001695	PR
0000000000796	Fiction
0000000000796	French literature
0000000000796	PQ
0000000003791	Hemp farmers -- Fiction
0000000003791	Hemp industry -- Fiction
0000000003791	Kentucky -- Fiction
0000000003791	PS
0000000005373	Maryland -- History -- Fiction
0000000005373	United States -- History -- Revolution, 1775-1783 -- Fiction
0000000005373	PS
0000000004097	Orphans -- Fiction
0000000004097	Historical fiction
0000000004097	Love stories
0000000004097	War stories
0000000004097	Indiana -- History -- Revolution, 1775-1783 -- Fiction
0000000004097	Vincennes (Ind.) -- Fiction
0000000004097	PS
0000000000031	Classical literature
0000000000031	Tragedies
0000000000031	Oedipus (Greek mythology) -- Drama
0000000000031	Antigone (Greek mythology) -- Drama
0000000000031	PA
0000000005388	United States -- History -- Civil War, 1861-1865 -- Fiction
0000000005388	PS
0000000006249	PS
0000000006245	PS
0000000004377	Kentucky -- Fiction
0000000004377	PS
0000000002852	Holmes, Sherlock (Fictitious character) -- Fiction
0000000002852	Blessing and cursing -- Fiction
0000000002852	Dogs -- Fiction
0000000002852	Dartmoor (England) -- Fiction
0000000002852	Detective and mystery stories
0000000002852	Private investigators -- England -- Fiction
0000000002852	PR
0000000003070	Holmes, Sherlock (Fictitious character) -- Fiction
0000000003070	Blessing and cursing -- Fiction
0000000003070	Dartmoor (England) -- Fiction
0000000003070	Detective and mystery stories
0000000003070	Dogs -- Fiction
0000000003070	Private investigators -- England -- Fiction
0000000003070	PR
0000000003428	American fiction -- 20th century
0000000003428	PS
0000000001603	Short stories
0000000001603	Fiction
0000000001603	PS
0000000023784	Mothers and sons -- Fiction
0000000023784	Psychological fiction
0000000023784	Triangles (Interpersonal relations) -- Fiction
0000000023784	People with disabilities -- Fiction
0000000023784	Lesbians -- Fiction
0000000023784	Cousins -- Fiction
0000000023784	PR
0000000020589	Poe, Edgar Allan, 1809-1849 -- Appreciation
0000000020589	Fantasy literature, American -- Appreciation
0000000020589	PS
0000000000481	Crime -- Fiction
0000000000481	Adventure stories
0000000000481	Theft -- Fiction
0000000000481	PS
0000000006801	PS
0000000003637	Africa, North -- Fiction
0000000003637	Monks -- Fiction
0000000003637	Deserts -- Fiction
0000000003637	PR
0000000014740	Automobiles -- Fiction
0000000014740	PR
0000000003766	New England -- Fiction
0000000003766	New Hampshire -- Fiction
0000000003766	PS
0000000007523	Japan -- History -- Meiji period, 1868-1912 -- Fiction
0000000007523	PS
0000000000506	Fiction
0000000000506	PS
0000000003242	Canada -- Fiction
0000000003242	PS
0000000004790	Fiction
0000000004790	PS
0000000003684	Political fiction
0000000003684	Didactic fiction
0000000003684	Social problems -- Fiction
0000000003684	PS
0000000005122	Love stories
0000000005122	Cumberland Mountains -- Fiction
0000000005122	PS
0000000004516	New York (N.Y.) -- Fiction
0000000004516	PS
0000000014263	PS
0000000001671	Fiction
0000000001671	PS
0000000005129	PS
0000000006997	PS
0000000014303	PS
0000000030115	Fiction
0000000030115	PS
0000000026163	Metaphysics
0000000026163	Evolution
0000000026163	Life
0000000026163	B
0000000001440	Women -- Social and moral questions
0000000001440	Women -- Economic conditions
0000000001440	Women -- Employment
0000000001440	HQ
0000000005145	Bildungsromans
0000000005145	Environmental protection -- Fiction
0000000005145	Mountain life -- Fiction
0000000005145	Cumberland Mountains -- Fiction
0000000005145	Kentucky -- Fiction
0000000005145	PS
0000000002514	Man-woman relationships -- Fiction
0000000002514	City and town life -- Fiction
0000000002514	PS
0000000004379	Great Britain -- Fiction
0000000004379	PR
0000000000402	Juvenile literature
0000000000402	PS
0000000001098	Young men -- Fiction
0000000001098	City and town life -- Fiction
0000000001098	Domestic fiction
0000000001098	Bildungsromans
0000000001098	Social classes -- Fiction
0000000001098	Children of the rich -- Fiction
0000000001098	Middle West -- Fiction
0000000001098	PS
0000000009489	City and town life -- Fiction
0000000009489	Orphans -- Fiction
0000000009489	Didactic fiction
0000000009489	Indiana -- Fiction
0000000009489	PS
0000000009931	Mystery fiction
0000000009931	Pittsburgh (Pa.) -- Fiction
0000000009931	PS
0000000005229	PS
0000000029932	Fiction
0000000029932	PS
0000000001027	Fiction
0000000001027	Western stories
0000000001027	PS
0000000001611	Fiction
0000000001611	PS
0000000029571	Western stories
0000000029571	Adventure stories
0000000029571	PS
0000000004287	World War, 1914-1918 -- England -- Fiction
0000000004287	People with disabilities -- Fiction
0000000004287	PR
0000000004603	English fiction -- 20th century
0000000004603	PR
0000000001590	World War, 1914-1918 -- Fiction
0000000001590	PS
0000000013993	World War, 1914-1918 -- Humor, caricatures, etc.
0000000013993	D501
0000000003249	Canada -- Fiction
0000000003249	PS
0000000009836	Detective and mystery stories
0000000009836	PR
0000000020072	World War, 1914-1918 -- Poetry
0000000020072	PS
0000000003194	Authors, American -- 19th century -- Correspondence
0000000003194	Twain, Mark, 1835-1910 -- Correspondence
0000000003194	PS
0000000003195	Authors, American -- 19th century -- Correspondence
0000000003195	Twain, Mark, 1835-1910 -- Correspondence
0000000003195	PS
0000000003197	Authors, American -- 19th century -- Correspondence
0000000003197	Twain, Mark, 1835-1910 -- Correspondence
0000000003197	PS
0000000000405	United States -- History -- 1865-1921
0000000000405	Davis, Richard Harding, 1864-1916
0000000000405	Authors, American -- Biography
0000000000405	PS
0000000016685	World War, 1914-1918 -- Personal narratives, Canadian
0000000016685	World War, 1914-1918 -- Campaigns -- Western Front
0000000016685	D501
0000000003288	World War, 1914-1918 -- Fiction
0000000003288	PS
0000000003265	Ozark Mountains -- Fiction
0000000003265	Christian fiction
0000000003265	United States -- Social life and customs -- Fiction
0000000003265	PS
0000000018056	World War, 1914-1918 -- Fiction
0000000018056	PS
0000000002044	Adams, Henry, 1838-1918
0000000002044	Historians -- United States -- Biography
0000000002044	E151
0000000017237	Lincoln, Abraham, 1809-1865 -- Fiction
0000000017237	PS
0000000005815	Spy stories
0000000005815	PR
0000000002386	Roosevelt, Theodore, 1858-1919
0000000002386	E740
0000000003317	World War, 1914-1918 -- Great Britain
0000000003317	World War, 1914-1918
0000000003317	D501
0000000002799	Farm life -- Fiction
0000000002799	New York (State) -- Fiction
0000000002799	PS
0000000007031	PR
0000000001970	Mystery fiction
0000000001970	PS
0000000025702	PS
0000000006491	England -- Social life and customs -- Fiction
0000000006491	PS
0000000001601	Fiction
0000000001601	Detective and mystery stories
0000000001601	PS
0000000001265	Victoria, Queen of Great Britain, 1819-1901
0000000001265	DA
0000000003812	Washington (D.C.) -- Biography
0000000003812	United States -- Politics and government -- 20th century
0000000003812	Statesmen -- United States
0000000003812	E740
0000000017018	Page, Walter Hines, 1855-1918
0000000017018	Great Britain -- Foreign relations -- United States
0000000017018	United States -- Foreign relations -- Great Britain
0000000017018	E660
0000000027203	Mental suggestion
0000000027203	RM
0000000017498	Suffolk, Charles Brandon, Duke of, d. 1545 -- Fiction
0000000017498	Historical fiction
0000000017498	Love stories
0000000017498	Mary, Queen, consort of Louis XII, King of France, 1496-1533 -- Fiction
0000000017498	Great Britain -- History -- Henry VIII, 1509-1547 -- Fiction
0000000017498	PS
0000000021959	Fathers and sons -- Fiction
0000000021959	Merchants -- Fiction
0000000021959	Epistolary fiction
0000000021959	Men -- Conduct of life -- Fiction
0000000021959	Didactic fiction
0000000021959	Social ethics -- Fiction
0000000021959	Chicago (Ill.) -- Fiction
0000000021959	PS
0000000003828	Wit and humor
0000000003828	PR
0000000018665	Letter writing -- Fiction
0000000018665	Mate selection -- Fiction
0000000018665	Man-woman relationships -- Fiction
0000000018665	Invalids -- Fiction
0000000018665	PS
0000000004786	Police -- Panama -- Canal Zone
0000000004786	Panama Canal (Panama)
0000000004786	F1561
0000000005394	United States -- History -- Civil War, 1861-1865 -- Fiction
0000000005394	PS
0000000003193	Authors, American -- 19th century -- Correspondence
0000000003193	Twain, Mark, 1835-1910 -- Correspondence
0000000003193	PS
0000000001693	Fiction
0000000001693	Detective and mystery stories
0000000001693	PS
0000000019415	Libraries -- History -- 400-1400
0000000019415	Libraries -- History -- 1400-1600
0000000019415	Manuscripts, Medieval
0000000019415	Manuscripts, Renaissance
0000000019415	Z
0000000001961	Books
0000000001961	Literary forgeries and mystifications
0000000001961	Literature -- History and criticism
0000000001961	Bibliomania
0000000001961	PR
0000000001961	Z
0000000016350	Literature
0000000016350	Literature -- Anecdotes
0000000016350	English literature -- History and criticism
0000000016350	PN
0000000030396	Authors
0000000030396	Literature -- Anecdotes
0000000030396	PN
0000000022716	Book collecting
0000000022716	Z
0000000000541	Separated people -- Fiction
0000000000541	Married people -- Fiction
0000000000541	New York (N.Y.) -- Fiction
0000000000541	Domestic fiction
0000000000541	Love stories
0000000000541	Upper class -- Fiction
0000000000541	Triangles (Interpersonal relations) -- Fiction
0000000000541	PS
0000000004684	Union Pacific Railroad Company -- Fiction
0000000004684	Railroads -- Design and construction -- Fiction
0000000004684	Kidnapping victims -- Fiction
0000000004684	Western stories
0000000004684	Love stories
0000000004684	Surveyors -- Fiction
0000000004684	Wyoming -- Fiction
0000000004684	PS
0000000022136	Book collecting
0000000022136	Bibliomania
0000000022136	Z
0000000022606	Books
0000000022606	Z
0000000022607	Book collecting
0000000022607	Bibliomania
0000000022607	Booksellers and bookselling -- England -- London
0000000022607	Z
0000000022608	Library science
0000000022608	Books
0000000022608	Z
0000000026378	Library fittings and supplies -- History
0000000026378	Libraries -- History
0000000026378	Library architecture -- History
0000000026378	Z
0000000020416	English literature -- Bibliography -- Early
0000000020416	Great Britain -- Imprints
0000000020416	Z
0000000017192	Poetry
0000000017192	PS
0000000004667	Marriage customs and rites -- United States
0000000004667	Divorce -- United States
0000000004667	CT
0000000004667	HQ
0000000014004	Lincoln, Abraham, 1809-1865
0000000014004	Presidents -- United States -- Biography
0000000014004	E456
0000000000813	Biography
0000000000813	Russian literature
0000000000813	Tolstoy, Leo, graf, 1828-1910
0000000000813	PG
0000000000813	CT
0000000012090	Poets, English -- Biography -- Early works to 1800
0000000012090	Poets, Irish -- Biography -- Early works to 1800
0000000012090	PR
0000000006312	Biography
0000000006312	Plato
0000000006312	Shakespeare, William, 1564-1616
0000000006312	Goethe, Johann Wolfgang von, 1749-1832
0000000006312	Montaigne, Michel de, 1533-1592
0000000006312	Napoleon I, Emperor of the French, 1769-1821
0000000006312	Swedenborg, Emanuel, 1688-1772
0000000006312	PS
0000000000984	Parodies
0000000000984	Biography -- Humor
0000000000984	CT
0000000003725	Europe -- Biography
0000000003725	Europe -- History -- 476-1492
0000000003725	CT
0000000002082	Du Barry, Jeanne Bécu, comtesse, 1743-1793
0000000002082	DC
0000000004693	Biography
0000000004693	Women -- Biography
0000000004693	Love
0000000004693	CT
0000000004691	Women -- Biography
0000000004691	Biography
0000000004691	Love
0000000004691	CT
0000000019767	Borrow, George Henry, 1803-1881
0000000019767	PR
0000000014555	Garrison, William Lloyd, 1805-1879
0000000014555	E300
0000000018757	Henry, Infante of Portugal, 1394-1460
0000000018757	Explorers -- Portugal -- Biography
0000000018757	Discoveries in geography
0000000018757	Geography, Medieval
0000000018757	G
0000000006702	Stowe, Harriet Beecher, 1811-1896
0000000006702	Authors, American -- 19th century -- Biography
0000000006702	Women abolitionists -- United States -- Biography
0000000006702	PS
0000000002447	Great Britain -- History -- Victoria, 1837-1901 -- Biography
0000000002447	Nightingale, Florence, 1820-1910
0000000002447	Gordon, Charles George, 1833-1885
0000000002447	Great Britain -- Biography
0000000002447	Manning, Henry Edward, 1808-1892
0000000002447	Arnold, Thomas, 1795-1842
0000000002447	DA
0000000012985	Poets, American -- 19th century -- Biography
0000000012985	Field, Eugene, 1850-1895
0000000012985	Journalists -- United States -- Biography
0000000012985	PS
0000000016494	Jameson's Raid, 1895-1896
0000000016494	Transvaal (South Africa) -- Politics and government -- 1880-1910
0000000016494	DT
0000000025117	South African War, 1899-1902
0000000025117	DT
0000000012427	Neutrality
0000000012427	South African War, 1899-1902
0000000012427	JX
0000000026198	South African War, 1899-1902
0000000026198	Transvaal (South Africa) -- History
0000000026198	DT
0000000018794	De Wet, Christiaan Rudolf, 1854-1922
0000000018794	South African War, 1899-1902 -- Personal narratives
0000000018794	Transvaal (South Africa) -- History -- 1880-1910
0000000018794	South Africa -- Biography
0000000018794	DT
0000000003069	South African War, 1899-1902
0000000003069	DT
0000000024951	South African War, 1899-1902
0000000024951	South African War, 1899-1902 -- Causes
0000000024951	DT
0000000021302	South African War, 1899-1902 -- Fiction
0000000021302	PZ
0000000013855	South Africa -- History -- 1836-1909
0000000013855	DT
0000000017968	Transvaal (South Africa) -- Politics and government
0000000017968	Transvaal (South Africa) -- History
0000000017968	DT
0000000016131	South African War, 1899-1902 -- Personal narratives
0000000016131	DT
\.


--
-- Data for Name: traductorlibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY traductorlibro (isbn, traductor) FROM stdin;
0000000016280	BOO
0000000017599	FRAIL
0000000022575	MANTIS
0000000036676	ABOARD
0000000014028	FROWN
0000000014648	JUL
0000000017186	TOYOTA
0000000035560	BELTED
0000000020665	AMANDA
0000000018236	ABOARD
0000000036780	DAWN
0000000016105	MESH
0000000018783	TTYS
0000000011302	DEWEY
0000000018289	LEGIT
0000000019643	BED
0000000018157	REOPEN
0000000018798	HUSTON
0000000020401	HEALTH
0000000025317	PHILCO
0000000020852	EDIT
0000000018723	HUSTON
0000000015066	CAPITA
0000000018733	GAYNOR
0000000034435	PHILCO
0000000036826	REOPEN
0000000023615	LIQUOR
0000000027315	BITCHY
0000000017814	BAYLOR
0000000001000	AMANDA
0000000027846	OBIT
0000000001012	HOMELY
0000000023306	LEGIT
0000000017941	ISRAEL
0000000030268	BITCHY
0000000020577	TTYS
0000000029549	FURY
0000000009976	DETOX
0000000000798	TTYS
0000000023297	MEDUSA
0000000022642	HEALTH
0000000027825	JUL
0000000004708	ORDAIN
0000000026685	QUIRK
0000000030719	FLOE
0000000029772	EDIT
0000000027573	EXUDE
0000000022048	FLOE
0000000006099	PHILCO
0000000026710	BUNCHE
0000000015995	WHOP
0000000008563	FLOE
0000000020974	EFFLUX
0000000023917	EDIT
0000000029208	JUL
0000000019591	THYMUS
0000000025667	REOPEN
0000000017831	HAND
0000000000796	GAYNOR
0000000020589	BENDER
0000000013855	EFFLUX
\.


--
-- Data for Name: var_config; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY var_config (variable, valor) FROM stdin;
pag_promopf    	160
pag_promosf    	1
pag_promotf    	116
\.


--
-- PostgreSQL database dump complete
--

