--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: award_year; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.award_year (
    id integer,
    year integer,
    award_title text
);


--
-- Name: category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.category (
    id integer,
    category text
);


--
-- Name: nominee_award; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nominee_award (
    id integer,
    award_year_id integer,
    category_id integer,
    nominee_id integer
);


--
-- Name: nominee_information; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nominee_information (
    id integer,
    nominee_name text,
    artist text,
    workers text,
    img text
);


--
-- Data for Name: award_year; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.award_year (id, year, award_title) FROM stdin;
1	2019	62nd Annual GRAMMY Awards  (2019)
2	2018	61st Annual GRAMMY Awards  (2018)
3	2017	60th Annual GRAMMY Awards  (2017)
4	2016	59th Annual GRAMMY Awards  (2016)
5	2015	58th Annual GRAMMY Awards  (2015)
6	2014	57th Annual GRAMMY Awards  (2014)
7	2013	56th Annual GRAMMY Awards  (2013)
8	2012	55th Annual GRAMMY Awards  (2012)
9	2011	54th Annual GRAMMY Awards  (2011)
10	2010	53rd Annual GRAMMY Awards  (2010)
11	2009	52nd Annual GRAMMY Awards  (2009)
12	2008	51st Annual GRAMMY Awards  (2008)
13	2007	50th Annual GRAMMY Awards  (2007)
14	2006	49th Annual GRAMMY Awards  (2006)
15	2005	48th Annual GRAMMY Awards  (2005)
16	2004	47th Annual GRAMMY Awards  (2004)
17	2003	46th Annual GRAMMY Awards  (2003)
18	2002	45th Annual GRAMMY Awards  (2002)
19	2001	44th Annual GRAMMY Awards  (2001)
20	2000	43rd Annual GRAMMY Awards  (2000)
21	1999	42nd Annual GRAMMY Awards  (1999)
22	1998	41st Annual GRAMMY Awards  (1998)
23	1997	40th Annual GRAMMY Awards  (1997)
24	1996	39th Annual GRAMMY Awards  (1996)
25	1995	38th Annual GRAMMY Awards  (1995)
26	1994	37th Annual GRAMMY Awards  (1994)
27	1993	36th Annual GRAMMY Awards  (1993)
28	1992	35th Annual GRAMMY Awards  (1992)
29	1991	34th Annual GRAMMY Awards  (1991)
30	1990	33rd Annual GRAMMY Awards  (1990)
31	1989	32nd Annual GRAMMY Awards  (1989)
32	1988	31st Annual GRAMMY Awards  (1988)
33	1987	30th Annual GRAMMY Awards  (1987)
34	1986	29th Annual GRAMMY Awards  (1986)
35	1985	28th Annual GRAMMY Awards  (1985)
36	1984	27th Annual GRAMMY Awards  (1984)
37	1983	26th Annual GRAMMY Awards  (1983)
38	1982	25th Annual GRAMMY Awards  (1982)
39	1981	24th Annual GRAMMY Awards  (1981)
40	1980	23rd Annual GRAMMY Awards  (1980)
41	1979	22nd Annual GRAMMY Awards  (1979)
42	1978	21st Annual GRAMMY Awards  (1978)
43	1977	20th Annual GRAMMY Awards  (1977)
44	1976	19th Annual GRAMMY Awards  (1976)
45	1975	18th Annual GRAMMY Awards  (1975)
46	1974	17th Annual GRAMMY Awards  (1974)
47	1973	16th Annual GRAMMY Awards  (1973)
48	1972	15th Annual GRAMMY Awards  (1972)
49	1971	14th Annual GRAMMY Awards  (1971)
50	1970	13th Annual GRAMMY Awards  (1970)
51	1969	12th Annual GRAMMY Awards  (1969)
52	1968	11th Annual GRAMMY Awards  (1968)
53	1967	10th Annual GRAMMY Awards  (1967)
54	1966	9th Annual GRAMMY Awards  (1966)
55	1965	8th Annual GRAMMY Awards  (1965)
56	1964	7th Annual GRAMMY Awards  (1964)
57	1963	6th Annual GRAMMY Awards  (1963)
58	1962	5th Annual GRAMMY Awards  (1962)
59	1961	4th Annual GRAMMY Awards  (1961)
60	1960	3rd Annual GRAMMY Awards  (1960)
61	1959	2nd Annual GRAMMY Awards  (1959)
62	1958	1st Annual GRAMMY Awards  (1958)
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.category (id, category) FROM stdin;
1	Record Of The Year
2	Album Of The Year
3	Song Of The Year
4	Best New Artist
5	Best Pop Solo Performance
6	Best Pop Duo/Group Performance
7	Best Traditional Pop Vocal Album
8	Best Pop Vocal Album
9	Best Dance Recording
10	Best Dance/Electronic Album
11	Best Contemporary Instrumental Album
12	Best Rock Performance
13	Best Metal Performance
14	Best Rock Song
15	Best Rock Album
16	Best Alternative Music Album
17	Best R&B Performance
18	Best Traditional R&B Performance
19	Best R&B Song
20	Best Urban Contemporary Album
21	Best R&B Album
22	Best Rap Performance
23	Best Rap/Sung Performance
24	Best Rap Song
25	Best Rap Album
26	Best Country Solo Performance
27	Best Country Duo/Group Performance
28	Best Country Song
29	Best Country Album
30	Best New Age Album
31	Best Improvised Jazz Solo
32	Best Jazz Vocal Album
33	Best Jazz Instrumental Album
34	Best Large Jazz Ensemble Album
35	Best Latin Jazz Album
36	Best Gospel Performance/Song
37	Best Contemporary Christian Music Performance/Song
38	Best Gospel Album
39	Best Contemporary Christian Music Album
40	Best Roots Gospel Album
41	Best Latin Pop Album
42	Best Latin Rock, Urban or Alternative Album
43	Best Regional Mexican Music Album (Including Tejano)
44	Best Tropical Latin Album
45	Best American Roots Performance
46	Best American Roots Song
47	Best Americana Album
48	Best Bluegrass Album
49	Best Traditional Blues Album
50	Best Contemporary Blues Album
51	Best Folk Album
52	Best Regional Roots Music Album
53	Best Reggae Album
54	Best World Music Album
55	Best Children's Music Album
56	Best Spoken Word Album (Includes Poetry, Audio Books & Storytelling)
57	Best Comedy Album
58	Best Musical Theater Album
59	Best Compilation Soundtrack For Visual Media
60	Best Score Soundtrack For Visual Media
61	Best Song Written For Visual Media
62	Best Instrumental Composition
63	Best Arrangement, Instrumental or A Cappella
64	Best Arrangement, Instruments and Vocals
65	Best Recording Package
66	Best Boxed Or Special Limited Edition Package
67	Best Album Notes
68	Best Historical Album
69	Best Engineered Album, Non-Classical
70	Producer Of The Year, Non-Classical
71	Best Remixed Recording
72	Best Immersive Audio Album
73	Best Engineered Album, Classical
74	Producer Of The Year, Classical
75	Best Orchestral Performance
76	Best Opera Recording
77	Best Choral Performance
78	Best Chamber Music/Small Ensemble Performance
79	Best Classical Instrumental Solo
80	Best Classical Solo Vocal Album
81	Best Classical Compendium
82	Best Contemporary Classical Composition
83	Best Music Video
84	Best Music Film
85	Best Children's Album
86	Best Surround Sound Album
87	Best Rap/Sung Collaboration
88	Best Blues Album
89	Best Remixed Recording, Non-Classical
90	Best Pop Instrumental Album
91	Best Dance/Electronica Album
92	Best Gospel/Contemporary Christian Music Performance
93	Best Gospel Song
94	Best Contemporary Christian Music Song
95	Best Instrumental Arrangement
96	Best Instrumental Arrangement Accompanying Vocalist(s)
97	Best Classical Vocal Solo
98	Best Hard Rock/Metal Performance
99	Best Contemporary Classical  Composition
100	Best Short Form Music Video
101	Best Long Form Music Video
102	Best Latin Pop, Rock, Or Urban Album
103	Best Regional Mexican Or Tejano Album
104	Best Banda Or Norteño Album
105	Best Small Ensemble Performance
106	Best Female Pop Vocal Performance
107	Best Male Pop Vocal Performance
108	Best Pop Performance By A Duo Or Group With Vocals
109	Best Pop Collaboration With Vocals
110	Best Pop Instrumental Performance
111	Best Electronic/Dance Album
112	Best Solo Rock Vocal Performance
113	Best Rock Performance By A Duo Or Group With Vocals
114	Best Hard Rock Performance
115	Best Rock Instrumental Performance
116	Best Female R&B Vocal Performance
117	Best Male R&B Vocal Performance
118	Best R&B Performance By A Duo Or Group With Vocals
119	Best Traditional R&B Vocal Performance
120	Best Urban/Alternative Performance
121	Best Contemporary R&B Album
122	Best Rap Solo Performance
123	Best Rap Performance By A Duo Or Group
124	Best Female Country Vocal Performance
125	Best Male Country Vocal Performance
126	Best Country Performance By A Duo Or Group With Vocals
127	Best Country Collaboration With Vocals
128	Best Country Instrumental Performance
129	Best Contemporary Jazz Album
130	Best Jazz Instrumental Album, Individual or Group
131	Best Gospel Performance
132	Best Rock Or Rap Gospel Album
133	Best Pop/Contemporary Gospel Album
134	Best Southern, Country, Or Bluegrass Gospel Album
135	Best Traditional Gospel Album
136	Best Contemporary R&B Gospel Album
137	Best Latin Rock, Alternative Or Urban Album
138	Best Tejano Album
139	Best Norteño Album
140	Best Banda Album
141	Best Traditional Folk Album
142	Best Contemporary Folk Album
143	Best Hawaiian Music Album
144	Best Native American Music Album
145	Best Zydeco Or Cajun Music Album
146	Best Traditional World Music Album
147	Best Contemporary World Music Album
148	Best Musical Album For Children
149	Best Spoken Word Album For Children
150	Best Spoken Word Album (Includes Poetry, Audio Books & Story Telling)
151	Best Musical Show Album
152	Best Compilation Soundtrack Album For Motion Picture, Television Or Other Visual Media
153	Best Score Soundtrack Album For Motion Picture, Television Or Other Visual Media
154	Best Song Written For Motion Picture, Television Or Other Visual Media
155	Best Classical Album
156	Best Instrumental Soloist(s) Performance (with Orchestra)
157	Best Instrumental Soloist Performance (without Orchestra)
158	Best Chamber Music Performance
159	Best Classical Vocal Performance
160	Best Classical Contemporary Composition
161	Best Classical Crossover Album
162	Best Regional Mexican Album
163	Best Jazz Instrumental Solo
164	Best Latin Rock Or Alternative Album
165	Best Latin Urban Album
166	Best Contemporary Folk/Americana Album
167	Best Polka Album
168	Best Mexican/Mexican-American Album
169	Best Pop Performance By A Duo Or Group With Vocal
170	Best Rock Performance By A Duo Or Group With Vocal
171	Best Country Performance By A Duo Or Group With Vocal
172	Best Rock Gospel Album
173	Best Southern, Country, or Bluegrass Gospel Album
174	Best Traditional Soul Gospel Album
175	Best Contemporary Soul Gospel Album
176	Best Gospel Choir Or Chorus Album
177	Best Latin Rock/Alternative Album
178	Best Traditional Tropical Latin Album
179	Best Salsa/Merengue Album
180	Best Spoken Word Album
181	Best Small Ensemble Performance (with or without Conductor)
182	Best Compilation Soundtrack Album For A Motion Picture, Television Or Other Visual Media
183	Best Score Soundtrack Album For A Motion Picture, Television Or Other Visual Media
184	Best Song Written For A Motion Picture, Television Or Other Visual Media
185	Best Female Rock Vocal Performance
186	Best Male Rock Vocal Performance
187	Best Female Rap Solo Performance
188	Best Male Rap Solo Performance
189	Best R&B Performance By A Duo Or Group With Vocal
190	Best Salsa Album
191	Best Merengue Album
192	Best Spoken Comedy Album
193	Best Traditional R&B Vocal Album
194	Best Spoken Word Album for Children
195	Best Boxed Recording Package
196	Best Song Written For A Motion Picture, Television Or Other Visual Media.
197	Best Instrumental Arrangement Accompanying A Vocalist(s)
198	Remixer of the Year, Non-Classical
199	Best Pop Album
200	Best Traditional Pop Vocal Performance
201	Best Alternative Music Performance
202	Best Rhythm & Blues Song
203	Best Contemporary Jazz Performance
204	Best Jazz Vocal Performance
205	Best Jazz Instrumental Performance, Individual Or Group
206	Best Large Jazz Ensemble Performance
207	Best Latin Jazz Performance
208	Best Latin Pop Performance
209	Best Latin Rock/Alternative Performance
210	Best Traditional Tropical Latin Performance
211	Best Salsa Performance
212	Best Merengue Performance
213	Best Mexican-American Performance
214	Best Tejano Performance
215	Best Soundtrack Album
216	Best Instrumental Composition Written For A Motion Picture, Television Or Other Visual Media.
217	Best Engineered Album - Non-Classical
218	Remixer Of The Year, Non-Classical
219	Best Instrumental Soloist(s) Performance (With Orchestra)
220	Best Instrumental Soloist Performance (Without Orchestra)
221	Best Small Ensemble Performance (With Or Without Conductor)
222	Best Tropical Latin Performance
223	Best Mexican-American Music Performance
224	Best Tejano Music Performance
225	Best Instrumental Composition Written For A Motion Picture Or For Television
226	Best Song Written For A Motion Picture Or For Television
227	Best Instrumental Arrangement Accompanying Vocal(s)
228	Remixer Of The Year, Non-classical
229	Best Southern, Country Or Bluegrass Gospel Album
230	Best Mexican-American/Tejano Music Performance
231	Best Song Written Specifically For A Motion Picture Or For Television
232	Best Country Vocal Performance By A Duo Or Group
233	Best Southern Gospel, Country Gospel Or Bluegrass Gospel Album
234	Best Gospel Album By A Choir Or Chorus
235	Best Spoken Word Or Non-Musical Album
236	Best Instrumental Arrangement With Accompanying Vocal(s)
237	Best Recording Package - Boxed
238	Producer Of The Year
239	Best Classical Engineered Recording
240	Classical Producer Of The Year
241	Best Music Video, Short Form
242	Best Music Video, Long Form
243	Best Pop Vocal Collaboration
244	Best Country Vocal Collaboration
245	Best Instrumental Arrangement With Accompanying Vocals
246	Best Instrumental Soloist Performance (With Orchestra)
247	Best Instrumental Soloist Performance Without Orchestra
248	Best Pop Vocal Performance, Female
249	Best Pop Vocal Performance, Male
250	Best Rock Vocal Performance, Solo
251	Best Hard Rock Performance With Vocal
252	Best Metal Performance With Vocal
253	Best R&B Vocal Performance, Female
254	Best R&B Vocal Performance, Male
255	Best Contemporary Jazz Performance (Instrumental)
256	Best Country Vocal Performance, Female
257	Best Country Vocal Performance, Male
258	Best Mexican-American Album
259	Best Music Video - Short Form
260	Best Music Video-Long Form
261	Best Arrangement On An Instrumental
262	Best Performance Of A Choral Work
263	Best Classical Performance-Instrumental Soloist(s) (With Orchestra)
264	Best Classical Performance-Instrumental Soloist (Without Orchestra)
265	Best Contemporary Composition
266	Best Engineered Recording, Classical
267	Best Rock Vocal Performance, Female
268	Best Rock Vocal Performance, Male
269	Best R&B Instrumental Performance
270	Best Rock/Contemporary Gospel Album
271	Best Pop Gospel Album
272	Best Southern Gospel Album
273	Best Album For Children
274	Best Music Video - Long Form
275	Producer Of The Year (Non-Classical)
276	Best Album Package
277	Best Classical Performance - Instrumental Solo With Orchestra
278	Best Classical Performance - Instrumental Solo Without Orchestra
279	Best Traditional Pop Performance
280	Best Jazz Instrumental Performance, Group
281	Best Gospel Album By Choir Or Chorus
282	Producer Of The Year (Non Classical)
283	Best Instrumental Soloist With Orchestra
284	Best Classical Performance Instrumental Solo Without Orchestra
285	Best Classical Vocal Soloist
286	Best New Age Performance
287	Best Jazz Fusion Performance
288	Best Jazz Vocal Performance, Female
289	Best Jazz Vocal Performance, Male
290	Best Jazz Instrumental Performance, Soloist
291	Best Jazz Instrumental Performance, Big Band
292	Best Bluegrass Recording
293	Best Traditional Soul Gospel Performance
294	Best Traditional Blues Recording
295	Best Contemporary Blues Recording
296	Best Traditional Folk Recording
297	Best Contemporary Folk Recording
298	Best Reggae Recording
299	Best Polka Recording
300	Best Recording For Children
301	Best Comedy Recording
302	Best Spoken Word Or Non-Musical Recording
303	Best Musical Cast Show Album
304	Best Engineered Recording - Non-Classical
305	Best Choral Performance (Other Than Opera)
306	Best Classical Performance, Instrumental Soloist (With Orchestra)
307	Best Classical Performance, Instrumental Soloist (Without Orchestra)
308	Best Chamber Music Or Other Small Ensemble Performance
309	Best Engineered Recording - Classical
310	Best Jazz Vocal Performance, Duo Or Group
311	Best Jazz Instrumental Performance, Soloist (On A Jazz Recording)
312	Best Gospel Vocal Performance, Female
313	Best Gospel Vocal Performance, Male
314	Best Gospel Vocal Performance By A Duo, Group, Choir Or Chorus
315	Best Soul Gospel Vocal Performance, Male Or Female
316	Best Soul Gospel Vocal Performance Duo, Group, Choir Or Chorus
317	Best Album Of Original Instrumental Background Score Written For A Motion Picture Or Television
318	Best Song Written Specifically For A Motion Picture Or Television
319	Best Instrumental Arrangement Accompanying Vocals
320	Best Classical Performance - Instrumental Soloist (Without Orchestra)
321	Best Classical Vocal Soloist Performance
322	Best Pop Instrumental Performance (Orchestra, Group Or Soloist)
323	Best Rock Instrumental Performance (Orchestra, Group Or Soloist)
324	Best Hard Rock/Metal Performance Vocal Or Instrumental
325	Best R&B Instrumental Performance (Orchestra, Group Or Soloist)
326	Best Jazz Instrumental Performance Soloist (On A Jazz Recording)
327	Best Country Instrumental Performance (Orchestra, Group Or Soloist)
328	Best Bluegrass Recording (Vocal Or Instrumental)
329	Best Gospel Performance, Female
330	Best Gospel Performance, Male
331	Best Gospel Performance By A Duo Or Group, Choir Or Chorus
332	Best Soul Gospel Performance, Female
333	Best Soul Gospel Performance, Male
334	Best Soul Gospel Performance By A Duo, Group, Choir Or Chorus
335	Best Performance Music Video
336	Best Concept Music Video
337	Best Orchestral Recording
338	Best Classical Performance - Instrumental Soloist(s) (With Orchestra)
339	Best Classical Performance - Instrumental Soloist(s) (Without Orchestra)
340	Best Jazz Fusion Performance, Vocal Or Instrumental
341	Best Country Vocal Performance, Duet
342	Best Album Or Original Instrumental Background Score Written For A Motion Picture Or Television
343	Producer Of The Year, (Non Classical)
344	Best Pop Instrumental Performance, (Orchestra, Group Or Soloist)
345	Best New Age Recording
346	Best Country Vocal Solo Performance, Male
347	Best Classical Orchestral Recording
348	Best Classical Performance - Instrumental Soloist Or Soloists (With Or Without Orchestra)
349	Best Inspirational Performance
350	Best Ethnic Or Traditional Folk Recording
351	Best Album Of Original Score Written For A Motion Picture Or A Television Special
352	Best Cast Show Album
353	Best Vocal Arrangement For Two Or More Voices
354	Best Engineered Recording - Non Classical
355	Best Classical Performance - Instrumental Soloist Or Soloists (With Orchestra)
356	Best Classical Performance - Instrumental Soloist Or Soloists (Without Orchestra)
357	Best New Classical Artist
358	Best Gospel Performance By A Duo Or Group
359	Best Soul Gospel Performance By A Duo Or Group
360	Best Video, Short Form
361	Best Video Album
362	Best New Classical Composition
363	Best New Country Song
364	Best Gospel Performance, Contemporary
365	Best Gospel Performance, Traditional
366	Best Soul Gospel Performance, Contemporary
367	Best Soul Gospel Performance, Traditional
368	Best Latin Recording
369	Best Spoken Word, Documentary Or Drama Recording
370	Best Album Of Original Score Written For A Motion Picture Or Television Special
371	Video Of The Year
372	Best Jazz Vocal Performance Duo Or Group
373	Best Arrangement On An Instrumental Recording
374	Best Pop Vocal Performance By A Duo Or Group With Vocal
375	Best Gospel Performance Contemporary Or Inspirational
376	Best Ethnic Or Traditional Recording
377	Best Jazz Fusion Performance, Vocal Or Istrumental
378	Best Country Performance Duo Or Group
379	Best Gospel Performance, Contemporary Or Inspirational
380	Best Spoken Word, Documentary Or Drama
381	Best Arrangement Accompanying Vocalist(s)
382	Best Arrangement For Voices
383	Best Historical Reissue Album
384	Best Choral Performance, Classical (Other Than Opera)
385	Best Classical Performance- Instrumental Soloist Or Soloists (With Orchestra)
386	Best Classical Performance - Instrumental Soloist OR Soloists (With Orchestra)
387	Best Pop Vocal Performance By A Duo, Group Or Chorus
388	Best Rock Vocal Performance By A Duo Or Group
389	Best R&B Vocal Performance By A Duo, Group Or Chorus
390	Best Disco Recording
391	Best Arrangement Accompanying Vocals
392	Best Historical Reissue
393	Best Spoken Word Recording
394	Best Arrangement Accompanying Vocal(s)
395	Best Historical Repackage Album
396	Best Classical Orchestral Performance
397	Best Classical Performance, Instrumental Soloist(s) (With Orchestra)
398	Best Classical Performance, Instrumental Soloist(s) (Without Orchestra)
399	Best New Artist Of The Year
400	Best Jazz Performance By A Soloist
401	Best Jazz Performance By A Group
402	Best Jazz Performance By A Big Band
403	Best Pop Vocal Performance By A Group
404	Best Pop Instrumental Recording
405	Best Gospel Performance, Contemporary Or Insprirational
406	Best Original Score Written For A Motion Picture Or A Television Special
407	Best Classical Performance Instrumental Soloist Or Soloists (With Orchestra)
408	Best Classical Performance Instrumental Soloist Or Soloists (Without Orchestra)
409	Best Arrangement For Voices (Duo, Group Or Chorus)
410	Best Producer Of The Year
411	Best Jazz Performance By A Soloist (Instrumental)
412	Best Soul Gospel Performance
413	Best Gospel Performance (Other Than Soul Gospel)
414	Album Of Best Original Score Written For A Motion Picture Or Television Special
415	Classical Album Of The Year
416	Best Classical Performance, Instrumental Soloist Or Soloists (With Orchestra)
417	Best Classical Performance, Instrumental Soloist Or Soloists (Without Orchestra)
418	Best Album Notes, Classical
419	Album Of Best Original Score Written For A Motion Picture Or A Television Special
420	Album Of The Year, Classical
421	Best Classical Performance - Orchestra
422	Best Arrangement Accompanying Vocalists
423	Best Album Notes - Classical
424	Best Inspirational Performance (Non-Classical)
425	Best Score From The Original Cast Show Album
426	Best Ethnic Or Traditional Recording (Including Traditional Blues)
427	Best Album Cover
428	Best Album Notes (Classical)
429	Best Pop Instrumental Performance By An Instrumental Performer
430	Best Pop Instrumental Performance By An Arranger, Composer, Orchestra And/Or Choral Leader
431	Best Score From An Original Cast Show Album
432	Best Engineered Recording (Classical)
433	Best Pop Vocal Performance By A Duo Or Group
434	Best R&B Vocal Performance By A Group
435	Best Sacred Performance
436	Best Choral Performance - Classical
437	Best Contemporary Vocal Performance, Female
438	Best Contemporary Vocal Performance, Male
439	Best Contemporary Vocal Performance By A Duo, Group Or Chorus
440	Best Contemporary Instrumental Performance
441	Best Contemporary Song
442	Best R&B Performance By A Duo Or Group, Vocal Or Instrumental
443	Best Sacred Performance (Musical)
444	Best Jazz Performance - Small Group Or Soloist With Small Group
445	Best Jazz Performance - Large Group Or Soloist With Large Group
446	Best Classical Performance, Orchestra
447	Best Contemporary Vocal Performance By A Group
448	Best Contemporary Performance By A Chorus
449	Best R&B Vocal Performance By A Duo Or Group
450	Best Sacred Performance (Non-Classical)
451	Best Folk Performance
452	Best Instrumental Theme
453	Best Instrumental Jazz Performance, Small Group Or Soloist With Small Group
454	Best Instrumental Jazz Performance, Large Group Or Soloist With Large Group
455	Best Vocal Soloist Performance, Classical
456	Best Engineered Recording (Non-Classical)
457	Best Contemporary Pop Vocal Performance, Female
458	Best Contemporary Pop Vocal Performance, Male
459	Best Contemporary Pop Performance - Vocal Duo Or Group
460	Best Contemporary Pop Performance, Chorus
461	Best Contemporary Pop Performance, Instrumental
462	Best Rhythm & Blues Vocal Performance, Female
463	Best Rhythm & Blues Vocal Performance, Male
464	Best Rhythm & Blues Performance By A Duo Or Group, Vocal Or Instrumental
465	Best Country Performance, Duo Or Group - Vocal Or Instrumental
466	Best Instrumental Jazz Performance - Small Group Or Soloist With Small Group
467	Best Instrumental Jazz Performance - Large Group Or Soloist With Large Group
468	Best Performance - Instrumental Soloist Or Soloists (With Or Without Orchestra)
469	Best Vocal Soloist Performance
470	Best Vocal Performance, Female
471	Best Vocal Performance, Male
472	Best Instrumental Performance
473	Best Performance By A Vocal Group
474	Best Performance By A Chorus
475	Best Original Score Written For A Motion Picture Or A Television Show
476	Best Contemporary Single
477	Best Contemporary Album
478	Best Contemporary Female Solo Vocal Performance
479	Best Contemporary Male Solo Vocal Performance
480	Best Contemporary Group Performance (Vocal Or Instrumental)
481	Best Rhythm & Blues Recording
482	Best Rhythm & Blues Solo Vocal Performance, Female
483	Best Rhythm & Blues Solo Vocal Performance, Male
484	Best Rhythm & Blues Group Performance, Vocal Or Instrumental
485	Best Country & Western Recording
486	Best Country & Western Solo Vocal Performance, Female
487	Best Country & Western Solo Vocal Performance, Male
488	Best Country & Western Performance Duet, Trio Or Group (Vocal Or Instrumental)
489	Best Country & Western Song
490	Best Arrangement Accompanying Vocalist(s) Or Instrumentalist(s)
491	Best Album Cover, Photography
492	Best Album Cover, Graphic Arts
493	Best Classical Choral Performance (Other Than Opera)
494	Best Instrumental Performance (Other Than Jazz)
495	Best Original Score Written For A Motion Picture Or Television Show
496	Best Comedy Performance
497	Best Instrumental Jazz Performance - Group Or Soloist With Group
498	Best Original Jazz Composition
499	Best Contemporary (R&R) Recording
500	Best Contemporary (R&R) Solo Vocal Performance - Male Or Female
501	Best Contemporary (R&R) Group Performance, Vocal Or Instrumental
502	Best Rhythm & Blues Solo Vocal Performance, Male Or Female
503	Best Folk Recording
504	Best Sacred Recording (Musical)
505	Best Country & Western Vocal Performance - Female
506	Best Country & Western Vocal Performance, Male
507	Best Arrangement Accompanying A Vocalist Or Instrumentalist
508	Album Of The Year - Classical
509	Best Chamber Music Performance - Instrumental Or Vocal
510	Best Classical Vocal Soloist Performance (With Or Without Orchestra)
511	Album Of The Year -- Classical
512	Best Instrumental Performance, Non-Jazz
513	Best Spoken Word Or Drama Recording
514	Best Contemporary (R&R) Single
515	Best Contemporary (R&R) Vocal Performance - Female
516	Best Contemporary (R&R) Vocal Performance - Male
517	Best Contemporary (R&R) Performance - Group (Vocal Or Instrumental)
518	Best Gospel Or Other Religious Recording (Musical)
519	Best Country & Western Single
520	Best Country & Western Album
521	Best Country & Western Vocal Performance - Male
522	Best New Country & Western Artist
523	Best Album Cover - Photography
524	Best Album Cover - Graphic Arts
525	Best Classical Chamber Music Performance - Instrumental Or Vocal
526	Best Composition By A Contemporary Classical Composer
527	Most Promising New Classical Recording Artist
528	Best Instrumental Composition (Other Than Jazz)
529	Best Instrumental Performance - Non-Jazz
530	Best Accompaniment Arrangement For Vocalist(s) Or Instrumentalist(s)
531	Best Documentary, Spoken Word Or Drama Recording (Other Than Comedy)
532	Best Engineered Recording - Special Or Novel Effects
533	Best Album Cover- Other Than Classical
534	Best Album Cover - Classical
535	Best Rock & Roll Recording
536	Best New Artist Of 1964
537	Best New Country & Western Artist Of 1964
538	Best Performance - Orchestra
539	Best Chamber Performance - Instrumental
540	Best Chamber Music Performance - Vocal
541	Best Performance - Instrumental Soloist Or Soloists (With Orchestra)
542	Best Performance - Instrumental Soloist Or Soloists (Without Orchestra)
543	Best Vocal Soloist Performance (With Or Without Orchestra)
544	Best Composition By A Contemporary Composer
545	Best Engineered Recording
546	Album Of The Year (Other Than Classical)
547	Best Instrumental Jazz Performance - Soloist Or Small Group
548	Best Instrumental Jazz Performance - Large Group
549	Best Performance By An Orchestra - For Dancing
550	Best Performance By An Orchestra Or Instrumentalist With Orchestra - Primarily Not Jazz Or For Dancing
551	Best Background Arrangement (Behind vocalist or instrumentalist)
552	Best Original Score From A Motion Picture Or Television Show
553	Best Classical Performance - Chamber Music
554	Best Classical Performance - Instrumental Soloist Or Duo (Without Orchestra)
555	Best Classical Performance - Choral (Other Than Opera)
556	Best Classical Performance - Vocal Soloist (With Or Without Orchestra)
557	Best Classical Composition By A Contemporary Composer
558	Best Album Cover - Other Than Classical
559	Best Engineered Recording - Other Than Classical
560	Best New Artist Of 1963
561	Best Solo Vocal Performance, Female
562	Best Solo Vocal Performance, Male
563	Best Jazz Performance - Soloist Or Small Group (Instrumental)
564	Best Jazz Performance - Large Group (Instrumental)
565	Best Background Arrangement
566	Best Original Cast Show Album
567	Best Documentary Or Spoken Word Recording (Other Than Comedy)
568	Best Engineering Contribution - Other Than Novelty And Other Than Classical
569	Best Engineering Contribution - Novelty
570	Best Gospel Or Other Religious Recording
571	Best New Artist Of 1962
572	Best Instrumental Theme Or Instrumental Version Of Song
573	Best Performance By An Orchestra - For Other Than Dancing
574	Best Arrangement
575	Best Sound Track Album Or Recording Of Score From Motion Picture Or Television
576	Best Sound Track Album Or Recording Of Original Cast From Motion Picture Or Television
577	Best Engineering Contribution - Popular Recording
578	Best Album Cover (Other Than Classical)
579	Best New Artist Of 1961
580	Best Classical Performance - Instrumental Soloist (With Orchestra)
581	Best Engineering Contribution - Classical Recording
582	Best Vocal Performance Single Record Or Track, Female
583	Best Vocal Performance Album, Female
584	Best Vocal Performance Single Record Or Track, Male
585	Best Vocal Performance Album, Male
586	Best Performance By A Band For Dancing
587	Best Performance By An Orchestra
588	Best Performance By A Vocal Group (2 To 6)
589	Best Performance By A Chorus (7 Or More Persons)
590	Best Jazz Performance Solo Or Small Group
591	Best Jazz Performance Large Group
592	Best Classical Performance - Vocal Or Instrumental - Chamber Music
593	Best Classical Performance - Concerto Or Instrumental Soloist
594	Best Classical Performance - Instrumental Soloist Or Duo (Other Than With Orchestral Accompaniment)
595	Best Classical Performance - Vocal Soloist
596	Best Classical Opera Production
597	Best Classical Performance - Choral (Including Oratorio)
598	Best Sound Track Album Or Recording Of Music Score From Motion Picture Or Television
599	Best Sound Track Album Or Recording Of Original Cast From A Motion Picture Or Television
600	Best Show Album (Original Cast)
601	Best Comedy Performance - Spoken Word
602	Best Comedy Performance (Musical)
603	Best Performance - Documentary Or Spoken Word (Other Than Comedy)
604	Best Performance By A Pop Single Artist
605	Best Country & Western Performance
606	Best Rhythm & Blues Performance
607	Best Performance - Folk
608	Best Album Created For Children
609	Best Engineering Contribution - Novelty Recording
610	Best New Artist Of 1960
611	Best Jazz Composition Of More Than Five Minutes Duration
612	Best Performance By A Dance Band
613	Best Performance By A Vocal Group Or Chorus
614	Best Jazz Performance - Soloist
615	Best Jazz Performance - Group
616	Best Classical Performance - Chamber Music (Including Chamber Orchestra)
617	Best Classical Performance - Concerto Or Instrumental Soloist (With Full Orchestral Accompaniment)
618	Best Classical Performance - Opera Cast Or Choral
619	Best Classical Performance - Concerto Or Instrumental Soloist (Other Than Full Orchestral Accompaniment)
620	Best Musical Composition First Recorded And Released In 1959 (More Than 5 Minutes Duration)
621	Best Sound Track Album - Background Score From A Motion Picture Or Television
622	Best Sound Track Album, Original Cast - Motion Picture Or Television
623	Best Broadway Show Album
624	Best Comedy Performance - Musical
625	Best Performance By A "Top 40" Artist
626	Best Engineering Contribution - Other Than Classical Or Novelty
627	Best New Artist Of 1959
628	Best Jazz Performance, Individual
629	Best Jazz Performance, Group
630	Best Engineered Record (Classical)
631	Best Engineered Record - Non-Classical
632	Best Musical Composition First Recorded And Released In 1958 (Over 5 Minutes Duration)
633	Best Original Cast Album (Broadway Or TV)
634	Best Sound Track Album, Dramatic Picture Score Or Original Cast
635	Best Performance, Documentary Or Spoken Word
636	Best Classical Performance - Instrumentalist (With Concerto Scale Accompaniment)
637	Best Classical Performance - Instrumentalist (Other Than Concerto-Scale Accompaniment)
638	Best Classical Performance - Operatic Or Choral
\.


--
-- Data for Name: nominee_award; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nominee_award (id, award_year_id, category_id, nominee_id) FROM stdin;
1	1	1	1
2	1	1	2
3	1	1	3
4	1	1	4
5	1	1	5
6	1	1	6
7	1	1	7
8	1	1	8
9	1	2	9
10	1	2	10
11	1	2	11
12	1	2	12
13	1	2	13
14	1	2	14
15	1	2	15
16	1	2	16
17	1	3	1
18	1	3	17
19	1	3	18
20	1	3	4
21	1	3	19
22	1	3	20
23	1	3	21
24	1	3	7
25	1	4	22
26	1	4	23
27	1	4	24
28	1	4	25
29	1	4	26
30	1	4	27
31	1	4	28
32	1	4	29
33	1	5	7
34	1	5	30
35	1	5	1
36	1	5	3
37	1	5	31
38	1	6	6
39	1	6	32
40	1	6	33
41	1	6	8
42	1	6	34
43	1	7	35
44	1	7	36
45	1	7	37
46	1	7	38
47	1	7	39
48	1	8	9
49	1	8	40
50	1	8	12
51	1	8	41
52	1	8	19
53	1	9	42
54	1	9	43
55	1	9	44
56	1	9	45
57	1	9	46
58	1	10	47
59	1	10	48
60	1	10	49
61	1	10	50
62	1	10	51
63	1	11	52
64	1	11	53
65	1	11	54
66	1	11	55
67	1	11	56
68	1	12	57
69	1	12	58
70	1	12	59
71	1	12	60
72	1	12	61
73	1	13	62
74	1	13	63
75	1	13	64
76	1	13	65
77	1	13	66
78	1	14	57
79	1	14	67
80	1	14	68
81	1	14	69
82	1	14	59
83	1	15	70
84	1	15	71
85	1	15	72
86	1	15	73
87	1	15	74
88	1	16	16
89	1	16	75
90	1	16	76
91	1	16	10
92	1	16	77
93	1	17	78
94	1	17	79
95	1	17	80
96	1	17	81
97	1	17	82
98	1	18	83
99	1	18	84
100	1	18	85
101	1	18	86
102	1	18	87
103	1	19	88
104	1	19	80
105	1	19	89
106	1	19	90
107	1	19	82
108	1	20	15
109	1	20	91
110	1	20	92
111	1	20	93
112	1	20	94
113	1	21	95
114	1	21	96
115	1	21	97
116	1	21	98
117	1	21	99
118	1	22	100
119	1	22	101
120	1	22	102
121	1	22	103
122	1	22	104
123	1	23	105
124	1	23	106
125	1	23	107
126	1	23	108
127	1	23	109
128	1	24	110
129	1	24	111
130	1	24	112
131	1	24	100
132	1	24	102
133	1	25	113
134	1	25	114
135	1	25	115
136	1	25	116
137	1	25	117
138	1	26	118
139	1	26	119
140	1	26	120
141	1	26	121
142	1	26	18
143	1	27	122
144	1	27	123
145	1	27	124
146	1	27	125
147	1	27	126
148	1	28	18
149	1	28	120
150	1	28	127
151	1	28	128
152	1	28	122
153	1	29	129
154	1	29	130
155	1	29	131
156	1	29	132
157	1	29	133
158	1	30	134
159	1	30	135
160	1	30	136
161	1	30	137
162	1	30	138
163	1	31	139
164	1	31	140
165	1	31	141
166	1	31	142
167	1	31	143
168	1	32	144
169	1	32	145
170	1	32	146
171	1	32	147
172	1	32	148
173	1	33	149
174	1	33	150
175	1	33	151
176	1	33	152
177	1	33	153
178	1	34	154
179	1	34	155
180	1	34	156
181	1	34	157
182	1	34	158
183	1	35	159
184	1	35	160
185	1	35	161
186	1	35	162
187	1	35	163
188	1	36	164
189	1	36	165
190	1	36	166
191	1	36	167
192	1	36	168
193	1	37	169
194	1	37	170
195	1	37	171
196	1	37	172
197	1	37	173
198	1	38	174
199	1	38	175
200	1	38	176
201	1	38	177
202	1	38	178
203	1	39	179
204	1	39	180
205	1	39	171
206	1	39	181
207	1	39	182
208	1	40	183
209	1	40	184
210	1	40	185
211	1	40	186
212	1	40	187
213	1	41	188
214	1	41	189
215	1	41	190
216	1	41	191
217	1	41	192
218	1	42	193
219	1	42	194
220	1	42	195
221	1	42	196
222	1	42	197
223	1	43	198
224	1	43	199
225	1	43	200
226	1	43	201
227	1	43	202
228	1	44	203
229	1	44	204
230	1	44	205
231	1	44	206
232	1	44	207
233	1	45	208
234	1	45	209
235	1	45	210
236	1	45	211
237	1	45	212
238	1	46	211
239	1	46	213
240	1	46	214
241	1	46	212
242	1	46	215
243	1	47	216
244	1	47	217
245	1	47	218
246	1	47	219
247	1	47	220
248	1	48	221
249	1	48	222
250	1	48	223
251	1	48	224
252	1	48	225
253	1	49	226
254	1	49	227
255	1	49	228
256	1	49	229
257	1	49	230
258	1	50	57
259	1	50	231
260	1	50	232
261	1	50	233
262	1	50	234
263	1	51	235
264	1	51	236
265	1	51	237
266	1	51	238
267	1	51	239
268	1	52	240
269	1	52	241
270	1	52	242
271	1	52	243
272	1	52	244
273	1	53	245
274	1	53	246
275	1	53	247
276	1	53	248
277	1	53	249
278	1	54	250
279	1	54	251
280	1	54	252
281	1	54	253
282	1	54	254
283	1	55	255
284	1	55	256
285	1	55	257
286	1	55	258
287	1	55	259
288	1	56	260
289	1	56	261
290	1	56	262
291	1	56	263
292	1	56	264
293	1	57	265
294	1	57	266
295	1	57	267
296	1	57	268
297	1	57	269
298	1	58	270
299	1	58	271
300	1	58	272
301	1	58	273
302	1	58	274
303	1	59	275
304	1	59	276
305	1	59	277
306	1	59	278
307	1	59	279
308	1	60	280
309	1	60	281
310	1	60	282
311	1	60	283
312	1	60	284
313	1	61	285
314	1	61	286
315	1	61	287
316	1	61	30
317	1	61	288
318	1	62	289
319	1	62	290
320	1	62	291
321	1	62	292
322	1	62	293
323	1	63	294
324	1	63	295
325	1	63	296
326	1	63	297
327	1	63	292
328	1	64	298
329	1	64	299
330	1	64	300
331	1	64	301
332	1	64	302
333	1	65	303
334	1	65	304
335	1	65	305
336	1	65	10
337	1	65	306
338	1	66	307
339	1	66	77
340	1	66	308
341	1	66	309
342	1	66	310
343	1	67	311
344	1	67	312
345	1	67	313
346	1	67	314
347	1	67	315
348	1	68	315
349	1	68	316
350	1	68	317
351	1	68	318
352	1	68	307
353	1	69	9
354	1	69	319
355	1	69	98
356	1	69	320
357	1	69	321
358	1	70	322
359	1	70	323
360	1	70	324
361	1	70	325
362	1	70	326
363	1	71	327
364	1	71	328
365	1	71	329
366	1	71	330
367	1	71	331
368	1	72	332
369	1	72	333
370	1	72	334
371	1	72	335
372	1	72	336
373	1	73	337
374	1	73	338
375	1	73	339
376	1	73	340
377	1	73	341
378	1	74	342
379	1	74	343
380	1	74	344
381	1	74	345
382	1	74	346
383	1	75	347
384	1	75	339
385	1	75	348
386	1	75	349
387	1	75	350
388	1	76	351
389	1	76	352
390	1	76	353
391	1	76	354
392	1	76	355
393	1	77	356
394	1	77	357
395	1	77	358
396	1	77	359
397	1	77	360
398	1	78	361
399	1	78	362
400	1	78	363
401	1	78	364
402	1	78	340
403	1	79	365
404	1	79	366
405	1	79	367
406	1	79	335
407	1	79	368
408	1	80	369
409	1	80	370
410	1	80	371
411	1	80	372
412	1	80	373
413	1	81	374
414	1	81	375
415	1	81	376
416	1	81	377
417	1	81	378
418	1	82	367
419	1	82	379
420	1	82	380
421	1	82	347
422	1	82	361
423	1	82	341
424	1	83	381
425	1	83	382
426	1	83	57
427	1	83	383
428	1	83	384
429	1	84	385
430	1	84	386
431	1	84	387
432	1	84	388
433	1	84	77
434	2	1	389
435	2	2	390
436	2	3	389
437	2	4	391
438	2	5	392
439	2	6	393
440	2	7	394
441	2	8	395
442	2	9	396
443	2	10	397
444	2	11	398
445	2	12	399
446	2	13	400
447	2	14	401
448	2	15	402
449	2	16	403
450	2	17	404
451	2	18	405
452	2	18	406
453	2	19	407
454	2	20	408
455	2	21	409
456	2	22	410
457	2	22	411
458	2	23	389
459	2	24	412
460	2	25	413
461	2	26	414
462	2	27	415
463	2	28	416
464	2	29	390
465	2	30	417
466	2	31	418
467	2	32	419
468	2	33	420
469	2	34	421
470	2	35	422
471	2	36	423
472	2	37	424
473	2	38	425
474	2	39	426
475	2	40	427
476	2	41	428
477	2	42	429
478	2	43	430
479	2	44	431
480	2	45	432
481	2	46	432
482	2	47	433
483	2	48	434
484	2	49	435
485	2	50	436
486	2	51	437
487	2	52	438
488	2	53	439
489	2	54	440
490	2	85	441
491	2	56	442
492	2	57	443
493	2	58	444
494	2	59	445
495	2	60	446
496	2	61	393
497	2	62	447
498	2	63	448
499	2	64	449
500	2	65	401
501	2	66	450
502	2	67	451
503	2	68	451
504	2	69	403
505	2	70	452
506	2	71	453
507	2	72	454
508	2	73	455
509	2	74	342
510	2	75	455
511	2	76	456
512	2	77	457
513	2	78	458
514	2	79	459
515	2	80	460
516	2	81	461
517	2	82	459
518	2	83	389
519	2	84	462
520	3	1	463
521	3	2	463
522	3	3	464
523	3	4	465
524	3	5	466
525	3	6	467
526	3	7	468
527	3	8	469
528	3	9	470
529	3	10	471
530	3	11	472
531	3	12	473
532	3	13	474
533	3	14	475
534	3	15	476
535	3	16	477
536	3	17	464
537	3	18	478
538	3	19	464
539	3	20	479
540	3	21	463
541	3	22	480
542	3	23	481
543	3	24	480
544	3	25	482
545	3	26	483
546	3	27	484
547	3	28	485
548	3	29	486
549	3	30	487
550	3	31	488
551	3	32	489
552	3	33	490
553	3	34	491
554	3	35	492
555	3	36	493
556	3	37	494
557	3	38	495
558	3	39	496
559	3	40	497
560	3	41	498
561	3	42	499
562	3	43	500
563	3	44	501
564	3	45	502
565	3	46	503
566	3	47	504
567	3	48	505
568	3	48	506
569	3	49	507
570	3	50	508
571	3	51	509
572	3	52	510
573	3	53	511
574	3	54	512
575	3	85	513
576	3	56	514
577	3	57	515
578	3	58	516
579	3	59	517
580	3	60	517
581	3	61	518
582	3	62	519
583	3	63	520
584	3	64	521
585	3	65	522
586	3	65	523
587	3	66	524
588	3	67	525
589	3	68	526
590	3	69	463
591	3	70	527
592	3	71	528
593	3	86	529
594	3	73	530
595	3	74	531
596	3	75	530
597	3	76	353
598	3	77	532
599	3	78	533
600	3	79	534
601	3	80	535
602	3	81	536
603	3	82	537
604	3	83	480
605	3	84	538
606	4	1	539
607	4	2	540
608	4	3	539
609	4	4	541
610	4	5	539
611	4	6	542
612	4	7	543
613	4	8	540
614	4	9	544
615	4	10	545
616	4	11	546
617	4	12	547
618	4	13	548
619	4	14	547
620	4	15	549
621	4	16	547
622	4	17	550
623	4	18	551
624	4	19	552
625	4	20	553
626	4	21	554
627	4	22	555
628	4	23	556
629	4	24	556
630	4	25	557
631	4	26	558
632	4	27	299
633	4	28	559
634	4	29	560
635	4	30	561
636	4	31	562
637	4	32	563
638	4	33	564
639	4	34	565
640	4	35	566
641	4	36	567
642	4	37	568
643	4	38	569
644	4	39	570
645	4	40	571
646	4	41	572
647	4	42	573
648	4	43	574
649	4	44	575
650	4	45	576
651	4	46	577
652	4	47	578
653	4	48	579
654	4	49	580
655	4	50	581
656	4	51	582
657	4	52	583
658	4	53	584
659	4	54	585
660	4	85	586
661	4	56	587
662	4	57	588
663	4	58	589
664	4	59	590
665	4	60	591
666	4	61	592
667	4	62	593
668	4	63	594
669	4	64	595
670	4	65	547
671	4	66	596
672	4	67	597
673	4	68	598
674	4	69	547
675	4	70	527
676	4	71	599
677	4	86	600
678	4	73	601
679	4	74	531
680	4	75	602
681	4	76	601
682	4	77	603
683	4	78	604
684	4	79	605
685	4	80	606
686	4	80	607
687	4	81	608
688	4	82	605
689	4	83	609
690	4	84	610
691	5	1	611
692	5	2	612
693	5	3	613
694	5	4	614
695	5	5	613
696	5	6	611
697	5	7	615
698	5	8	612
699	5	9	616
700	5	10	617
701	5	11	618
702	5	12	619
703	5	13	620
704	5	14	619
705	5	15	621
706	5	16	622
707	5	17	623
708	5	18	624
709	5	19	625
710	5	20	626
711	5	21	627
712	5	22	628
713	5	87	629
714	5	24	628
715	5	25	630
716	5	26	631
717	5	27	632
718	5	28	632
719	5	29	631
720	5	30	633
721	5	31	634
722	5	32	635
723	5	33	636
724	5	34	637
725	5	35	638
726	5	36	639
727	5	37	640
728	5	38	641
729	5	39	642
730	5	40	643
731	5	41	644
732	5	42	645
733	5	42	646
734	5	43	647
735	5	44	648
736	5	45	649
737	5	46	650
738	5	47	651
739	5	48	652
740	5	88	653
741	5	51	654
742	5	52	655
743	5	53	656
744	5	54	657
745	5	85	658
746	5	56	659
747	5	57	660
748	5	58	661
749	5	59	662
750	5	60	663
751	5	61	664
752	5	62	665
753	5	63	666
754	5	64	667
755	5	65	668
756	5	66	669
757	5	67	670
758	5	68	671
759	5	69	622
760	5	70	672
761	5	71	673
762	5	86	674
763	5	73	675
764	5	74	676
765	5	75	677
766	5	76	678
767	5	77	679
768	5	78	680
769	5	79	681
770	5	80	682
771	5	81	683
772	5	82	684
773	5	83	685
774	5	84	686
775	6	1	687
776	6	2	688
777	6	3	687
778	6	4	689
779	6	5	690
780	6	6	691
781	6	7	692
782	6	8	693
783	6	9	694
784	6	10	695
785	6	11	696
786	6	12	697
787	6	13	698
788	6	14	699
789	6	15	688
790	6	16	700
791	6	17	701
792	6	18	702
793	6	19	701
794	6	20	703
795	6	21	704
796	6	22	705
797	6	87	706
798	6	24	705
799	6	25	707
800	6	26	708
801	6	27	709
802	6	28	710
803	6	29	711
804	6	30	712
805	6	31	713
806	6	32	714
807	6	33	715
808	6	34	716
809	6	35	717
810	6	36	718
811	6	37	719
812	6	38	720
813	6	39	721
814	6	40	722
815	6	41	723
816	6	42	724
817	6	43	725
818	6	44	726
819	6	45	727
820	6	46	727
821	6	47	728
822	6	48	729
823	6	88	730
824	6	51	731
825	6	52	732
826	6	53	733
827	6	54	734
828	6	85	735
829	6	56	736
830	6	57	737
831	6	58	738
832	6	59	739
833	6	60	740
834	6	61	741
835	6	62	742
836	6	63	743
837	6	64	744
838	6	65	745
839	6	66	746
840	6	67	747
841	6	68	748
842	6	69	688
843	6	70	749
844	6	89	750
845	6	86	751
846	6	73	752
847	6	74	676
848	6	75	753
849	6	76	754
850	6	77	755
851	6	78	756
852	6	79	757
853	6	80	758
854	6	81	759
855	6	82	760
856	6	83	761
857	6	84	762
858	7	1	763
859	7	2	764
860	7	3	765
861	7	4	766
862	7	5	765
863	7	6	763
864	7	90	767
865	7	8	768
866	7	9	769
867	7	91	764
868	7	7	770
869	7	12	771
870	7	13	772
871	7	14	773
872	7	15	774
873	7	16	775
874	7	17	776
875	7	18	777
876	7	19	778
877	7	20	779
878	7	21	780
879	7	22	781
880	7	87	782
881	7	24	781
882	7	25	783
883	7	26	784
884	7	27	785
885	7	28	786
886	7	29	787
887	7	30	788
888	7	31	789
889	7	32	790
890	7	33	791
891	7	34	792
892	7	35	793
893	7	92	794
894	7	93	795
895	7	94	796
896	7	38	797
897	7	39	796
898	7	41	189
899	7	42	798
900	7	43	799
901	7	44	800
902	7	46	801
903	7	47	802
904	7	48	803
905	7	88	804
906	7	51	805
907	7	52	806
908	7	53	807
909	7	54	808
910	7	54	809
911	7	85	810
912	7	56	811
913	7	57	812
914	7	58	813
915	7	59	814
916	7	60	815
917	7	61	815
918	7	62	816
919	7	95	817
920	7	96	818
921	7	65	819
922	7	66	820
923	7	67	821
924	7	68	822
925	7	68	823
926	7	69	764
927	7	70	452
928	7	89	824
929	7	86	825
930	7	73	826
931	7	74	531
932	7	75	827
933	7	76	828
934	7	77	829
935	7	78	830
936	7	79	831
937	7	97	826
938	7	81	832
939	7	82	833
940	7	83	834
941	7	84	825
942	8	1	835
943	8	2	836
944	8	3	837
945	8	4	838
946	8	5	839
947	8	6	835
948	8	90	840
949	8	8	841
950	8	9	842
951	8	91	842
952	8	7	843
953	8	12	844
954	8	98	845
955	8	14	844
956	8	15	846
957	8	16	847
958	8	17	848
959	8	18	849
960	8	19	850
961	8	20	851
962	8	21	852
963	8	22	853
964	8	87	854
965	8	24	853
966	8	25	855
967	8	26	856
968	8	27	857
969	8	28	856
970	8	29	858
971	8	30	859
972	8	31	860
973	8	32	861
974	8	33	862
975	8	34	863
976	8	35	864
977	8	92	865
978	8	93	866
979	8	94	865
980	8	94	867
981	8	38	868
982	8	39	869
983	8	41	870
984	8	42	871
985	8	43	872
986	8	44	873
987	8	47	874
988	8	48	875
989	8	88	876
990	8	51	877
991	8	52	878
992	8	53	490
993	8	54	879
994	8	85	880
995	8	56	881
996	8	57	882
997	8	58	883
998	8	59	884
999	8	60	885
1000	8	61	886
1001	8	62	887
1002	8	95	888
1003	8	96	889
1004	8	65	890
1005	8	66	891
1006	8	67	892
1007	8	68	893
1008	8	69	877
1009	8	70	324
1010	8	89	894
1011	8	86	895
1012	8	73	896
1013	8	74	897
1014	8	75	898
1015	8	76	899
1016	8	77	896
1017	8	78	900
1018	8	79	901
1019	8	97	902
1020	8	81	903
1021	8	99	904
1022	8	100	905
1023	8	101	906
1024	9	1	907
1025	9	2	908
1026	9	3	907
1027	9	4	909
1028	9	5	910
1029	9	6	911
1030	9	90	912
1031	9	8	908
1032	9	9	913
1033	9	91	913
1034	9	7	914
1035	9	12	915
1036	9	98	916
1037	9	14	915
1038	9	15	917
1039	9	16	909
1040	9	17	918
1041	9	18	919
1042	9	19	919
1043	9	21	920
1044	9	22	921
1045	9	87	922
1046	9	24	922
1047	9	25	923
1048	9	26	924
1049	9	27	925
1050	9	28	924
1051	9	29	926
1052	9	30	927
1053	9	31	928
1054	9	32	929
1055	9	33	930
1056	9	34	931
1057	9	92	932
1058	9	93	933
1059	9	94	934
1060	9	38	933
1061	9	39	935
1062	9	102	936
1063	9	103	937
1064	9	104	938
1065	9	44	939
1066	9	47	940
1067	9	48	941
1068	9	88	942
1069	9	51	925
1070	9	52	943
1071	9	53	944
1072	9	54	945
1073	9	85	946
1074	9	56	947
1075	9	57	948
1076	9	58	949
1077	9	59	950
1078	9	60	951
1079	9	61	952
1080	9	62	953
1081	9	95	954
1082	9	96	955
1083	9	65	956
1084	9	66	957
1085	9	67	958
1086	9	68	959
1087	9	69	941
1088	9	70	960
1089	9	89	961
1090	9	86	962
1091	9	73	963
1092	9	74	676
1093	9	75	964
1094	9	76	965
1095	9	77	966
1096	9	105	967
1097	9	79	968
1098	9	97	969
1099	9	99	970
1100	9	100	907
1101	9	101	971
1102	10	1	972
1103	10	2	973
1104	10	3	972
1105	10	4	974
1106	10	106	975
1107	10	107	976
1108	10	108	977
1109	10	109	978
1110	10	110	979
1111	10	90	980
1112	10	8	981
1113	10	9	982
1114	10	111	983
1115	10	7	984
1116	10	112	985
1117	10	113	986
1118	10	114	987
1119	10	13	498
1120	10	115	988
1121	10	14	989
1122	10	15	990
1123	10	16	991
1124	10	116	992
1125	10	117	993
1126	10	118	994
1127	10	119	995
1128	10	120	996
1129	10	19	997
1130	10	21	998
1131	10	121	999
1132	10	122	1000
1133	10	123	1001
1134	10	87	1002
1135	10	24	1002
1136	10	25	1003
1137	10	124	1004
1138	10	125	1005
1139	10	126	972
1140	10	127	1006
1141	10	128	1007
1142	10	28	972
1143	10	29	972
1144	10	30	1008
1145	10	129	1009
1146	10	32	1010
1147	10	31	1011
1148	10	130	1012
1149	10	34	1013
1150	10	35	1014
1151	10	131	633
1152	10	93	1015
1153	10	132	1016
1154	10	133	1017
1155	10	134	1018
1156	10	135	1019
1157	10	136	1020
1158	10	41	1021
1159	10	137	1022
1160	10	44	1023
1161	10	138	1024
1162	10	139	1025
1163	10	140	1026
1164	10	47	1027
1165	10	48	1028
1166	10	49	1029
1167	10	50	1030
1168	10	141	1031
1169	10	142	1032
1170	10	143	1033
1171	10	144	1034
1172	10	145	1035
1173	10	53	1036
1174	10	146	1037
1175	10	147	1038
1176	10	148	1039
1177	10	149	1040
1178	10	150	1041
1179	10	57	1042
1180	10	151	1043
1181	10	152	1044
1182	10	153	1045
1183	10	154	1046
1184	10	62	1047
1185	10	95	1048
1186	10	96	1049
1187	10	65	991
1188	10	66	1050
1189	10	67	1051
1190	10	68	1052
1191	10	69	1053
1192	10	70	1054
1193	10	89	1055
1194	10	86	1056
1195	10	73	1057
1196	10	73	1058
1197	10	74	531
1198	10	155	1059
1199	10	75	1057
1200	10	76	1060
1201	10	77	1059
1202	10	156	1061
1203	10	157	1062
1204	10	158	1063
1205	10	105	1064
1206	10	159	1065
1207	10	160	1066
1208	10	161	1067
1209	10	100	975
1210	10	101	1068
1211	11	1	1069
1212	11	2	1070
1213	11	3	1071
1214	11	4	1072
1215	11	106	1073
1216	11	107	1074
1217	11	108	1075
1218	11	109	1076
1219	11	110	1077
1220	11	90	1078
1221	11	8	1079
1222	11	9	1080
1223	11	111	1081
1224	11	7	1082
1225	11	112	1083
1226	11	113	1069
1227	11	114	1084
1228	11	13	1085
1229	11	115	1086
1230	11	14	1069
1231	11	15	1087
1232	11	16	1088
1233	11	116	1071
1234	11	117	1089
1235	11	118	1090
1236	11	119	1091
1237	11	120	1092
1238	11	19	1071
1239	11	21	1093
1240	11	121	1094
1241	11	122	1095
1242	11	123	1096
1243	11	87	1097
1244	11	24	1097
1245	11	25	1098
1246	11	124	1099
1247	11	125	1100
1248	11	126	1101
1249	11	127	1102
1250	11	128	1103
1251	11	28	1099
1252	11	29	1070
1253	11	30	1104
1254	11	129	1105
1255	11	32	1106
1256	11	31	1107
1257	11	130	1108
1258	11	34	1109
1259	11	35	1110
1260	11	131	1111
1261	11	93	1112
1262	11	132	1113
1263	11	133	1114
1264	11	134	1115
1265	11	135	1116
1266	11	136	1117
1267	11	41	1118
1268	11	137	1119
1269	11	44	1120
1270	11	162	1121
1271	11	138	1122
1272	11	139	1123
1273	11	140	1124
1274	11	47	1125
1275	11	48	1126
1276	11	49	1127
1277	11	50	1128
1278	11	141	1129
1279	11	142	1130
1280	11	143	1131
1281	11	144	1132
1282	11	145	1133
1283	11	53	1134
1284	11	146	1135
1285	11	147	1136
1286	11	148	1137
1287	11	149	1138
1288	11	150	1139
1289	11	57	1140
1290	11	151	1141
1291	11	152	1142
1292	11	153	1143
1293	11	154	1144
1294	11	62	1145
1295	11	95	1146
1296	11	96	1147
1297	11	65	1148
1298	11	66	1149
1299	11	67	1150
1300	11	68	1151
1301	11	69	1152
1302	11	70	1153
1303	11	89	1154
1304	11	86	1155
1305	11	73	1156
1306	11	74	1157
1307	11	155	1156
1308	11	75	1158
1309	11	76	1159
1310	11	77	1156
1311	11	156	1160
1312	11	157	1161
1313	11	158	1162
1314	11	105	1163
1315	11	159	1164
1316	11	160	1165
1317	11	161	1166
1318	11	100	1167
1319	11	101	1168
1320	12	1	1169
1321	12	2	1170
1322	12	3	1171
1323	12	4	1172
1324	12	106	1173
1325	12	107	1174
1326	12	108	1171
1327	12	109	1175
1328	12	110	1176
1329	12	90	1177
1330	12	8	1178
1331	12	9	1179
1332	12	111	1180
1333	12	7	1181
1334	12	112	868
1335	12	113	1182
1336	12	114	1183
1337	12	13	1184
1338	12	115	1185
1339	12	14	1186
1340	12	15	1187
1341	12	16	1188
1342	12	116	1189
1343	12	117	1190
1344	12	118	1191
1345	12	119	1192
1346	12	120	1193
1347	12	19	1190
1348	12	21	1194
1349	12	121	1195
1350	12	122	1196
1351	12	123	1197
1352	12	87	1198
1353	12	24	1199
1354	12	25	1200
1355	12	124	1201
1356	12	125	1202
1357	12	126	1203
1358	12	127	1204
1359	12	128	1205
1360	12	28	1203
1361	12	29	1206
1362	12	48	1207
1363	12	30	1208
1364	12	129	1209
1365	12	32	1210
1366	12	163	1211
1367	12	130	1212
1368	12	34	1213
1369	12	35	1214
1370	12	131	1215
1371	12	93	1216
1372	12	132	1217
1373	12	133	1218
1374	12	134	1219
1375	12	135	1220
1376	12	136	1221
1377	12	41	1222
1378	12	164	1223
1379	12	165	1224
1380	12	44	1225
1381	12	162	1226
1382	12	162	1227
1383	12	138	1228
1384	12	139	1229
1385	12	140	1230
1386	12	49	1231
1387	12	50	1232
1388	12	141	1233
1389	12	166	1170
1390	12	144	1234
1391	12	143	1235
1392	12	145	1236
1393	12	53	1237
1394	12	146	1238
1395	12	147	1239
1396	12	167	1240
1397	12	148	1241
1398	12	149	1242
1399	12	150	1243
1400	12	57	1244
1401	12	151	1245
1402	12	152	1246
1403	12	153	1247
1404	12	154	1248
1405	12	62	1249
1406	12	95	1250
1407	12	96	1251
1408	12	65	1252
1409	12	66	1188
1410	12	67	1253
1411	12	68	1254
1412	12	69	1255
1413	12	70	1256
1414	12	89	1257
1415	12	86	1258
1416	12	73	1259
1417	12	74	531
1418	12	155	1260
1419	12	75	1261
1420	12	76	1260
1421	12	77	1262
1422	12	156	1263
1423	12	157	1264
1424	12	158	1265
1425	12	105	1266
1426	12	159	1267
1427	12	160	1268
1428	12	161	1269
1429	12	100	1270
1430	12	101	1271
1431	13	1	1272
1432	13	2	1273
1433	13	3	1272
1434	13	4	1274
1435	13	106	1272
1436	13	107	1275
1437	13	108	1276
1438	13	109	1277
1439	13	110	1278
1440	13	90	1279
1441	13	8	1280
1442	13	9	1281
1443	13	111	1282
1444	13	7	1283
1445	13	112	1284
1446	13	113	1285
1447	13	114	1286
1448	13	13	1287
1449	13	115	1288
1450	13	14	1284
1451	13	15	1289
1452	13	16	1285
1453	13	116	1290
1454	13	117	1291
1455	13	118	1292
1456	13	119	1293
1457	13	120	1294
1458	13	19	1290
1459	13	21	1295
1460	13	121	1296
1461	13	122	841
1462	13	123	1297
1463	13	87	1298
1464	13	24	1299
1465	13	25	1300
1466	13	124	1301
1467	13	125	1302
1468	13	126	1303
1469	13	127	1304
1470	13	128	1305
1471	13	28	1301
1472	13	29	1306
1473	13	48	1307
1474	13	30	1308
1475	13	129	1273
1476	13	32	1309
1477	13	163	1310
1478	13	130	1311
1479	13	34	1312
1480	13	35	1313
1481	13	131	1314
1482	13	131	1315
1483	13	93	1314
1484	13	132	1316
1485	13	133	1317
1486	13	134	1318
1487	13	135	1319
1488	13	136	1320
1489	13	41	1321
1490	13	164	1322
1491	13	165	1323
1492	13	44	1324
1493	13	168	1325
1494	13	138	1326
1495	13	139	1327
1496	13	140	1328
1497	13	49	1329
1498	13	50	1330
1499	13	141	1331
1500	13	166	1332
1501	13	144	1333
1502	13	143	1334
1503	13	145	1335
1504	13	53	1336
1505	13	146	1337
1506	13	147	1338
1507	13	167	1339
1508	13	148	1340
1509	13	149	1341
1510	13	150	1342
1511	13	57	1343
1512	13	151	1344
1513	13	152	1345
1514	13	153	1346
1515	13	154	1347
1516	13	62	1348
1517	13	95	1349
1518	13	96	1350
1519	13	65	1351
1520	13	66	1352
1521	13	67	1353
1522	13	68	1354
1523	13	69	1355
1524	13	70	1356
1525	13	89	1357
1526	13	86	1345
1527	13	73	1358
1528	13	74	676
1529	13	155	1359
1530	13	75	1359
1531	13	76	1360
1532	13	77	1361
1533	13	156	1362
1534	13	157	1363
1535	13	158	1364
1536	13	105	1365
1537	13	159	1366
1538	13	160	1367
1539	13	161	1368
1540	13	100	1369
1541	13	101	1370
1542	14	1	1371
1543	14	2	1372
1544	14	3	1371
1545	14	4	1373
1546	14	106	1374
1547	14	107	1375
1548	14	169	1376
1549	14	109	1377
1550	14	110	1378
1551	14	90	713
1552	14	8	1379
1553	14	9	1380
1554	14	111	1381
1555	14	7	1382
1556	14	112	1383
1557	14	170	1384
1558	14	114	60
1559	14	13	1385
1560	14	115	1386
1561	14	14	1384
1562	14	15	1387
1563	14	16	1388
1564	14	116	1389
1565	14	117	1390
1566	14	118	1391
1567	14	119	1392
1568	14	120	1393
1569	14	19	1389
1570	14	21	1394
1571	14	121	1395
1572	14	122	1396
1573	14	123	1397
1574	14	87	1398
1575	14	24	1399
1576	14	25	1400
1577	14	124	1401
1578	14	125	1402
1579	14	171	1371
1580	14	127	1403
1581	14	128	1404
1582	14	28	1401
1583	14	29	1372
1584	14	48	1405
1585	14	30	1406
1586	14	129	1407
1587	14	32	1408
1588	14	163	1409
1589	14	130	1410
1590	14	34	1409
1591	14	35	1411
1592	14	131	1412
1593	14	93	1413
1594	14	132	1414
1595	14	133	1415
1596	14	134	1416
1597	14	135	1417
1598	14	136	1418
1599	14	41	1419
1600	14	41	1420
1601	14	137	1421
1602	14	44	1422
1603	14	168	1423
1604	14	138	1424
1605	14	139	1425
1606	14	140	1426
1607	14	49	1427
1608	14	50	1428
1609	14	141	1429
1610	14	166	1430
1611	14	144	1431
1612	14	143	1432
1613	14	53	1433
1614	14	146	1434
1615	14	147	1435
1616	14	167	1436
1617	14	148	1437
1618	14	149	1438
1619	14	150	1439
1620	14	150	1440
1621	14	57	1441
1622	14	151	1442
1623	14	152	1443
1624	14	153	1444
1625	14	154	1445
1626	14	62	1446
1627	14	95	1447
1628	14	96	1377
1629	14	65	1448
1630	14	66	1387
1631	14	67	1449
1632	14	68	1450
1633	14	69	1451
1634	14	70	1256
1635	14	89	1452
1636	14	86	1453
1637	14	73	1454
1638	14	74	1455
1639	14	155	1456
1640	14	75	1456
1641	14	76	1457
1642	14	77	1458
1643	14	156	1459
1644	14	157	1460
1645	14	158	1461
1646	14	105	1462
1647	14	159	1463
1648	14	160	1457
1649	14	161	1269
1650	14	100	1464
1651	14	101	1465
1652	15	1	1466
1653	15	2	1467
1654	15	3	1468
1655	15	4	1469
1656	15	106	1470
1657	15	107	1471
1658	15	169	1472
1659	15	109	1473
1660	15	110	1474
1661	15	90	1475
1662	15	8	1476
1663	15	9	1477
1664	15	111	1478
1665	15	7	1479
1666	15	112	1480
1667	15	170	1468
1668	15	114	1481
1669	15	13	1482
1670	15	115	1483
1671	15	14	1484
1672	15	15	1467
1673	15	16	1485
1674	15	116	1486
1675	15	117	1487
1676	15	118	1488
1677	15	119	1489
1678	15	120	1490
1679	15	19	1486
1680	15	21	1491
1681	15	121	1492
1682	15	122	1493
1683	15	123	1494
1684	15	87	1495
1685	15	24	1496
1686	15	25	1497
1687	15	124	1498
1688	15	125	1499
1689	15	171	1500
1690	15	127	1501
1691	15	128	1502
1692	15	28	1503
1693	15	29	1504
1694	15	48	1505
1695	15	30	1506
1696	15	129	1507
1697	15	32	1508
1698	15	163	1509
1699	15	130	1510
1700	15	34	1511
1701	15	35	1512
1702	15	131	1513
1703	15	93	1514
1704	15	172	1515
1705	15	133	1516
1706	15	173	1517
1707	15	174	1518
1708	15	175	1519
1709	15	176	1520
1710	15	41	1521
1711	15	177	1522
1712	15	178	1523
1713	15	179	1524
1714	15	168	1525
1715	15	138	1526
1716	15	49	1527
1717	15	50	1528
1718	15	141	1529
1719	15	142	1530
1720	15	144	1531
1721	15	143	1532
1722	15	53	1490
1723	15	146	1533
1724	15	147	1534
1725	15	167	1535
1726	15	148	1536
1727	15	149	1537
1728	15	180	1538
1729	15	57	1539
1730	15	151	1540
1731	15	152	1541
1732	15	153	1541
1733	15	154	1542
1734	15	62	1543
1735	15	95	1544
1736	15	96	1545
1737	15	65	1546
1738	15	66	1547
1739	15	67	1548
1740	15	68	1548
1741	15	69	1549
1742	15	70	1550
1743	15	89	1551
1744	15	86	1552
1745	15	73	1553
1746	15	74	1554
1747	15	155	1555
1748	15	75	1556
1749	15	76	1557
1750	15	77	1555
1751	15	156	1558
1752	15	157	1559
1753	15	158	1553
1754	15	181	1560
1755	15	159	1561
1756	15	160	1555
1757	15	161	1562
1758	15	100	1563
1759	15	101	1564
1760	16	1	1565
1761	16	2	1566
1762	16	3	1567
1763	16	4	1568
1764	16	106	1569
1765	16	107	1567
1766	16	169	1390
1767	16	109	1565
1768	16	110	1570
1769	16	90	1571
1770	16	8	1566
1771	16	9	1572
1772	16	111	1573
1773	16	7	1574
1774	16	112	1575
1775	16	170	1576
1776	16	114	1577
1777	16	13	1578
1778	16	115	1579
1779	16	14	1576
1780	16	15	1580
1781	16	16	1581
1782	16	116	1582
1783	16	117	211
1784	16	118	1583
1785	16	119	1584
1786	16	120	1585
1787	16	19	1586
1788	16	21	1587
1789	16	121	1588
1790	16	122	1589
1791	16	123	1590
1792	16	87	1591
1793	16	24	1592
1794	16	25	1593
1795	16	124	1594
1796	16	125	1595
1797	16	171	1596
1798	16	127	1597
1799	16	128	1598
1800	16	28	1595
1801	16	29	1599
1802	16	48	1600
1803	16	30	1601
1804	16	129	1602
1805	16	32	1603
1806	16	163	1604
1807	16	130	1605
1808	16	34	1606
1809	16	35	1607
1810	16	131	1608
1811	16	172	1609
1812	16	133	1610
1813	16	173	1611
1814	16	174	1612
1815	16	175	1613
1816	16	176	1614
1817	16	41	1615
1818	16	177	1616
1819	16	178	1617
1820	16	179	1618
1821	16	168	1619
1822	16	138	1620
1823	16	49	1621
1824	16	50	1622
1825	16	141	1623
1826	16	142	1624
1827	16	144	1625
1828	16	143	1626
1829	16	53	1627
1830	16	146	1628
1831	16	147	1629
1832	16	167	1630
1833	16	148	1631
1834	16	149	1632
1835	16	180	1633
1836	16	57	1634
1837	16	151	1635
1838	16	182	1636
1839	16	183	1637
1840	16	184	1638
1841	16	62	1639
1842	16	95	1640
1843	16	96	301
1844	16	65	1581
1845	16	66	1641
1846	16	67	1642
1847	16	68	1643
1848	16	69	1566
1849	16	70	1644
1850	16	89	1645
1851	16	86	1566
1852	16	73	1646
1853	16	74	531
1854	16	155	1647
1855	16	75	1647
1856	16	76	1648
1857	16	77	1649
1858	16	156	1650
1859	16	157	1651
1860	16	158	1652
1861	16	181	1653
1862	16	159	1654
1863	16	160	1647
1864	16	161	1655
1865	16	100	1576
1866	16	101	1656
1867	17	1	1657
1868	17	2	1658
1869	17	3	1659
1870	17	4	1660
1871	17	106	1661
1872	17	107	1662
1873	17	169	1663
1874	17	109	1664
1875	17	110	1665
1876	17	90	1666
1877	17	8	1667
1878	17	9	1668
1879	17	7	1669
1880	17	185	1670
1881	17	186	1671
1882	17	170	1672
1883	17	114	1673
1884	17	13	1674
1885	17	115	1675
1886	17	14	1676
1887	17	15	1677
1888	17	16	1678
1889	17	116	1679
1890	17	117	1659
1891	17	118	1680
1892	17	119	1681
1893	17	120	1682
1894	17	19	1683
1895	17	21	1659
1896	17	121	1684
1897	17	187	1685
1898	17	188	1686
1899	17	123	1687
1900	17	87	1683
1901	17	24	1686
1902	17	25	1658
1903	17	124	1688
1904	17	125	1689
1905	17	171	1690
1906	17	127	1691
1907	17	128	1692
1908	17	28	1693
1909	17	29	1694
1910	17	48	1695
1911	17	30	1696
1912	17	129	1697
1913	17	32	1698
1914	17	163	1699
1915	17	130	1700
1916	17	34	1701
1917	17	35	1702
1918	17	172	1703
1919	17	133	1704
1920	17	173	1705
1921	17	174	1706
1922	17	175	1707
1923	17	176	1708
1924	17	41	1709
1925	17	177	1710
1926	17	178	1711
1927	17	179	1712
1928	17	168	1713
1929	17	138	1714
1930	17	49	1715
1931	17	50	1716
1932	17	141	1717
1933	17	142	1718
1934	17	144	1719
1935	17	53	1720
1936	17	146	1721
1937	17	147	1722
1938	17	167	1723
1939	17	148	1724
1940	17	149	1725
1941	17	180	1726
1942	17	57	1727
1943	17	151	1728
1944	17	182	1729
1945	17	183	1730
1946	17	184	1731
1947	17	62	1732
1948	17	95	1733
1949	17	96	1734
1950	17	65	1735
1951	17	66	1736
1952	17	67	1737
1953	17	68	1737
1954	17	69	1738
1955	17	70	1739
1956	17	89	1740
1957	17	73	1741
1958	17	74	1157
1959	17	155	1742
1960	17	75	1743
1961	17	76	1744
1962	17	77	1745
1963	17	156	1746
1964	17	157	1747
1965	17	158	1748
1966	17	181	1749
1967	17	159	1750
1968	17	160	1751
1969	17	161	1741
1970	17	100	1752
1971	17	101	1753
1972	18	1	1754
1973	18	2	1755
1974	18	3	1754
1975	18	4	1756
1976	18	106	1754
1977	18	107	1757
1978	18	169	1758
1979	18	109	1759
1980	18	110	1760
1981	18	90	1761
1982	18	8	1755
1983	18	9	1762
1984	18	7	1763
1985	18	185	1764
1986	18	186	1765
1987	18	170	1766
1988	18	114	1767
1989	18	13	1768
1990	18	115	1769
1991	18	14	1765
1992	18	15	1765
1993	18	16	1770
1994	18	116	1771
1995	18	117	1772
1996	18	189	1773
1997	18	119	1774
1998	18	120	1775
1999	18	19	1776
2000	18	21	1777
2001	18	121	1778
2002	18	187	1779
2003	18	188	1780
2004	18	123	1781
2005	18	87	1782
2006	18	25	1783
2007	18	124	1784
2008	18	125	1785
2009	18	171	1786
2010	18	127	1787
2011	18	128	1788
2012	18	28	1789
2013	18	29	658
2014	18	48	1790
2015	18	30	1791
2016	18	129	1792
2017	18	32	1793
2018	18	163	1794
2019	18	130	1795
2020	18	34	1796
2021	18	35	1797
2022	18	172	1798
2023	18	133	1799
2024	18	173	1800
2025	18	174	1801
2026	18	175	1802
2027	18	176	1803
2028	18	41	1804
2029	18	177	1805
2030	18	178	1806
2031	18	190	1807
2032	18	191	1808
2033	18	168	1809
2034	18	138	1810
2035	18	49	1811
2036	18	50	1812
2037	18	141	1813
2038	18	142	1814
2039	18	144	1815
2040	18	53	1816
2041	18	54	1817
2042	18	167	1596
2043	18	148	1818
2044	18	149	1819
2045	18	180	1820
2046	18	192	1821
2047	18	151	1822
2048	18	182	1823
2049	18	183	1824
2050	18	184	1825
2051	18	62	1826
2052	18	95	1826
2053	18	96	1827
2054	18	65	658
2055	18	66	1828
2056	18	67	1828
2057	18	68	1828
2058	18	69	1755
2059	18	70	1829
2060	18	89	1830
2061	18	73	1831
2062	18	74	1832
2063	18	155	1831
2064	18	75	1833
2065	18	76	1834
2066	18	77	1831
2067	18	156	1835
2068	18	157	1836
2069	18	158	1837
2070	18	181	1838
2071	18	159	1839
2072	18	160	1838
2073	18	161	1840
2074	18	100	1841
2075	18	101	1842
2076	19	1	1843
2077	19	2	1844
2078	19	3	1845
2079	19	4	1846
2080	19	106	1847
2081	19	107	1848
2082	19	169	1849
2083	19	109	1850
2084	19	110	1851
2085	19	9	1852
2086	19	90	1853
2087	19	8	1854
2088	19	7	1855
2089	19	185	1856
2090	19	186	1857
2091	19	170	1858
2092	19	114	1859
2093	19	13	1860
2094	19	115	1861
2095	19	14	1862
2096	19	15	1863
2097	19	16	1864
2098	19	116	1845
2099	19	117	1865
2100	19	189	1866
2101	19	19	1845
2102	19	21	1867
2103	19	193	1091
2104	19	122	1868
2105	19	123	1869
2106	19	87	1870
2107	19	25	1871
2108	19	124	997
2109	19	125	1872
2110	19	171	1873
2111	19	127	1874
2112	19	128	1875
2113	19	28	1873
2114	19	29	1876
2115	19	48	1877
2116	19	30	1878
2117	19	129	1879
2118	19	32	1880
2119	19	163	1881
2120	19	130	1882
2121	19	34	1883
2122	19	35	1884
2123	19	172	1885
2124	19	133	1886
2125	19	173	1887
2126	19	174	1888
2127	19	175	1889
2128	19	176	1890
2129	19	41	1891
2130	19	177	1892
2131	19	178	1893
2132	19	190	1894
2133	19	191	1895
2134	19	168	1896
2135	19	138	1897
2136	19	49	1898
2137	19	50	1899
2138	19	141	1900
2139	19	142	1901
2140	19	144	1902
2141	19	53	1903
2142	19	54	1904
2143	19	167	1905
2144	19	148	1906
2145	19	194	1907
2146	19	180	1908
2147	19	192	1909
2148	19	151	1910
2149	19	182	1911
2150	19	183	1912
2151	19	184	1913
2152	19	62	1914
2153	19	95	1915
2154	19	96	1862
2155	19	65	1916
2156	19	195	1917
2157	19	67	1918
2158	19	67	1919
2159	19	68	1920
2160	19	69	1921
2161	19	70	1922
2162	19	89	1923
2163	19	73	1924
2164	19	74	1925
2165	19	155	1926
2166	19	75	1927
2167	19	76	1926
2168	19	77	1928
2169	19	156	1929
2170	19	157	1930
2171	19	158	1931
2172	19	181	1932
2173	19	159	1933
2174	19	160	1934
2175	19	161	1935
2176	19	100	1936
2177	19	101	1937
2178	20	1	1938
2179	20	2	1939
2180	20	3	1938
2181	20	4	1940
2182	20	106	1941
2183	20	107	1942
2184	20	169	1943
2185	20	109	1944
2186	20	110	1474
2187	20	9	1945
2188	20	90	1946
2189	20	8	1939
2190	20	7	1947
2191	20	185	1948
2192	20	186	1949
2193	20	170	1938
2194	20	114	1950
2195	20	13	1951
2196	20	115	1952
2197	20	14	1953
2198	20	15	1954
2199	20	16	1955
2200	20	116	1956
2201	20	117	1957
2202	20	189	1958
2203	20	19	1958
2204	20	21	1959
2205	20	193	1960
2206	20	122	1961
2207	20	123	1962
2208	20	25	1963
2209	20	124	1964
2210	20	125	1965
2211	20	171	1966
2212	20	127	1967
2213	20	128	1968
2214	20	28	1969
2215	20	29	1964
2216	20	48	1970
2217	20	30	1971
2218	20	129	1972
2219	20	32	1973
2220	20	163	1974
2221	20	130	1975
2222	20	34	1976
2223	20	35	1977
2224	20	172	1978
2225	20	133	1979
2226	20	173	1980
2227	20	174	1981
2228	20	175	1982
2229	20	176	1983
2230	20	41	1984
2231	20	177	1985
2232	20	178	1986
2233	20	190	1987
2234	20	191	1988
2235	20	168	1989
2236	20	138	1990
2237	20	49	1991
2238	20	50	1992
2239	20	141	1993
2240	20	142	1994
2241	20	144	1995
2242	20	53	1996
2243	20	54	1997
2244	20	167	1998
2245	20	148	1999
2246	20	194	2000
2247	20	180	2001
2248	20	192	2002
2249	20	151	2003
2250	20	182	2004
2251	20	183	2005
2252	20	196	2006
2253	20	62	2007
2254	20	95	2008
2255	20	197	1947
2256	20	65	2009
2257	20	195	2010
2258	20	67	2010
2259	20	68	2011
2260	20	69	1939
2261	20	70	2012
2262	20	198	2013
2263	20	73	2014
2264	20	74	1157
2265	20	155	2015
2266	20	75	2016
2267	20	76	2017
2268	20	77	2018
2269	20	156	2019
2270	20	157	2020
2271	20	158	2015
2272	20	181	2021
2273	20	159	2022
2274	20	160	2023
2275	20	161	2024
2276	20	100	2025
2277	20	101	2026
2278	21	1	2027
2279	21	2	2028
2280	21	3	2027
2281	21	4	2029
2282	21	106	2030
2283	21	107	2031
2284	21	169	2032
2285	21	109	2027
2286	21	110	2033
2287	21	9	2034
2288	21	199	2031
2289	21	200	2035
2290	21	185	2036
2291	21	186	2037
2292	21	170	2038
2293	21	114	2039
2294	21	13	2040
2295	21	115	1880
2296	21	14	2041
2297	21	15	2028
2298	21	201	2042
2299	21	116	2043
2300	21	117	2044
2301	21	189	2045
2302	21	202	2045
2303	21	21	2046
2304	21	119	2044
2305	21	122	2047
2306	21	123	2048
2307	21	25	2049
2308	21	124	2050
2309	21	125	2051
2310	21	171	2052
2311	21	127	2053
2312	21	128	2054
2313	21	28	2055
2314	21	29	2056
2315	21	48	2057
2316	21	30	2058
2317	21	203	2059
2318	21	204	2060
2319	21	163	2061
2320	21	205	2062
2321	21	206	2063
2322	21	207	2064
2323	21	172	1513
2324	21	133	122
2325	21	134	2065
2326	21	174	2066
2327	21	175	2067
2328	21	176	2068
2329	21	208	2069
2330	21	209	2070
2331	21	210	2071
2332	21	211	2072
2333	21	212	2073
2334	21	213	2074
2335	21	214	2075
2336	21	49	2076
2337	21	50	2077
2338	21	141	2078
2339	21	142	2079
2340	21	53	2080
2341	21	54	2081
2342	21	167	2082
2343	21	148	2083
2344	21	149	2084
2345	21	180	2085
2346	21	192	2086
2347	21	151	2087
2348	21	215	2088
2349	21	216	2089
2350	21	196	2090
2351	21	62	2091
2352	21	95	2092
2353	21	96	2093
2354	21	65	2094
2355	21	195	2095
2356	21	67	2096
2357	21	68	2097
2358	21	217	2060
2359	21	70	2098
2360	21	218	2013
2361	21	73	2099
2362	21	74	2100
2363	21	155	2099
2364	21	75	2099
2365	21	76	2101
2366	21	77	2102
2367	21	219	2103
2368	21	220	2104
2369	21	158	2105
2370	21	221	2106
2371	21	159	2107
2372	21	160	2108
2373	21	161	2109
2374	21	100	2110
2375	21	101	2111
2376	22	1	2112
2377	22	2	2113
2378	22	3	2112
2379	22	4	2114
2380	22	106	2112
2381	22	107	2115
2382	22	169	2116
2383	22	109	2117
2384	22	110	2118
2385	22	9	2119
2386	22	199	2119
2387	22	200	2120
2388	22	185	2121
2389	22	186	2122
2390	22	170	2123
2391	22	114	2124
2392	22	13	2125
2393	22	115	2126
2394	22	14	2121
2395	22	15	2127
2396	22	201	2128
2397	22	116	2129
2398	22	117	2130
2399	22	189	2131
2400	22	202	2129
2401	22	21	2113
2402	22	119	2132
2403	22	122	2133
2404	22	123	2134
2405	22	25	2135
2406	22	124	2136
2407	22	125	2137
2408	22	171	2138
2409	22	127	2139
2410	22	128	2140
2411	22	28	2136
2412	22	29	2141
2413	22	48	2142
2414	22	30	2143
2415	22	203	2144
2416	22	204	2145
2417	22	163	2146
2418	22	205	2147
2419	22	206	2148
2420	22	207	860
2421	22	172	2149
2422	22	133	2150
2423	22	134	2151
2424	22	174	2152
2425	22	175	2153
2426	22	176	2154
2427	22	208	2155
2428	22	209	2156
2429	22	222	2157
2430	22	223	2158
2431	22	224	2159
2432	22	49	2160
2433	22	50	2161
2434	22	141	2162
2435	22	142	2163
2436	22	53	2164
2437	22	54	2165
2438	22	167	2166
2439	22	148	2167
2440	22	149	2168
2441	22	180	2169
2442	22	192	2170
2443	22	151	283
2444	22	62	2171
2445	22	225	2172
2446	22	226	2112
2447	22	95	2173
2448	22	227	2130
2449	22	65	2119
2450	22	195	2174
2451	22	67	2175
2452	22	68	2174
2453	22	217	2127
2454	22	70	2176
2455	22	228	2013
2456	22	73	2177
2457	22	74	1157
2458	22	155	2177
2459	22	75	2178
2460	22	76	2179
2461	22	77	2177
2462	22	219	2180
2463	22	220	2181
2464	22	158	2182
2465	22	221	2183
2466	22	159	2184
2467	22	160	2180
2468	22	161	2185
2469	22	100	2119
2470	22	101	2186
2471	23	1	2187
2472	23	2	2188
2473	23	3	2187
2474	23	4	2189
2475	23	106	2190
2476	23	107	2191
2477	23	169	2192
2478	23	109	2193
2479	23	110	2194
2480	23	9	2195
2481	23	199	2196
2482	23	200	2197
2483	23	185	2198
2484	23	186	2199
2485	23	170	2200
2486	23	114	2201
2487	23	13	2202
2488	23	115	2203
2489	23	14	2200
2490	23	15	2204
2491	23	201	2205
2492	23	116	2206
2493	23	117	2207
2494	23	189	2208
2495	23	202	2207
2496	23	21	2209
2497	23	122	2210
2498	23	123	2211
2499	23	25	2212
2500	23	124	2213
2501	23	125	2214
2502	23	171	2215
2503	23	127	2216
2504	23	128	2217
2505	23	28	2218
2506	23	29	2219
2507	23	48	2220
2508	23	30	2221
2509	23	203	2222
2510	23	204	2223
2511	23	163	2224
2512	23	205	2225
2513	23	206	2226
2514	23	207	2227
2515	23	172	2228
2516	23	133	2229
2517	23	229	2230
2518	23	174	2231
2519	23	175	991
2520	23	176	2232
2521	23	208	2233
2522	23	209	2234
2523	23	222	2235
2524	23	230	2236
2525	23	49	2193
2526	23	50	2237
2527	23	141	2238
2528	23	142	2188
2529	23	53	2239
2530	23	54	2240
2531	23	167	2241
2532	23	148	2242
2533	23	149	2243
2534	23	180	2244
2535	23	192	2245
2536	23	151	2246
2537	23	62	2247
2538	23	225	2248
2539	23	231	2249
2540	23	95	2250
2541	23	227	2251
2542	23	65	2252
2543	23	195	2253
2544	23	67	2254
2545	23	68	2255
2546	23	217	2196
2547	23	70	2256
2548	23	218	2013
2549	23	73	2257
2550	23	74	1157
2551	23	155	2258
2552	23	75	2259
2553	23	76	2260
2554	23	77	2261
2555	23	219	2258
2556	23	220	2262
2557	23	158	2263
2558	23	221	2264
2559	23	159	2265
2560	23	160	2266
2561	23	100	2267
2562	23	101	2268
2563	24	1	2269
2564	24	2	2270
2565	24	3	2269
2566	24	4	2271
2567	24	106	2272
2568	24	107	2269
2569	24	169	2273
2570	24	109	2274
2571	24	110	2275
2572	24	199	2270
2573	24	200	2276
2574	24	185	2277
2575	24	186	2278
2576	24	170	2279
2577	24	114	2280
2578	24	13	2281
2579	24	115	2282
2580	24	14	2283
2581	24	15	2284
2582	24	201	2285
2583	24	116	2286
2584	24	117	2287
2585	24	189	2288
2586	24	202	2289
2587	24	21	2290
2588	24	122	2291
2589	24	123	2292
2590	24	25	2293
2591	24	124	2294
2592	24	125	2295
2593	24	232	2296
2594	24	127	2297
2595	24	128	2298
2596	24	28	2294
2597	24	29	2299
2598	24	48	2300
2599	24	30	2301
2600	24	203	2302
2601	24	204	2303
2602	24	163	2304
2603	24	205	2305
2604	24	206	2306
2605	24	207	2307
2606	24	172	2308
2607	24	133	2309
2608	24	233	2310
2609	24	174	2311
2610	24	175	2312
2611	24	234	2313
2612	24	208	2314
2613	24	222	2315
2614	24	230	2316
2615	24	49	2317
2616	24	50	2318
2617	24	141	2319
2618	24	142	2320
2619	24	53	2321
2620	24	54	2322
2621	24	167	2323
2622	24	148	2324
2623	24	149	2325
2624	24	235	2326
2625	24	192	2327
2626	24	151	2328
2627	24	62	2329
2628	24	225	2330
2629	24	231	2331
2630	24	95	2332
2631	24	236	2274
2632	24	65	2333
2633	24	237	2334
2634	24	67	2334
2635	24	68	2334
2636	24	217	2335
2637	24	238	2256
2638	24	239	2336
2639	24	240	2337
2640	24	155	2338
2641	24	75	2339
2642	24	76	2340
2643	24	77	2341
2644	24	219	2342
2645	24	220	2343
2646	24	158	2344
2647	24	221	2345
2648	24	159	2346
2649	24	160	2344
2650	24	241	2273
2651	24	242	2347
2652	25	1	2348
2653	25	2	2349
2654	25	3	2348
2655	25	4	2350
2656	25	106	2351
2657	25	107	2348
2658	25	169	2352
2659	25	109	2353
2660	25	110	2354
2661	25	199	2355
2662	25	200	914
2663	25	185	2356
2664	25	186	2357
2665	25	170	2358
2666	25	114	2359
2667	25	13	2360
2668	25	115	2361
2669	25	14	2356
2670	25	15	2349
2671	25	201	2362
2672	25	116	2363
2673	25	117	2364
2674	25	189	2365
2675	25	202	2364
2676	25	21	2366
2677	25	122	2367
2678	25	123	2368
2679	25	25	2369
2680	25	124	2370
2681	25	125	2371
2682	25	171	2372
2683	25	127	2373
2684	25	128	2374
2685	25	28	2371
2686	25	29	2375
2687	25	48	66
2688	25	30	2376
2689	25	203	2377
2690	25	204	2378
2691	25	163	840
2692	25	205	2379
2693	25	206	2380
2694	25	207	2381
2695	25	172	2382
2696	25	133	2383
2697	25	233	2384
2698	25	174	2385
2699	25	175	2386
2700	25	234	2387
2701	25	208	2388
2702	25	222	2389
2703	25	230	2390
2704	25	49	2391
2705	25	50	2392
2706	25	141	2393
2707	25	142	2394
2708	25	53	2395
2709	25	54	2396
2710	25	167	2397
2711	25	148	2398
2712	25	149	2399
2713	25	235	2400
2714	25	192	2401
2715	25	151	2402
2716	25	62	2403
2717	25	225	2404
2718	25	231	2405
2719	25	95	2406
2720	25	236	2407
2721	25	65	2355
2722	25	237	2408
2723	25	67	2409
2724	25	68	2410
2725	25	217	2411
2726	25	238	2256
2727	25	239	2412
2728	25	240	1157
2729	25	155	2413
2730	25	75	2414
2731	25	76	1926
2732	25	77	1361
2733	25	219	2415
2734	25	220	2416
2735	25	158	2417
2736	25	159	2418
2737	25	160	2419
2738	25	241	2420
2739	25	242	2421
2740	26	1	2422
2741	26	2	2423
2742	26	3	2424
2743	26	4	2284
2744	26	106	2422
2745	26	107	2425
2746	26	169	2426
2747	26	243	2427
2748	26	110	2428
2749	26	199	2429
2750	26	200	2423
2751	26	185	2430
2752	26	186	2424
2753	26	170	1393
2754	26	114	2431
2755	26	13	2432
2756	26	115	2433
2757	26	14	2424
2758	26	15	2434
2759	26	201	2435
2760	26	116	2436
2761	26	117	2437
2762	26	189	2438
2763	26	202	2438
2764	26	21	2439
2765	26	122	2440
2766	26	123	2441
2767	26	124	2442
2768	26	125	2443
2769	26	171	2444
2770	26	244	2445
2771	26	128	2446
2772	26	28	2426
2773	26	29	2447
2774	26	48	2448
2775	26	30	2449
2776	26	203	2450
2777	26	204	2451
2778	26	163	2452
2779	26	205	2453
2780	26	206	2454
2781	26	207	2455
2782	26	172	2456
2783	26	133	2457
2784	26	233	2458
2785	26	174	2459
2786	26	175	2460
2787	26	234	2461
2788	26	234	2462
2789	26	208	2463
2790	26	222	2464
2791	26	213	2465
2792	26	49	2466
2793	26	50	2467
2794	26	141	2468
2795	26	142	2469
2796	26	53	2470
2797	26	54	2471
2798	26	167	2472
2799	26	148	2473
2800	26	149	2474
2801	26	235	2475
2802	26	192	2476
2803	26	151	2477
2804	26	62	2478
2805	26	225	2479
2806	26	231	2480
2807	26	95	2481
2808	26	245	2482
2809	26	65	2483
2810	26	237	2484
2811	26	67	2485
2812	26	68	2486
2813	26	217	2429
2814	26	238	2487
2815	26	239	2488
2816	26	240	2489
2817	26	155	2490
2818	26	75	2491
2819	26	76	2492
2820	26	77	2493
2821	26	246	2494
2822	26	247	2495
2823	26	158	2496
2824	26	159	2497
2825	26	160	2498
2826	26	241	2499
2827	26	242	2500
2828	27	1	2501
2829	27	2	2502
2830	27	3	2503
2831	27	4	2504
2832	27	248	2501
2833	27	249	2505
2834	27	169	2503
2835	27	200	767
2836	27	110	2506
2837	27	250	2507
2838	27	170	2508
2839	27	251	2509
2840	27	252	2510
2841	27	115	2511
2842	27	14	2512
2843	27	16	2513
2844	27	253	2514
2845	27	254	2515
2846	27	189	2516
2847	27	202	2517
2848	27	122	2518
2849	27	123	2519
2850	27	30	2520
2851	27	255	2521
2852	27	204	2522
2853	27	163	590
2854	27	205	2523
2855	27	206	2524
2856	27	256	2525
2857	27	257	2526
2858	27	171	2527
2859	27	244	2528
2860	27	128	2529
2861	27	48	2530
2862	27	28	2525
2863	27	172	2531
2864	27	133	2532
2865	27	233	2533
2866	27	174	2534
2867	27	175	2535
2868	27	234	2536
2869	27	41	2537
2870	27	44	2538
2871	27	258	1695
2872	27	49	2539
2873	27	50	2540
2874	27	141	2541
2875	27	142	2542
2876	27	53	2543
2877	27	54	2544
2878	27	167	2545
2879	27	148	2546
2880	27	149	2547
2881	27	235	2548
2882	27	192	2549
2883	27	151	2550
2884	27	62	2551
2885	27	225	2552
2886	27	231	2553
2887	27	259	2554
2888	27	260	2555
2889	27	261	2556
2890	27	227	2274
2891	27	65	2557
2892	27	67	2557
2893	27	68	2557
2894	27	217	2555
2895	27	238	2558
2896	27	155	2559
2897	27	75	2560
2898	27	76	2561
2899	27	262	2562
2900	27	263	2563
2901	27	264	2564
2902	27	158	2565
2903	27	159	2566
2904	27	265	2567
2905	27	266	2559
2906	27	240	676
2907	28	1	2568
2908	28	2	2569
2909	28	3	2568
2910	28	4	2570
2911	28	248	2571
2912	28	249	2568
2913	28	169	2572
2914	28	200	2573
2915	28	110	2572
2916	28	267	2574
2917	28	268	2569
2918	28	170	2575
2919	28	251	2576
2920	28	13	2577
2921	28	115	2578
2922	28	14	2579
2923	28	16	2580
2924	28	253	2581
2925	28	254	2582
2926	28	189	2583
2927	28	269	2584
2928	28	202	2583
2929	28	122	2585
2930	28	123	2586
2931	28	30	2587
2932	28	255	2588
2933	28	204	2589
2934	28	163	2590
2935	28	205	2591
2936	28	206	2592
2937	28	256	2593
2938	28	257	2594
2939	28	171	2595
2940	28	244	2596
2941	28	128	2597
2942	28	48	2598
2943	28	28	2594
2944	28	270	2599
2945	28	271	2600
2946	28	272	2601
2947	28	174	2602
2948	28	175	2603
2949	28	234	2604
2950	28	41	2605
2951	28	44	2606
2952	28	258	2607
2953	28	49	2608
2954	28	50	2609
2955	28	141	2610
2956	28	142	2611
2957	28	53	2612
2958	28	54	2613
2959	28	167	2614
2960	28	273	2615
2961	28	57	2616
2962	28	235	2617
2963	28	151	2618
2964	28	62	2619
2965	28	225	2572
2966	28	231	2620
2967	28	259	2621
2968	28	274	2622
2969	28	261	2623
2970	28	227	2624
2971	28	217	2625
2972	28	275	2626
2973	28	275	2627
2974	28	276	2628
2975	28	67	2629
2976	28	68	2630
2977	28	155	2178
2978	28	75	2178
2979	28	76	2631
2980	28	262	2632
2981	28	277	2633
2982	28	278	2634
2983	28	158	2635
2984	28	159	2636
2985	28	265	2637
2986	28	266	2631
2987	28	240	2638
2988	29	1	2639
2989	29	2	2640
2990	29	3	2639
2991	29	4	2641
2992	29	248	2642
2993	29	249	2643
2994	29	169	569
2995	29	279	2639
2996	29	110	2644
2997	29	250	2645
2998	29	170	2646
2999	29	251	2647
3000	29	13	2648
3001	29	115	2649
3002	29	14	2650
3003	29	16	2651
3004	29	253	2652
3005	29	253	2653
3006	29	254	2654
3007	29	189	2655
3008	29	202	2656
3009	29	122	2657
3010	29	123	2658
3011	29	30	2659
3012	29	203	2660
3013	29	204	2661
3014	29	163	2662
3015	29	280	2663
3016	29	206	2664
3017	29	256	2665
3018	29	257	2666
3019	29	171	2667
3020	29	244	1500
3021	29	128	2668
3022	29	48	2669
3023	29	28	2667
3024	29	270	2670
3025	29	271	2671
3026	29	272	385
3027	29	174	2672
3028	29	175	2673
3029	29	281	2674
3030	29	41	2675
3031	29	44	2676
3032	29	258	2677
3033	29	49	2678
3034	29	50	2679
3035	29	141	2680
3036	29	142	2681
3037	29	53	2682
3038	29	54	2683
3039	29	167	2684
3040	29	273	2685
3041	29	57	2686
3042	29	235	2687
3043	29	151	2688
3044	29	62	2689
3045	29	225	2690
3046	29	231	2691
3047	29	259	569
3048	29	242	2692
3049	29	261	2693
3050	29	227	2639
3051	29	217	2640
3052	29	282	2558
3053	29	276	2694
3054	29	67	2695
3055	29	68	2694
3056	29	155	2696
3057	29	75	2697
3058	29	76	2698
3059	29	262	2699
3060	29	283	2700
3061	29	284	2701
3062	29	158	2702
3063	29	285	2703
3064	29	265	2697
3065	29	266	2696
3066	29	240	2704
3067	30	1	2705
3068	30	2	2706
3069	30	3	2707
3070	30	4	2708
3071	30	248	2709
3072	30	249	2710
3073	30	169	1767
3074	30	110	2711
3075	30	267	2712
3076	30	268	2713
3077	30	170	2714
3078	30	115	2715
3079	30	114	2716
3080	30	13	2717
3081	30	201	2718
3082	30	253	2719
3083	30	254	2720
3084	30	189	2721
3085	30	202	2722
3086	30	122	2722
3087	30	123	2706
3088	30	286	2723
3089	30	287	2724
3090	30	288	2725
3091	30	289	2726
3092	30	290	2727
3093	30	280	2727
3094	30	291	2728
3095	30	256	2729
3096	30	257	2730
3097	30	171	2731
3098	30	244	2732
3099	30	128	2733
3100	30	292	2734
3101	30	28	2729
3102	30	270	2735
3103	30	271	2736
3104	30	272	2737
3105	30	293	2738
3106	30	175	2739
3107	30	234	2740
3108	30	208	2741
3109	30	222	2742
3110	30	213	2743
3111	30	294	2744
3112	30	295	2745
3113	30	296	2746
3114	30	297	2747
3115	30	298	2748
3116	30	299	2749
3117	30	300	2750
3118	30	301	2751
3119	30	302	2752
3120	30	303	2753
3121	30	62	2754
3122	30	225	664
3123	30	231	2755
3124	30	259	2756
3125	30	274	2757
3126	30	261	2724
3127	30	227	2758
3128	30	304	2706
3129	30	275	2759
3130	30	276	2760
3131	30	67	2761
3132	30	68	2762
3133	30	155	2763
3134	30	75	2764
3135	30	76	2765
3136	30	305	2766
3137	30	306	2767
3138	30	307	2768
3139	30	308	2769
3140	30	159	2770
3141	30	265	2771
3142	30	309	2772
3143	30	240	2773
3144	31	1	2774
3145	31	2	2775
3146	31	3	2774
3147	31	248	2775
3148	31	249	2776
3149	31	169	2777
3150	31	110	2778
3151	31	267	2775
3152	31	268	2779
3153	31	170	2780
3154	31	115	2781
3155	31	114	2782
3156	31	13	2783
3157	31	253	2784
3158	31	254	2785
3159	31	189	2786
3160	31	269	2787
3161	31	202	2788
3162	31	22	2789
3163	31	286	2790
3164	31	287	2791
3165	31	288	2792
3166	31	289	2793
3167	31	310	2794
3168	31	311	2795
3169	31	280	2796
3170	31	291	2795
3171	31	256	2797
3172	31	257	2798
3173	31	171	2799
3174	31	244	2800
3175	31	128	2801
3176	31	292	2802
3177	31	28	2803
3178	31	312	2804
3179	31	313	2805
3180	31	314	2806
3181	31	315	2807
3182	31	316	2808
3183	31	208	2809
3184	31	222	2810
3185	31	213	2811
3186	31	294	2812
3187	31	295	2813
3188	31	296	2814
3189	31	297	2815
3190	31	299	2816
3191	31	298	2817
3192	31	300	2818
3193	31	301	2819
3194	31	302	2820
3195	31	303	2821
3196	31	62	2822
3197	31	317	2823
3198	31	318	2824
3199	31	259	2825
3200	31	274	2826
3201	31	261	2827
3202	31	319	2828
3203	31	276	2829
3204	31	67	2830
3205	31	68	2831
3206	31	304	2832
3207	31	238	2833
3208	31	155	2834
3209	31	75	2835
3210	31	76	2836
3211	31	305	2102
3212	31	306	2837
3213	31	320	2838
3214	31	158	2834
3215	31	321	2839
3216	31	265	2840
3217	31	309	2102
3218	31	240	1832
3219	32	1	2841
3220	32	2	2842
3221	32	3	2841
3222	32	4	2843
3223	32	248	2844
3224	32	249	2841
3225	32	169	2845
3226	32	322	2846
3227	32	267	2847
3228	32	268	2848
3229	32	170	2849
3230	32	323	2850
3231	32	324	2851
3232	32	253	2784
3233	32	254	2852
3234	32	189	2853
3235	32	325	2854
3236	32	202	2784
3237	32	22	2855
3238	32	286	2856
3239	32	287	2857
3240	32	288	2858
3241	32	289	991
3242	32	310	2859
3243	32	326	2860
3244	32	280	2861
3245	32	291	2862
3246	32	256	2863
3247	32	257	2864
3248	32	171	2865
3249	32	244	2866
3250	32	327	2867
3251	32	328	2868
3252	32	28	2863
3253	32	329	2869
3254	32	330	2870
3255	32	331	2871
3256	32	332	2872
3257	32	333	2873
3258	32	334	2874
3259	32	208	2875
3260	32	222	2876
3261	32	213	2877
3262	32	294	2878
3263	32	295	2879
3264	32	296	2880
3265	32	297	2843
3266	32	299	2881
3267	32	298	2882
3268	32	300	2883
3269	32	301	2884
3270	32	302	2885
3271	32	303	2886
3272	32	62	2887
3273	32	317	2888
3274	32	318	2889
3275	32	335	2890
3276	32	336	2891
3277	32	261	2892
3278	32	227	2893
3279	32	276	2894
3280	32	67	2895
3281	32	68	2895
3282	32	304	2896
3283	32	275	2897
3284	32	155	2898
3285	32	337	2899
3286	32	76	355
3287	32	305	2898
3288	32	338	2900
3289	32	339	2901
3290	32	158	2902
3291	32	321	2903
3292	32	265	2904
3293	32	266	2898
3294	32	240	1832
3295	33	1	2905
3296	33	2	2906
3297	33	3	2907
3298	33	4	2908
3299	33	248	2909
3300	33	249	2910
3301	33	169	2911
3302	33	322	2912
3303	33	286	2913
3304	33	250	2914
3305	33	170	2906
3306	33	323	2915
3307	33	253	2916
3308	33	254	2917
3309	33	189	2918
3310	33	325	2919
3311	33	202	2920
3312	33	340	2921
3313	33	288	2922
3314	33	289	2923
3315	33	290	2924
3316	33	280	2925
3317	33	291	2926
3318	33	256	2927
3319	33	257	2928
3320	33	171	2929
3321	33	341	2930
3322	33	327	2931
3323	33	28	2932
3324	33	329	2933
3325	33	330	2934
3326	33	331	2935
3327	33	332	2936
3328	33	333	2937
3329	33	334	2938
3330	33	208	2939
3331	33	222	2940
3332	33	213	2941
3333	33	294	2942
3334	33	295	2943
3335	33	296	2944
3336	33	297	2945
3337	33	299	2946
3338	33	298	2947
3339	33	300	2948
3340	33	301	2949
3341	33	302	2950
3342	33	303	2951
3343	33	62	2952
3344	33	342	2953
3345	33	318	2954
3346	33	335	2955
3347	33	336	2956
3348	33	261	2957
3349	33	227	2958
3350	33	276	2959
3351	33	67	2960
3352	33	68	2960
3353	33	304	2961
3354	33	343	2962
3355	33	155	2963
3356	33	337	2964
3357	33	76	2965
3358	33	305	2966
3359	33	338	2967
3360	33	339	2963
3361	33	158	2968
3362	33	321	2969
3363	33	265	2970
3364	33	309	2971
3365	33	240	1832
3366	34	1	2972
3367	34	2	2905
3368	34	3	2973
3369	34	4	2974
3370	34	248	2975
3371	34	249	2972
3372	34	169	2973
3373	34	344	2976
3374	34	345	2977
3375	34	267	2978
3376	34	268	2979
3377	34	170	2980
3378	34	323	2981
3379	34	253	245
3380	34	254	2982
3381	34	189	2983
3382	34	325	2984
3383	34	202	2985
3384	34	340	2986
3385	34	288	2987
3386	34	289	2589
3387	34	310	2988
3388	34	290	2989
3389	34	280	2990
3390	34	291	2991
3391	34	256	2992
3392	34	346	2993
3393	34	171	2994
3394	34	327	2995
3395	34	28	2994
3396	34	329	2996
3397	34	330	2997
3398	34	331	2998
3399	34	332	2999
3400	34	333	3000
3401	34	334	3001
3402	34	208	3002
3403	34	222	3003
3404	34	213	3004
3405	34	294	3005
3406	34	296	3006
3407	34	297	3007
3408	34	299	3008
3409	34	299	3009
3410	34	298	3010
3411	34	300	3011
3412	34	301	3012
3413	34	302	3013
3414	34	303	3014
3415	34	62	3015
3416	34	241	3016
3417	34	242	2910
3418	34	261	3017
3419	34	319	3018
3420	34	276	2989
3421	34	67	3019
3422	34	68	3020
3423	34	304	3021
3424	34	275	3022
3425	34	155	3023
3426	34	347	3024
3427	34	76	2696
3428	34	305	2632
3429	34	348	3023
3430	34	158	3025
3431	34	321	3026
3432	34	265	3027
3433	34	266	3023
3434	34	240	3028
3435	35	1	3029
3436	35	2	3030
3437	35	3	3029
3438	35	4	3031
3439	35	248	3032
3440	35	249	3030
3441	35	169	3029
3442	35	322	3033
3443	35	267	3034
3444	35	268	3035
3445	35	170	3036
3446	35	323	3037
3447	35	253	3038
3448	35	254	3039
3449	35	189	3040
3450	35	325	3041
3451	35	202	3038
3452	35	340	3042
3453	35	288	3043
3454	35	289	3044
3455	35	310	3045
3456	35	290	3046
3457	35	280	3046
3458	35	291	3047
3459	35	256	3048
3460	35	257	3049
3461	35	171	3050
3462	35	327	3051
3463	35	28	3052
3464	35	329	3053
3465	35	330	3054
3466	35	331	3055
3467	35	332	3056
3468	35	333	3057
3469	35	334	3058
3470	35	349	3059
3471	35	208	3060
3472	35	222	3061
3473	35	222	3062
3474	35	213	3063
3475	35	294	3064
3476	35	350	3065
3477	35	299	3066
3478	35	298	3067
3479	35	300	3068
3480	35	301	3069
3481	35	302	3070
3482	35	241	3071
3483	35	242	3072
3484	35	62	3033
3485	35	351	3073
3486	35	352	1141
3487	35	261	3074
3488	35	227	2590
3489	35	353	3044
3490	35	276	2590
3491	35	67	3075
3492	35	68	3076
3493	35	354	3077
3494	35	275	3078
3495	35	155	1649
3496	35	347	3079
3497	35	76	3080
3498	35	305	1649
3499	35	355	3081
3500	35	356	3082
3501	35	158	3083
3502	35	321	1649
3503	35	357	3084
3504	35	265	3085
3505	35	266	1649
3506	35	240	1832
3507	36	1	3086
3508	36	2	3087
3509	36	3	3086
3510	36	4	3088
3511	36	248	3086
3512	36	249	3089
3513	36	169	3090
3514	36	110	3091
3515	36	267	3092
3516	36	268	3093
3517	36	170	3094
3518	36	115	3095
3519	36	253	3096
3520	36	254	3097
3521	36	189	3098
3522	36	269	3099
3523	36	202	3096
3524	36	340	3100
3525	36	256	3101
3526	36	257	2517
3527	36	171	3102
3528	36	128	3103
3529	36	28	3104
3530	36	329	3105
3531	36	330	3106
3532	36	358	3107
3533	36	332	3108
3534	36	333	3109
3535	36	359	3110
3536	36	349	3111
3537	36	208	3112
3538	36	222	3113
3539	36	213	3114
3540	36	294	3115
3541	36	350	3116
3542	36	298	3117
3543	36	300	3118
3544	36	301	3119
3545	36	302	3120
3546	36	62	3121
3547	36	62	3122
3548	36	351	3123
3549	36	352	3124
3550	36	360	3125
3551	36	361	3126
3552	36	204	3127
3553	36	290	3128
3554	36	280	3129
3555	36	291	3130
3556	36	261	3131
3557	36	227	3132
3558	36	353	3133
3559	36	276	3134
3560	36	67	3135
3561	36	68	3135
3562	36	304	3136
3563	36	275	3137
3564	36	275	2558
3565	36	155	3138
3566	36	347	3139
3567	36	76	3140
3568	36	305	3141
3569	36	355	3142
3570	36	356	3143
3571	36	158	3144
3572	36	321	3145
3573	36	362	3146
3574	36	266	3147
3575	36	240	1157
3576	37	1	3148
3577	37	2	3149
3578	37	3	3150
3579	37	4	3151
3580	37	248	3152
3581	37	249	3149
3582	37	169	3150
3583	37	110	3153
3584	37	267	3154
3585	37	268	3148
3586	37	170	3155
3587	37	115	3156
3588	37	253	3157
3589	37	254	3158
3590	37	189	3159
3591	37	269	3160
3592	37	202	3158
3593	37	340	3161
3594	37	256	3162
3595	37	257	3163
3596	37	171	3164
3597	37	128	3165
3598	37	363	3166
3599	37	329	3167
3600	37	330	3168
3601	37	358	3169
3602	37	332	3170
3603	37	333	3171
3604	37	359	3172
3605	37	349	3173
3606	37	208	3174
3607	37	222	3175
3608	37	213	3176
3609	37	294	3177
3610	37	350	3178
3611	37	300	3179
3612	37	301	3180
3613	37	302	3181
3614	37	62	3182
3615	37	351	3183
3616	37	352	3184
3617	37	360	3185
3618	37	361	3186
3619	37	288	3187
3620	37	289	3188
3621	37	310	3189
3622	37	290	3190
3623	37	280	3191
3624	37	291	3192
3625	37	261	3193
3626	37	227	3194
3627	37	353	3195
3628	37	276	3196
3629	37	67	3197
3630	37	68	3198
3631	37	304	3149
3632	37	275	3199
3633	37	155	3200
3634	37	337	3200
3635	37	76	1648
3636	37	76	3201
3637	37	305	3202
3638	37	158	3203
3639	37	355	3204
3640	37	356	3205
3641	37	321	3206
3642	37	266	3200
3643	37	240	3207
3644	38	1	3208
3645	38	2	3209
3646	38	3	3210
3647	38	4	3211
3648	38	248	3212
3649	38	249	3213
3650	38	169	3214
3651	38	110	3215
3652	38	267	3216
3653	38	268	3217
3654	38	170	3218
3655	38	115	3219
3656	38	253	3220
3657	38	254	3221
3658	38	189	3222
3659	38	189	3223
3660	38	269	3224
3661	38	202	3225
3662	38	340	3226
3663	38	256	3227
3664	38	257	3210
3665	38	171	3228
3666	38	128	3229
3667	38	28	3210
3668	38	364	3230
3669	38	365	3231
3670	38	366	3232
3671	38	367	3233
3672	38	349	3234
3673	38	294	3235
3674	38	350	3236
3675	38	368	3237
3676	38	300	3238
3677	38	301	3239
3678	38	369	3240
3679	38	62	3241
3680	38	370	3179
3681	38	352	3242
3682	38	371	3243
3683	38	288	3244
3684	38	289	3245
3685	38	372	3246
3686	38	290	3247
3687	38	280	3248
3688	38	291	3249
3689	38	373	3250
3690	38	227	3208
3691	38	353	3208
3692	38	276	3251
3693	38	67	3252
3694	38	68	3253
3695	38	304	3209
3696	38	238	3254
3697	38	155	3255
3698	38	75	3256
3699	38	76	899
3700	38	305	3257
3701	38	158	3258
3702	38	306	3259
3703	38	307	3255
3704	38	321	3260
3705	38	266	3261
3706	38	240	1832
3707	39	1	3262
3708	39	2	3263
3709	39	3	3262
3710	39	4	3264
3711	39	248	3265
3712	39	249	3266
3713	39	374	3267
3714	39	110	3268
3715	39	267	3269
3716	39	268	3270
3717	39	170	3271
3718	39	115	3272
3719	39	253	3273
3720	39	254	3274
3721	39	189	3275
3722	39	269	3276
3723	39	202	3277
3724	39	340	3278
3725	39	256	3279
3726	39	257	3280
3727	39	171	3281
3728	39	128	3282
3729	39	28	3279
3730	39	375	3283
3731	39	365	3284
3732	39	366	3285
3733	39	367	3286
3734	39	349	2801
3735	39	376	3287
3736	39	368	3288
3737	39	300	3289
3738	39	301	3290
3739	39	369	3291
3740	39	62	3268
3741	39	351	3292
3742	39	352	3265
3743	39	371	3293
3744	39	288	3294
3745	39	289	3295
3746	39	310	3296
3747	39	290	3297
3748	39	280	3298
3749	39	291	3299
3750	39	373	3300
3751	39	227	3301
3752	39	353	3302
3753	39	276	3303
3754	39	67	3304
3755	39	68	3305
3756	39	304	3306
3757	39	238	2759
3758	39	155	3307
3759	39	347	3307
3760	39	76	3308
3761	39	305	3202
3762	39	158	3309
3763	39	355	3310
3764	39	356	3311
3765	39	321	3312
3766	39	266	3310
3767	39	240	2704
3768	40	1	3313
3769	40	2	3314
3770	40	3	3313
3771	40	4	3314
3772	40	248	3315
3773	40	249	3316
3774	40	169	3317
3775	40	110	3318
3776	40	267	3319
3777	40	268	3320
3778	40	170	3321
3779	40	115	3322
3780	40	253	3323
3781	40	254	3324
3782	40	189	3325
3783	40	269	3326
3784	40	202	3323
3785	40	377	2724
3786	40	256	3327
3787	40	257	3328
3788	40	378	3329
3789	40	128	3330
3790	40	28	3331
3791	40	379	3332
3792	40	365	3333
3793	40	366	3334
3794	40	367	3335
3795	40	349	3336
3796	40	376	3337
3797	40	368	3338
3798	40	300	3339
3799	40	301	3340
3800	40	380	3341
3801	40	62	3342
3802	40	351	3342
3803	40	352	3343
3804	40	288	3344
3805	40	289	3345
3806	40	290	3346
3807	40	280	3347
3808	40	291	3348
3809	40	95	3349
3810	40	381	3313
3811	40	382	2724
3812	40	276	3321
3813	40	67	3350
3814	40	383	3351
3815	40	304	3352
3816	40	275	3353
3817	40	155	3354
3818	40	347	3355
3819	40	76	3354
3820	40	384	3356
3821	40	158	3357
3822	40	385	3358
3823	40	386	3359
3824	40	356	3360
3825	40	321	3361
3826	40	266	3354
3827	40	240	1832
3828	41	1	3362
3829	41	2	3363
3830	41	3	3362
3831	41	4	3364
3832	41	248	3365
3833	41	249	3363
3834	41	387	2912
3835	41	110	3366
3836	41	267	3367
3837	41	268	3368
3838	41	388	3369
3839	41	115	3370
3840	41	253	3371
3841	41	254	3372
3842	41	389	3373
3843	41	269	3374
3844	41	202	3373
3845	41	390	3375
3846	41	256	3376
3847	41	257	3377
3848	41	232	3378
3849	41	128	3379
3850	41	28	3380
3851	41	379	3381
3852	41	365	3382
3853	41	366	3383
3854	41	367	3384
3855	41	349	3385
3856	41	376	3386
3857	41	368	3387
3858	41	300	3388
3859	41	301	3389
3860	41	369	3390
3861	41	62	3391
3862	41	351	3392
3863	41	352	3393
3864	41	340	3394
3865	41	204	3395
3866	41	290	3396
3867	41	280	3397
3868	41	291	3398
3869	41	95	3399
3870	41	391	3362
3871	41	276	3400
3872	41	67	3401
3873	41	392	3402
3874	41	304	3400
3875	41	238	3403
3876	41	155	3404
3877	41	347	3404
3878	41	76	2340
3879	41	384	3141
3880	41	158	3405
3881	41	355	3406
3882	41	356	3407
3883	41	321	3408
3884	41	266	3409
3885	41	240	2704
3886	42	1	976
3887	42	2	3410
3888	42	3	976
3889	42	4	3411
3890	42	248	3412
3891	42	249	3413
3892	42	387	3414
3893	42	110	3415
3894	42	253	2194
3895	42	254	3175
3896	42	389	3416
3897	42	269	3417
3898	42	202	2194
3899	42	256	3418
3900	42	257	3419
3901	42	232	3420
3902	42	128	3421
3903	42	28	3377
3904	42	379	3422
3905	42	365	3423
3906	42	366	3424
3907	42	367	3425
3908	42	349	3426
3909	42	376	3427
3910	42	368	3428
3911	42	300	3429
3912	42	301	3430
3913	42	393	3431
3914	42	62	3432
3915	42	351	3433
3916	42	352	3434
3917	42	204	3435
3918	42	290	3436
3919	42	280	2164
3920	42	291	3437
3921	42	95	3438
3922	42	394	3439
3923	42	382	3440
3924	42	276	3441
3925	42	67	3442
3926	42	395	3443
3927	42	304	3444
3928	42	238	3445
3929	42	155	3446
3930	42	396	3447
3931	42	76	3448
3932	42	384	3449
3933	42	158	3450
3934	42	397	3451
3935	42	398	3452
3936	42	321	3453
3937	42	266	3454
3938	43	1	3455
3939	43	2	3456
3940	43	3	3457
3941	43	3	3458
3942	43	399	3459
3943	43	95	3460
3944	43	381	3457
3945	43	382	3461
3946	43	304	3462
3947	43	276	3463
3948	43	67	3464
3949	43	238	2833
3950	43	204	3465
3951	43	400	3466
3952	43	401	3467
3953	43	402	3468
3954	43	248	3457
3955	43	249	3469
3956	43	403	406
3957	43	404	3470
3958	43	253	3471
3959	43	254	3472
3960	43	389	3473
3961	43	269	3474
3962	43	202	3475
3963	43	405	3476
3964	43	365	3477
3965	43	366	3478
3966	43	367	3479
3967	43	349	3480
3968	43	256	3481
3969	43	257	3482
3970	43	232	3483
3971	43	128	3484
3972	43	28	3481
3973	43	376	3485
3974	43	368	3486
3975	43	300	3487
3976	43	301	3488
3977	43	393	3489
3978	43	62	3490
3979	43	406	3470
3980	43	352	3491
3981	43	155	3492
3982	43	396	3200
3983	43	76	3493
3984	43	305	1059
3985	43	158	3494
3986	43	407	3495
3987	43	408	3496
3988	43	321	3497
3989	43	266	3498
3990	44	1	3499
3991	44	2	3500
3992	44	3	3501
3993	44	399	3502
3994	44	95	3503
3995	44	381	3504
3996	44	409	3505
3997	44	304	3506
3998	44	276	3507
3999	44	67	3508
4000	44	410	3509
4001	44	204	3510
4002	44	411	3511
4003	44	401	3512
4004	44	402	3513
4005	44	248	3514
4006	44	249	3500
4007	44	387	3504
4008	44	110	3506
4009	44	253	3515
4010	44	254	3516
4011	44	389	3517
4012	44	269	3518
4013	44	202	3519
4014	44	412	3520
4015	44	256	3521
4016	44	257	3522
4017	44	232	3523
4018	44	128	3524
4019	44	28	3525
4020	44	349	3526
4021	44	413	3527
4022	44	376	3528
4023	44	368	3529
4024	44	300	3530
4025	44	301	3531
4026	44	393	3532
4027	44	62	3533
4028	44	414	3534
4029	44	352	3535
4030	44	415	3536
4031	44	396	3537
4032	44	76	3493
4033	44	305	3538
4034	44	158	3539
4035	44	416	3536
4036	44	417	3540
4037	44	321	3541
4038	44	266	3542
4039	45	1	3543
4040	45	2	3544
4041	45	3	3545
4042	45	399	3546
4043	45	95	3547
4044	45	381	3548
4045	45	304	3549
4046	45	276	3550
4047	45	67	3551
4048	45	418	3552
4049	45	410	1829
4050	45	400	3553
4051	45	401	3554
4052	45	402	3555
4053	45	248	3556
4054	45	249	3544
4055	45	387	3557
4056	45	110	3558
4057	45	253	3559
4058	45	254	3560
4059	45	389	3325
4060	45	269	3561
4061	45	202	3562
4062	45	412	3563
4063	45	256	3564
4064	45	257	3565
4065	45	232	3566
4066	45	128	3567
4067	45	28	3568
4068	45	349	3569
4069	45	413	3570
4070	45	376	3571
4071	45	368	3572
4072	45	300	3573
4073	45	301	3574
4074	45	393	3575
4075	45	62	3555
4076	45	419	3576
4077	45	352	3577
4078	45	420	3578
4079	45	421	3579
4080	45	76	3580
4081	45	384	2632
4082	45	158	3581
4083	45	407	3582
4084	45	408	3583
4085	45	321	3584
4086	45	266	3579
4087	46	1	3585
4088	46	2	3586
4089	46	3	3587
4090	46	399	3588
4091	46	95	3589
4092	46	422	3590
4093	46	304	3591
4094	46	276	3592
4095	46	67	3593
4096	46	67	3594
4097	46	423	3595
4098	46	410	3596
4099	46	400	3597
4100	46	401	3598
4101	46	402	3599
4102	46	248	3585
4103	46	249	3586
4104	46	387	3591
4105	46	110	3567
4106	46	253	3600
4107	46	254	3601
4108	46	389	3602
4109	46	269	3603
4110	46	202	3560
4111	46	412	3604
4112	46	256	3605
4113	46	257	3606
4114	46	232	3607
4115	46	128	3608
4116	46	28	3609
4117	46	424	3610
4118	46	413	3611
4119	46	376	3612
4120	46	300	3613
4121	46	301	3614
4122	46	393	3615
4123	46	62	3616
4124	46	419	3587
4125	46	425	3617
4126	46	420	3618
4127	46	421	3618
4128	46	76	3619
4129	46	384	3620
4130	46	158	3621
4131	46	407	3622
4132	46	408	3623
4133	46	321	3624
4134	46	309	3618
4135	47	1	2288
4136	47	2	3625
4137	47	3	2288
4138	47	4	3626
4139	47	95	3627
4140	47	381	3628
4141	47	304	3625
4142	47	276	3629
4143	47	67	3630
4144	47	423	3631
4145	47	400	3630
4146	47	401	3632
4147	47	402	3633
4148	47	248	2288
4149	47	249	3634
4150	47	387	3635
4151	47	110	3636
4152	47	253	3637
4153	47	254	3638
4154	47	389	3639
4155	47	269	3640
4156	47	202	3638
4157	47	412	3641
4158	47	256	3642
4159	47	257	3643
4160	47	232	3644
4161	47	128	3645
4162	47	28	3643
4163	47	349	3646
4164	47	413	3647
4165	47	426	3648
4166	47	300	3649
4167	47	301	3650
4168	47	393	3651
4169	47	62	3652
4170	47	419	3651
4171	47	425	3653
4172	47	420	3654
4173	47	421	3654
4174	47	76	3140
4175	47	384	3655
4176	47	158	3656
4177	47	407	3657
4178	47	408	3658
4179	47	321	3659
4180	47	309	3654
4181	48	1	3660
4182	48	2	3661
4183	48	3	3660
4184	48	399	3662
4185	48	95	3663
4186	48	381	1545
4187	48	304	3664
4188	48	427	3665
4189	48	67	3666
4190	48	428	3667
4191	48	400	3668
4192	48	401	3669
4193	48	402	3670
4194	48	248	3671
4195	48	249	3672
4196	48	387	3562
4197	48	429	3673
4198	48	430	3674
4199	48	253	3675
4200	48	254	3676
4201	48	389	3677
4202	48	269	3677
4203	48	202	3677
4204	48	412	2801
4205	48	256	3678
4206	48	257	3679
4207	48	232	3680
4208	48	128	3681
4209	48	28	3682
4210	48	349	3683
4211	48	413	3684
4212	48	426	3685
4213	48	300	3686
4214	48	301	3687
4215	48	393	3688
4216	48	62	3689
4217	48	406	3690
4218	48	431	3691
4219	48	155	3692
4220	48	421	3693
4221	48	76	3694
4222	48	384	3692
4223	48	158	3695
4224	48	355	3696
4225	48	356	3697
4226	48	321	3698
4227	48	432	3699
4228	49	1	3700
4229	49	2	3701
4230	49	3	3702
4231	49	399	3703
4232	49	95	3704
4233	49	381	3705
4234	49	304	3704
4235	49	427	3706
4236	49	67	3707
4237	49	248	3701
4238	49	249	3702
4239	49	433	3708
4240	49	110	3709
4241	49	253	3710
4242	49	254	3711
4243	49	434	3712
4244	49	202	3713
4245	49	412	3714
4246	49	256	3715
4247	49	257	3716
4248	49	232	3717
4249	49	128	3718
4250	49	28	3715
4251	49	435	3719
4252	49	413	3720
4253	49	376	3721
4254	49	62	3722
4255	49	406	3723
4256	49	431	3724
4257	49	300	3725
4258	49	301	3726
4259	49	393	3727
4260	49	400	3728
4261	49	401	3728
4262	49	402	3729
4263	49	420	3730
4264	49	421	3731
4265	49	355	3732
4266	49	356	3730
4267	49	158	3733
4268	49	76	3734
4269	49	321	3735
4270	49	436	1649
4271	49	266	1649
4272	50	1	3710
4273	50	2	3710
4274	50	3	3710
4275	50	399	3708
4276	50	95	3736
4277	50	381	3710
4278	50	304	3710
4279	50	427	3737
4280	50	67	3738
4281	50	437	3739
4282	50	438	3740
4283	50	439	3741
4284	50	440	3742
4285	50	441	3710
4286	50	253	3743
4287	50	254	3744
4288	50	442	3745
4289	50	202	3746
4290	50	412	3747
4291	50	256	3748
4292	50	257	3749
4293	50	232	3750
4294	50	128	3751
4295	50	28	3752
4296	50	443	3740
4297	50	413	3753
4298	50	426	3754
4299	50	62	3755
4300	50	406	3756
4301	50	431	3757
4302	50	300	3758
4303	50	301	3759
4304	50	393	3760
4305	50	444	3761
4306	50	445	3762
4307	50	420	1926
4308	50	446	3763
4309	50	348	3764
4310	50	158	2968
4311	50	76	1926
4312	50	321	3765
4313	50	305	3766
4314	50	266	3763
4315	51	1	3767
4316	51	2	3768
4317	51	3	3769
4318	51	399	3770
4319	51	95	3771
4320	51	381	3772
4321	51	304	3773
4322	51	427	3774
4323	51	67	3775
4324	51	437	3776
4325	51	438	3777
4326	51	447	3767
4327	51	448	3771
4328	51	440	3778
4329	51	441	3769
4330	51	253	3779
4331	51	254	3780
4332	51	449	3781
4333	51	269	3769
4334	51	202	3782
4335	51	412	1116
4336	51	256	3783
4337	51	257	3784
4338	51	171	3785
4339	51	128	3786
4340	51	28	3784
4341	51	450	3787
4342	51	131	3788
4343	51	451	3789
4344	51	452	3790
4345	51	406	3791
4346	51	431	3792
4347	51	300	3793
4348	51	301	3794
4349	51	393	3795
4350	51	453	3796
4351	51	454	3797
4352	51	420	3798
4353	51	446	3799
4354	51	158	3800
4355	51	348	3798
4356	51	76	3801
4357	51	384	3802
4358	51	455	3803
4359	51	266	3804
4360	52	1	3805
4361	52	2	3806
4362	52	3	3807
4363	52	399	3808
4364	52	95	3809
4365	52	381	3810
4366	52	456	3811
4367	52	427	3812
4368	52	67	3813
4369	52	457	3814
4370	52	458	3815
4371	52	459	3805
4372	52	460	3816
4373	52	461	3809
4374	52	462	3817
4375	52	463	3818
4376	52	464	3819
4377	52	202	3818
4378	52	256	3820
4379	52	257	3821
4380	52	465	1875
4381	52	28	3807
4382	52	435	3822
4383	52	131	3823
4384	52	412	3824
4385	52	451	1947
4386	52	452	3809
4387	52	406	3825
4388	52	431	3826
4389	52	301	3827
4390	52	393	3828
4391	52	466	3829
4392	52	467	3830
4393	52	421	3831
4394	52	158	3832
4395	52	76	3580
4396	52	468	3833
4397	52	305	3834
4398	52	469	3835
4399	52	309	3200
4400	53	1	3836
4401	53	2	3837
4402	53	3	3836
4403	53	452	3838
4404	53	470	3839
4405	53	471	3806
4406	53	472	3840
4407	53	473	3836
4408	53	474	3836
4409	53	475	3838
4410	53	431	3841
4411	53	301	3842
4412	53	4	3843
4413	53	453	3844
4414	53	454	3845
4415	53	476	3836
4416	53	477	3837
4417	53	478	3839
4418	53	479	3806
4419	53	480	3836
4420	53	481	3846
4421	53	482	3846
4422	53	483	3847
4423	53	484	3848
4424	53	435	3610
4425	53	131	3849
4426	53	451	709
4427	53	485	709
4428	53	486	3850
4429	53	487	709
4430	53	488	3851
4431	53	489	709
4432	53	369	3852
4433	53	300	3853
4434	53	95	3854
4435	53	490	3839
4436	53	304	3837
4437	53	266	3855
4438	53	491	3856
4439	53	492	3837
4440	53	67	3857
4441	53	420	353
4442	53	420	3699
4443	53	421	3858
4444	53	158	3859
4445	53	348	3860
4446	53	76	353
4447	53	493	3861
4448	53	493	3862
4449	53	321	3863
4450	54	1	3864
4451	54	2	3865
4452	54	3	3866
4453	54	452	3867
4454	54	470	3868
4455	54	471	3864
4456	54	494	3869
4457	54	473	3870
4458	54	474	3871
4459	54	495	3872
4460	54	431	3873
4461	54	496	3874
4462	54	369	3875
4463	54	300	3876
4464	54	67	3877
4465	54	497	3878
4466	54	498	3879
4467	54	499	3880
4468	54	500	3881
4469	54	501	3882
4470	54	481	3883
4471	54	502	3883
4472	54	484	3884
4473	54	503	3885
4474	54	504	3886
4475	54	485	3887
4476	54	505	3888
4477	54	506	3887
4478	54	489	3887
4479	54	95	3869
4480	54	507	3864
4481	54	304	3864
4482	54	309	355
4483	54	491	3889
4484	54	492	3890
4485	54	508	3891
4486	54	421	3892
4487	54	509	3893
4488	54	348	3894
4489	54	76	3895
4490	54	493	3896
4491	54	493	3897
4492	54	510	3898
4493	55	1	3411
4494	55	2	3899
4495	55	511	3900
4496	55	3	3901
4497	55	470	3902
4498	55	471	3903
4499	55	512	3411
4500	55	473	3904
4501	55	474	3905
4502	55	495	3906
4503	55	431	3907
4504	55	496	3908
4505	55	513	3909
4506	55	4	3910
4507	55	300	3911
4508	55	67	3899
4509	55	466	3912
4510	55	467	3913
4511	55	498	3914
4512	55	95	3411
4513	55	507	3903
4514	55	514	3915
4515	55	515	3916
4516	55	516	3915
4517	55	517	3917
4518	55	481	3918
4519	55	503	3919
4520	55	518	3920
4521	55	519	3915
4522	55	520	3921
4523	55	505	3922
4524	55	521	3915
4525	55	489	3915
4526	55	522	2013
4527	55	304	3411
4528	55	266	3900
4529	55	523	3914
4530	55	524	3923
4531	55	421	3924
4532	55	525	3925
4533	55	355	3926
4534	55	356	3900
4535	55	76	353
4536	55	493	3927
4537	55	321	3928
4538	55	526	3924
4539	55	527	3929
4540	56	1	3930
4541	56	2	3931
4542	56	511	3932
4543	56	3	3933
4544	56	528	3934
4545	56	470	3935
4546	56	471	3933
4547	56	466	3931
4548	56	467	3936
4549	56	498	3937
4550	56	529	3938
4551	56	95	3938
4552	56	530	3935
4553	56	473	3939
4554	56	474	3940
4555	56	495	3941
4556	56	431	3942
4557	56	496	3943
4558	56	531	3944
4559	56	304	3931
4560	56	532	3945
4561	56	533	3935
4562	56	534	3946
4563	56	300	3941
4564	56	535	3947
4565	56	481	3948
4566	56	503	3949
4567	56	518	3950
4568	56	536	3951
4569	56	519	3952
4570	56	520	3953
4571	56	505	3954
4572	56	521	3952
4573	56	489	3952
4574	56	537	2013
4575	56	67	3955
4576	56	538	3956
4577	56	539	3957
4578	56	540	3958
4579	56	541	3959
4580	56	542	3960
4581	56	76	3140
4582	56	305	3961
4583	56	543	3962
4584	56	544	2700
4585	56	545	3963
4586	56	527	3964
4587	57	1	3965
4588	57	546	3966
4589	57	415	2102
4590	57	3	3965
4591	57	452	3967
4592	57	470	3966
4593	57	471	3968
4594	57	547	3969
4595	57	548	3970
4596	57	498	3971
4597	57	549	3972
4598	57	550	3973
4599	57	95	3974
4600	57	551	3965
4601	57	473	3975
4602	57	474	3976
4603	57	552	3910
4604	57	431	3977
4605	57	421	3654
4606	57	553	3978
4607	57	355	3979
4608	57	554	3980
4609	57	76	3981
4610	57	555	2102
4611	57	556	3982
4612	57	557	2102
4613	57	309	3981
4614	57	534	3981
4615	57	558	3966
4616	57	527	3983
4617	57	496	3984
4618	57	531	3985
4619	57	559	3986
4620	57	532	3987
4621	57	67	3988
4622	57	300	3989
4623	57	535	3990
4624	57	485	3991
4625	57	481	3992
4626	57	503	3975
4627	57	518	3993
4628	57	560	3994
4629	58	1	3995
4630	58	546	3996
4631	58	508	3997
4632	58	3	3998
4633	58	452	3411
4634	58	561	3999
4635	58	562	3995
4636	58	563	4000
4637	58	564	4001
4638	58	498	4002
4639	58	549	4003
4640	58	550	4004
4641	58	95	4005
4642	58	565	3995
4643	58	473	4006
4644	58	474	4007
4645	58	566	4008
4646	58	421	4009
4647	58	553	4010
4648	58	355	4011
4649	58	554	3997
4650	58	76	3734
4651	58	555	1928
4652	58	556	4012
4653	58	265	4013
4654	58	309	3537
4655	58	534	4014
4656	58	558	4015
4657	58	496	3996
4658	58	567	4016
4659	58	568	4017
4660	58	569	4018
4661	58	300	4019
4662	58	535	4020
4663	58	485	4021
4664	58	481	3974
4665	58	503	4006
4666	58	570	4022
4667	58	571	4023
4668	59	1	294
4669	59	546	4024
4670	59	508	4025
4671	59	3	294
4672	59	572	4026
4673	59	561	4024
4674	59	562	4027
4675	59	563	4028
4676	59	564	1141
4677	59	498	4026
4678	59	549	4029
4679	59	573	4030
4680	59	574	294
4681	59	473	4031
4682	59	474	4032
4683	59	575	4030
4684	59	576	1141
4685	59	566	4033
4686	59	496	4034
4687	59	567	4035
4688	59	577	4024
4689	59	569	4036
4690	59	578	4024
4691	59	534	4037
4692	59	300	2399
4693	59	535	4038
4694	59	485	4039
4695	59	481	4040
4696	59	503	4041
4697	59	570	4042
4698	59	579	4043
4699	59	421	4044
4700	59	553	4045
4701	59	580	4046
4702	59	554	4047
4703	59	76	4037
4704	59	555	4048
4705	59	556	4049
4706	59	82	4050
4707	59	82	4051
4708	59	581	4044
4709	60	1	4052
4710	60	2	4053
4711	60	3	4054
4712	60	582	4055
4713	60	583	4056
4714	60	584	3419
4715	60	585	4057
4716	60	574	4058
4717	60	586	4059
4718	60	587	4058
4719	60	588	4060
4720	60	589	4061
4721	60	590	1141
4722	60	591	4062
4723	60	421	4063
4724	60	592	4064
4725	60	593	3696
4726	60	594	4065
4727	60	595	4066
4728	60	596	4067
4729	60	597	3896
4730	60	82	4068
4731	60	598	4069
4732	60	599	4070
4733	60	600	4071
4734	60	601	4072
4735	60	602	4073
4736	60	603	4074
4737	60	604	3419
4738	60	605	4075
4739	60	606	4076
4740	60	607	4077
4741	60	608	4078
4742	60	581	4065
4743	60	577	4079
4744	60	609	4080
4745	60	427	4081
4746	60	610	4082
4747	60	611	4083
4748	61	1	4055
4749	61	2	4084
4750	61	3	4085
4751	61	470	4086
4752	61	471	4084
4753	61	612	4087
4754	61	587	4088
4755	61	613	4089
4756	61	614	4090
4757	61	615	4091
4758	61	421	4092
4759	61	616	4093
4760	61	617	4094
4761	61	618	4095
4762	61	619	4093
4763	61	556	4096
4764	61	620	4087
4765	61	621	4087
4766	61	622	4097
4767	61	623	1728
4768	61	623	4098
4769	61	601	4099
4770	61	624	4100
4771	61	603	4101
4772	61	625	4102
4773	61	605	4085
4774	61	606	4103
4775	61	607	4104
4776	61	300	4105
4777	61	574	4084
4778	61	581	4106
4779	61	609	4107
4780	61	626	4108
4781	61	427	4109
4782	61	627	4110
4783	62	1	4111
4784	62	2	4112
4785	62	3	4111
4786	62	470	4113
4787	62	471	4114
4788	62	587	4115
4789	62	612	4116
4790	62	613	4117
4791	62	628	4118
4792	62	629	4116
4793	62	496	4119
4794	62	605	4120
4795	62	606	415
4796	62	574	4112
4797	62	630	4121
4798	62	631	4119
4799	62	427	4122
4800	62	632	4123
4801	62	633	4124
4802	62	634	4125
4803	62	635	4126
4804	62	300	4119
4805	62	421	4127
4806	62	636	4128
4807	62	637	4129
4808	62	616	4130
4809	62	556	4131
4810	62	638	4132
\.


--
-- Data for Name: nominee_information; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nominee_information (id, nominee_name, artist, workers, img) FROM stdin;
1	Bad Guy	Billie Eilish	Finneas O'Connell, producer; Rob Kinelski & Finneas O'Connell, engineers/mixers; John Greenham, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billie%2BEilish/Billie%2520Eilish_1_1_1594138954.jpg?itok=3-71Dfxh
2	Hey, Ma	Bon Iver	BJ Burton, Brad Cook, Chris Messina & Justin Vernon, producers; BJ Burton, Zach Hanson & Chris Messina, engineers/mixers; Greg Calbi, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bon%2BIver/Bon%2520Iver_1_1_1578385181.jpg?itok=_M1hc5Ux
3	7 rings	Ariana Grande	Charles Anderson, Tommy Brown, Michael Foster & Victoria Monet, producers; Serban Ghenea, John Hanes, Billy Hickey & Brendan Morawski, engineers/mixers; Randy Merrill, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ariana%2BGrande/Ariana%2520Grande_1_1_1578384678.jpg?itok=Amj90j13
4	Hard Place	H.E.R.	Rodney “Darkchild” Jerkins, producer; Joseph Hurtado, Jaycen Joshua, Derek Keota & Miki Tsutsumi, engineers/mixers; Colin Leonard, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/H.E.R./H.E.R._1_1_1594631035.jpg?itok=ClJe-2MN
5	Talk	Khalid	Disclosure & Denis Kosiak, producers; Ingmar Carlson, Jon Castelli, Josh Deguzman, John Kercy, Denis Kosiak, Guy Lawrence & Michael Romero, engineers/mixers; Dale Becker, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Khalid/Khalid_1_1_1594578772.jpg?itok=2HxjAT-X
6	Old Town Road	Lil Nas X Featuring Billy Ray Cyrus	Andrew "VoxGod" Bolooki, Jocelyn “Jozzy” Donald & YoungKio, producers; Andrew "VoxGod" Bolooki, Cinco & Joe Grasso, engineers/mixers; Eric Lagg, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Montero%2BLamar%2BHill/Lil%2520Nas%2520X_1_1_1581656760.jpg?itok=_YR6dOjI
7	Truth Hurts	Lizzo	Ricky Reed & Tele, producers; Chris Galland, Manny Marroquin & Ethan Shumaker, engineers/mixers; Chris Gehringer, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lizzo/Lizzo_1_1_1583931631.jpg?itok=Gm2FQx4s
8	Sunflower	Post Malone & Swae Lee	Louis Bell & Carter Lang, producers; Louis Bell & Manny Marroquin, engineers/mixers; Mike Bozzi, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Post%2BMalone/Post%2520Malone_1_1_1594910341.jpg?itok=HCyRm13g
9	When We All Fall Asleep, Where Do We Go?	Billie Eilish	Finneas O'Connell, producer; Rob Kinelski & Finneas O'Connell, engineers/mixers; Billie Eilish O'Connell & Finneas O'Connell, songwriters; John Greenham, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billie%2BEilish/Billie%2520Eilish_1_1_1594138954.jpg?itok=3-71Dfxh
10	I,I	Bon Iver	Brad Cook, Chris Messina & Justin Vernon, producers; Zach Hanson & Chris Messina, engineers/mixers; BJ Burton, Brad Cook & Justin Vernon, songwriters; Greg Calbi, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bon%2BIver/Bon%2520Iver_1_1_1578385181.jpg?itok=_M1hc5Ux
11	Norman F***ing Rockwell!	Lana Del Rey	Jack Antonoff & Lana Del Rey, producers; Jack Antonoff & Laura Sisk, engineers/mixers; Jack Antonoff & Lana Del Rey, songwriters; Chris Gehringer, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lana%2BDel%2BRey/Lana%2520Del%2520Rey_1_1_1581552089.jpg?itok=a-RXRsSr
12	thank u, next	Ariana Grande	Tommy Brown, Ilya, Max Martin & Victoria Monet, producers; Serban Ghenea, Sam Holland & Brendan Morawski, engineers/mixers; Tommy Brown, Ariana Grande, Savan Kotecha, Max Martin, Victoria Monet, Tayla Parx & Ilya Salmanzadeh, songwriters; Randy Merrill, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ariana%2BGrande/Ariana%2520Grande_1_1_1578384678.jpg?itok=Amj90j13
13	I Used To Know Her	H.E.R.	David "Swagg R'Celious" Harris, H.E.R., Walter Jones & Jeff Robinson, producers; Miki Tsutsumi, engineer/mixer; Sam Ashworth, Jeff “Gitty” Gitelman, David "Swagg R'Celious" Harris & H.E.R., songwriters; Dave Kutch, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/H.E.R./H.E.R._1_1_1594631035.jpg?itok=ClJe-2MN
14	7	Lil Nas X	Joe Grasso, engineer/mixer; Montero Lamar Hill, songwriter; Eric Lagg, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Montero%2BLamar%2BHill/Lil%2520Nas%2520X_1_1_1581656760.jpg?itok=_YR6dOjI
15	Cuz I Love You (Deluxe)	Lizzo	Ricky Reed, producer; Manny Marroquin & Ethan Shumaker, engineers/mixers; Eric Frederic & Melissa Jefferson, songwriters; Chris Gehringer, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BReed/Ricky%2520Reed_1_1_1581552716.jpg?itok=Qw0BFFJ4
16	Father Of The Bride	Vampire Weekend	Ezra Koenig & Ariel Rechtshaid, producers; John DeBold, Chris Kasych, Takemasa Kosaka, Ariel Rechtshaid & Hiroya Takayama, engineers/mixers; Ezra Koenig, songwriter; Emily Lazar, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vampire%2BWeekend/Vampire%2520Weekend_1_1_1578387474.jpg?itok=mAj-5E-g
17	Always Remember Us This Way	Natalie Hemby, Lady Gaga, Hillary Lindsey & Lori McKenna, songwriters (Lady Gaga)	Natalie Hemby, Lady Gaga, Hillary Lindsey & Lori McKenna, songwriters (Lady Gaga)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BHemby/Natalie%2520Hemby_1_1_1591113039.jpg?itok=AKF_O3V1
18	Bring My Flowers Now	Brandi Carlile, Phil Hanseroth, Tim Hanseroth & Tanya Tucker, songwriters (Tanya Tucker)	Brandi Carlile, Phil Hanseroth, Tim Hanseroth & Tanya Tucker, songwriters (Tanya Tucker)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brandi%2BCarlile/Brandi%2520Carlile_1_1_1597247043.jpg?itok=5265JEVE
19	Lover	Taylor Swift, songwriter (Taylor Swift)	Taylor Swift, songwriter (Taylor Swift)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
20	Norman F***ing Rockwell	Jack Antonoff & Lana Del Rey, songwriters (Lana Del Rey)	Jack Antonoff & Lana Del Rey, songwriters (Lana Del Rey)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/jack.png?itok=qPWzu57c
21	Someone You Loved	Tom Barnes, Lewis Capaldi, Pete Kelleher, Benjamin Kohn & Sam Roman, songwriters (Lewis Capaldi)	Tom Barnes, Lewis Capaldi, Pete Kelleher, Benjamin Kohn & Sam Roman, songwriters (Lewis Capaldi)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lewis%2BCapaldi/Lewis%2520Capaldi_1_1_1581553214.jpg?itok=9PpWeGPh
22	Billie Eilish	Billie Eilish		
23	Black Pumas	Black Pumas		
24	Lil Nas X	Lil Nas X		
25	Lizzo	Lizzo		
26	Maggie Rogers	Maggie Rogers		
27	ROSALÍA	ROSALÍA		
28	Tank And The Bangas	Tank And The Bangas		
29	Yola	Yola		
30	Spirit	Beyoncé	Beyoncé	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
31	You Need To Calm Down	Taylor Swift	Taylor Swift	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
32	Boyfriend	Ariana Grande & Social House	Ariana Grande & Social House	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ariana%2BGrande/Ariana%2520Grande_1_1_1578384678.jpg?itok=Amj90j13
33	Sucker	Jonas Brothers	Jonas Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jonas%2BBrothers/Jonas%2520Brothers_1_1_1594893817.jpg?itok=TvU3Eyx0
34	Señorita	Shawn Mendes & Camila Cabello	Shawn Mendes & Camila Cabello	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shawn%2BMendes/Shawn%2520Mendes_1_1_1591112919.jpg?itok=Fw4joBjf
35	Look Now	Elvis Costello & The Imposters	Elvis Costello & The Imposters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elvis%2BCostello/Elvis%2520Costello_1_1_1594649557.jpg?itok=8w_hGvGC
36	Sì	Andrea Bocelli	Andrea Bocelli	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrea%2BBocelli/Andrea%2520Bocelli_1_1_1597657844.jpg?itok=n_0n8Jdw
37	Love (Deluxe Edition)	Michael Bublé	Michael Bublé	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBubl%25C3%25A9/Michael%2520Bubl%25C3%25A9_1_1_1578385534.jpg?itok=QJp6bog2
38	A Legendary Christmas	John Legend	John Legend	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
39	Walls	Barbra Streisand	Barbra Streisand	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
40	The Lion King: The Gift	Beyoncé	Beyoncé	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
41	No.6 Collaborations Project	Ed Sheeran	Ed Sheeran	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ed%2BSheeran/Ed%2520Sheeran_1_1_1594056948.jpg?itok=On8YTR-K
42	Got To Keep On	The Chemical Brothers	The Chemical Brothers, producers; Steve Dub Jones & Tom Rowlands, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
43	Linked	Bonobo	Simon Green, producer; Simon Green & Frank Merritt, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonobo/Bonobo_1_1_1578387014.jpg?itok=6Xx-KaEA
44	Piece Of Your Heart	Meduza Featuring Goodboys	Simone Giani, Luca De Gregorio & Mattia Vitale, producers; Simone Giani, Luca De Gregorio & Mattia Vitale, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Meduza/Meduza_1_1_1581656767.jpg?itok=bUt2_QoP
45	Underwater	RÜFÜS DU SOL	Jason Evigan & RÜFÜS DU SOL, producers; Cassian Stewart-Kasimba, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/R%25C3%25BCf%25C3%25BCs%2BDu%2BSol/R%25C3%259CF%25C3%259CS%2520DU%2520SOL_1_1_1581551768.jpg?itok=i-NFBuVl
46	Midnight Hour	Skrillex, Boys Noize & Ty Dolla $ign	Boys Noize & Skrillex, producers; Tom Norris & Skrillex, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
47	No Geography	The Chemical Brothers	The Chemical Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
48	LP5	Apparat	Apparat	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Apparat/Apparat_1_1_1581551818.jpg?itok=gNn62Z-D
49	Hi This Is Flume (Mixtape)	Flume	Flume	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flume/Flume_1_1_1588264597.jpg?itok=mXrjnc4N
50	SOLACE	RÜFÜS DU SOL	RÜFÜS DU SOL	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/R%25C3%25BCf%25C3%25BCs%2BDu%2BSol/R%25C3%259CF%25C3%259CS%2520DU%2520SOL_1_1_1581551768.jpg?itok=i-NFBuVl
51	Weather	Tycho Featuring Saint Sinner	Tycho Featuring Saint Sinner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tycho/Tycho_1_1_1581551782.jpg?itok=e-RMC3kJ
52	Mettavolution	Rodrigo y Gabriela	Rodrigo y Gabriela	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rodrigo%2By%2BGabriela/Rodrigo%2520y%2520Gabriela_1_1_1581371564.jpg?itok=PX2o2l1Z
53	Ancestral Recall	Christian Scott aTunde Adjuah	Christian Scott aTunde Adjuah	
54	Star People Nation	Theo Croker	Theo Croker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Theo%2BCroker/Theo%2520Croker_1_1_1581552439.jpg?itok=a25cBe_0
55	Beat Music! Beat Music! Beat Music!	Mark Guiliana	Mark Guiliana	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BGuiliana/Mark%2520Guiliana_1_1_1581552197.jpg?itok=pvPLu8q6
56	Elevate	Lettuce	Lettuce	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lettuce/Lettuce_1_1_1596097987.jpg?itok=YNS02Rbi
57	This Land	Gary Clark Jr.	Gary Clark Jr.	https://www.grammy.com/sites/com/files/styles/artist_circle/public/garyclarkjr-spotlight-590678766.png?itok=Wc9C6JCI
58	Pretty Waste	Bones UK	Bones UK	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bones%2BUK/Bones%2520UK_1_1_1596098000.jpg?itok=xjHfoAEp
59	History Repeats	Brittany Howard	Brittany Howard	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brittany%2BHoward/Brittany%2520Howard_1_1_1595867701.jpg?itok=xSAUCrab
60	Woman	Karen O & Danger Mouse	Karen O & Danger Mouse	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Karen%2BO/Karen%2520O_1_1_1578387233.jpg?itok=XVL6wq0k
61	Too Bad	Rival Sons	Rival Sons	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rival%2BSons/RIVAL%2520SONS_1_1_1582726033.jpg?itok=jibCmcdC
62	7empest	Tool	Tool	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tool/Tool_1_1_1578387453.jpg?itok=eRR26rxr
63	Astorolus - The Great Octopus	Candlemass Featuring Tony Iommi	Candlemass Featuring Tony Iommi	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Candlemass/Candlemass_1_1_1578384387.jpg?itok=GK6Vwtji
64	Humanicide	Death Angel	Death Angel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Death%2BAngel/Death%2520Angel_1_1_1584526447.jpg?itok=HfSWH2xg
65	Bow Down	I Prevail	I Prevail	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/I%2BPrevail/I%2520Prevail_1_1_1594649940.jpg?itok=qc-FAOei
66	Unleashed	Killswitch Engage	Killswitch Engage	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Killswitch%2BEngage/Killswitch%2520Engage_1_1_1578387236.jpg?itok=pO-779bp
67	Fear Inoculum	Danny Carey, Justin Chancellor, Adam Jones & Maynard James Keenan, songwriters (Tool)	Danny Carey, Justin Chancellor, Adam Jones & Maynard James Keenan, songwriters (Tool)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maynard%2BJames%2BKeenan/Maynard%2520James%2520Keenan_1_1_1581619260.jpg?itok=TAz5w4WM
68	Give Yourself A Try	George Daniel, Adam Hann, Matthew Healy & Ross MacDonald, songwriters (The 1975)	George Daniel, Adam Hann, Matthew Healy & Ross MacDonald, songwriters (The 1975)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adam%2BHann/Adam%2520Hann_1_1_1581652677.jpg?itok=vc_NxDk4
69	Harmony Hall	Ezra Koenig, songwriter (Vampire Weekend)	Ezra Koenig, songwriter (Vampire Weekend)	
70	Social Cues	Cage The Elephant	Cage The Elephant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cage%2BThe%2BElephant/Cage%2520The%2520Elephant_1_1_1581551756.jpg?itok=mhAGqzDZ
71	amo	Bring Me The Horizon	Bring Me The Horizon	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bring%2BMe%2BThe%2BHorizon/Bring%2520Me%2520the%2520Horizon_1_1_1594058142.jpg?itok=rphfHH9M
72	In The End	The Cranberries	The Cranberries	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BCranberries/The%2520Cranberries_1_1_1591112980.jpg?itok=dZ8Ba825
73	Trauma	I Prevail	I Prevail	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/I%2BPrevail/I%2520Prevail_1_1_1594649940.jpg?itok=qc-FAOei
74	Feral Roots	Rival Sons	Rival Sons	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rival%2BSons/RIVAL%2520SONS_1_1_1582726033.jpg?itok=jibCmcdC
75	U.F.O.F.	Big Thief	Big Thief	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Big%2BThief/Big%2520Thief_1_1_1588264774.jpg?itok=KuFHkAOR
76	Assume Form	James Blake	James Blake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BBlake/James%2520Blake_1_1_1578387181.jpg?itok=WnKXIx0X
77	Anima	Thom Yorke	Thom Yorke	https://www.grammy.com/sites/com/files/styles/artist_circle/public/thom_yorke.png?itok=YO27DEeb
78	Come Home	Anderson .Paak Featuring André 3000	Anderson .Paak Featuring André 3000	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anderson%2B.Paak/Anderson%2520.Paak_1_1_1581551893.jpg?itok=uYzYyy-g
79	Love Again	Daniel Caesar & Brandy	Daniel Caesar & Brandy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BCaesar/Daniel%2520Caesar_1_1_1579536375.jpg?itok=V4d594x2
80	Could've Been	H.E.R. Featuring Bryson Tiller	H.E.R. Featuring Bryson Tiller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/H.E.R./H.E.R._1_1_1594631035.jpg?itok=ClJe-2MN
81	Exactly How I Feel	Lizzo Featuring Gucci Mane	Lizzo Featuring Gucci Mane	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lizzo/Lizzo_1_1_1583931631.jpg?itok=Gm2FQx4s
82	Roll Some Mo	Lucky Daye	Lucky Daye	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBrown/David%2520Brown_1_1_1597180238.jpg?itok=hsYrRs_5
83	Jerome	Lizzo	Lizzo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lizzo/Lizzo_1_1_1583931631.jpg?itok=Gm2FQx4s
84	Time Today	BJ The Chicago Kid	BJ The Chicago Kid	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/BJ%2BThe%2BChicago%2BKid/Bj%2520THE%2520CHICAGO%2520KID_1_1_1581552431.jpg?itok=hktDvQrE
85	Steady Love	India.Arie	India.Arie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/indiaarie-spotlight-107148703.png?itok=EhTaEZYR
86	Real Games	Lucky Daye	Lucky Daye	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBrown/David%2520Brown_1_1_1597180238.jpg?itok=hsYrRs_5
87	Built For Love	PJ Morton Featuring Jazmine Sullivan	PJ Morton Featuring Jazmine Sullivan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/PJ%2BMorton/PJ%2520Morton_1_1_1581553476.jpg?itok=jl8z_7qP
88	Say So	PJ Morton, songwriter (PJ Morton Featuring JoJo)	PJ Morton, songwriter (PJ Morton Featuring JoJo)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/PJ%2BMorton/PJ%2520Morton_1_1_1581553476.jpg?itok=jl8z_7qP
89	Look At Me Now	Emily King & Jeremy Most, songwriters (Emily King)	Emily King & Jeremy Most, songwriters (Emily King)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emily%2BKing/Emily%2520King_1_1_1580223533.jpg?itok=DTv0-T6H
90	No Guidance	Chris Brown, Tyler James Bryant, Nija Charles, Aubrey Graham, Anderson Hernandez, Joshua Huizar, Michee Patrick Lebrun, Noah Shebib & Teddy Walton, songwriters (Chris Brown Featuring Drake)	Chris Brown, Tyler James Bryant, Nija Charles, Aubrey Graham, Anderson Hernandez, Joshua Huizar, Michee Patrick Lebrun, Noah Shebib & Teddy Walton, songwriters (Chris Brown Featuring Drake)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/chrisbrown-spotlight-514044766.png?itok=xc5pU0If
91	Apollo XXI	Steve Lacy	Steve Lacy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BLacy-Moya/Steve%2520Lacy_1_1_1581562287.jpg?itok=ZU1p2eI5
92	Overload	Georgia Anne Muldrow	Georgia Anne Muldrow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Georgia%2BAnne%2BMuldrow/Georgia%2520Anne%2520Muldrow_1_1_1578387142.jpg?itok=OCD276ut
93	Saturn	NAO	NAO	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/NAO/NAO_1_1_1588264640.jpg?itok=ZAWYuUz0
94	Being Human In Public	Jessie Reyez	Jessie Reyez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jessie%2BReyez/Jessie%2520Reyez_1_1_1584702385.jpg?itok=SkNe8sX5
95	Ventura	Anderson .Paak	Anderson .Paak	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anderson%2B.Paak/Anderson%2520.Paak_1_1_1581551893.jpg?itok=uYzYyy-g
96	1123	BJ The Chicago Kid	BJ The Chicago Kid	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/BJ%2BThe%2BChicago%2BKid/Bj%2520THE%2520CHICAGO%2520KID_1_1_1581552431.jpg?itok=hktDvQrE
97	Painted	Lucky Daye	Lucky Daye	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBrown/David%2520Brown_1_1_1597180238.jpg?itok=hsYrRs_5
98	Ella Mai	Ella Mai	Ella Mai	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BMai/Ella%2520Mai_1_1_1581554582.jpg?itok=535PoMSJ
99	Paul	PJ Morton	PJ Morton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/PJ%2BMorton/PJ%2520Morton_1_1_1581553476.jpg?itok=jl8z_7qP
100	Racks In The Middle	Nipsey Hussle Featuring Roddy Ricch & Hit-Boy	Nipsey Hussle Featuring Roddy Ricch & Hit-Boy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/nispey_hussle.jpg?itok=5_wRiQ7t
101	Middle Child	J. Cole	J. Cole	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/J.%2BCole/J.%2520Cole_1_1_1597064506.jpg?itok=55BZ0_qa
102	Suge	DaBaby	DaBaby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/DaBaby/DaBaby_1_1_1594126736.jpg?itok=Wlzj10nP
103	Down Bad	Dreamville Featuring J.I.D, Bas, J. Cole, EARTHGANG & Young Nudy	Dreamville Featuring J.I.D, Bas, J. Cole, EARTHGANG & Young Nudy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_34.png?itok=_tMVdLyt
104	Clout	Offset Featuring Cardi B	Offset Featuring Cardi B	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Offset/OFFSET_1_1_1591238493.jpg?itok=NxmpVG3X
105	Higher	DJ Khaled Featuring Nipsey Hussle & John Legend	DJ Khaled Featuring Nipsey Hussle & John Legend	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/DJ%2BKhaled/DJ%2520Khaled_1_1_1595859534.jpg?itok=Oy_XqCIe
106	Drip Too Hard	Lil Baby & Gunna	Lil Baby & Gunna	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lil%2BBaby/Lil%2520Baby_1_1_1594378564.jpg?itok=M_DemNOu
107	Panini	Lil Nas X	Lil Nas X	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Montero%2BLamar%2BHill/Lil%2520Nas%2520X_1_1_1581656760.jpg?itok=_YR6dOjI
108	Ballin'	Mustard Featuring Roddy Ricch	Mustard Featuring Roddy Ricch	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dijon%2BMcFarlane/Mustard_1_1_1581371394.jpg?itok=HvY72cZm
109	The London	Young Thug Featuring J. Cole & Travis Scott	Young Thug Featuring J. Cole & Travis Scott	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeffery%2BLamar%2BWilliams/Young%2520Thug_1_1_1581554774.jpg?itok=82TcG3yJ
110	A Lot	Jermaine Cole, Dacoury Natche, 21 Savage & Anthony White, songwriters (21 Savage Featuring J. Cole)	Jermaine Cole, Dacoury Natche, 21 Savage & Anthony White, songwriters (21 Savage Featuring J. Cole)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/J.%2BCole/J.%2520Cole_1_1_1597064506.jpg?itok=55BZ0_qa
111	Bad Idea	Chancelor Bennett, Cordae Dunston, Uforo Ebong & Daniel Hackett, songwriters (YBN Cordae Featuring Chance The Rapper)	Chancelor Bennett, Cordae Dunston, Uforo Ebong & Daniel Hackett, songwriters (YBN Cordae Featuring Chance The Rapper)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chancelor%2BBennett/Chance%2520The%2520Rapper_1_1_1581551756.jpg?itok=sD2KjlWQ
112	Gold Roses	Noel Cadastre, Aubrey Graham, Anderson Hernandez, Khristopher Riddick-Tynes, William Leonard Roberts II, Joshua Quinton Scruggs, Leon Thomas III & Ozan Yildirim, songwriters (Rick Ross Featuring Drake)	Noel Cadastre, Aubrey Graham, Anderson Hernandez, Khristopher Riddick-Tynes, William Leonard Roberts II, Joshua Quinton Scruggs, Leon Thomas III & Ozan Yildirim, songwriters (Rick Ross Featuring Drake)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Drake/Drake_1_1_1594066654.jpg?itok=SV_b8VHJ
113	Igor	Tyler, The Creator	Tyler, The Creator	https://www.grammy.com/sites/com/files/styles/artist_circle/public/tylerthecreator-spotlight.png?itok=94E8worH
114	Revenge Of The Dreamers III	Dreamville	Dreamville	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_34.png?itok=_tMVdLyt
115	Championships	Meek Mill	Meek Mill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Meek%2BMill/Meek%2520Mill_1_1_1578387296.jpg?itok=cL8i8u2Z
116	I Am > I Was	21 Savage	21 Savage	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/21%2BSavage/21%2520Savage_1_1_1581552016.jpg?itok=OD45PjAa
117	The Lost Boy	YBN Cordae	YBN Cordae	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/YBN%2BCordae/YBN%2520Cordae_1_1_1581628263.jpg?itok=5X9mFGRP
118	Ride Me Back Home	Willie Nelson	Willie Nelson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
119	All Your’n	Tyler Childers	Tyler Childers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tyler%2BChilders/Tyler%2520Childers_1_1_1584457124.jpg?itok=36vPBFWp
120	Girl Goin' Nowhere	Ashley McBryde	Ashley McBryde	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ashley%2BMcBryde/Ashley%2520McBryde_1_1_1594938725.jpg?itok=wUjMc0xL
121	God's Country	Blake Shelton	Blake Shelton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blake%2BShelton/Blake%2520Shelton_1_1_1578387001.jpg?itok=nHF_lLYS
122	Speechless	Dan + Shay	Dan + Shay	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dan%2B%252B%2BShay/Dan%2520%252B%2520Shay_1_1_1595519839.jpg?itok=YuZpUbdu
123	Brand New Man	Brooks & Dunn With Luke Combs	Brooks & Dunn With Luke Combs	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brooks%2B%2526%2BDunn/Brooks%2520%2526%2520Dunn_1_1_1596249775.jpg?itok=mibOXkAc
124	I Don't Remember Me (Before You)	Brothers Osborne	Brothers Osborne	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brothers%2BOsborne/Brothers%2520Osborne_1_1_1594117254.jpg?itok=CduEn-7S
125	The Daughters	Little Big Town	Little Big Town	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Little%2BBig%2BTown/Little%2520Big%2520Town_1_1_1595861656.jpg?itok=iuWsqCuA
126	Common	Maren Morris Featuring Brandi Carlile	Maren Morris Featuring Brandi Carlile	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maren%2BMorris/Maren%2520Morris_1_1_1594056945.jpg?itok=29Dwb_ve
127	It All Comes Out In The Wash	Miranda Lambert, Hillary Lindsey, Lori McKenna & Liz Rose, songwriters (Miranda Lambert)	Miranda Lambert, Hillary Lindsey, Lori McKenna & Liz Rose, songwriters (Miranda Lambert)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miranda%2BLambert/Miranda%2520Lambert_1_1_1594893267.jpg?itok=7i4nOIkz
128	Some Of It	Eric Church, Clint Daniels, Jeff Hyde & Bobby Pinson, songwriters (Eric Church)	Eric Church, Clint Daniels, Jeff Hyde & Bobby Pinson, songwriters (Eric Church)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BChurch/Eric%2520Church_1_1_1578385050.jpg?itok=L8iXKdL8
129	While I'm Livin'	Tanya Tucker	Tanya Tucker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tanya%2BTucker/Tanya%2520Tucker_1_1_1595545983.jpg?itok=YUHGrOgo
130	Desperate Man	Eric Church	Eric Church	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BChurch/Eric%2520Church_1_1_1578385050.jpg?itok=L8iXKdL8
131	Stronger Than The Truth	Reba McEntire	Reba McEntire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Reba%2BMcEntire/Reba%2520McEntire_1_1_1578387350.jpg?itok=UEMLeH_f
132	Interstate Gospel	Pistol Annies	Pistol Annies	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pistol%2BAnnies/Pistol%2520Annies_1_1_1581552146.jpg?itok=up-K1AST
133	Center Point Road	Thomas Rhett	Thomas Rhett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thomas%2BRhett/Thomas%2520Rhett_1_1_1578384552.jpg?itok=0wBZNW8J
134	Wings	Peter Kater	Peter Kater	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BKater/Peter%2520Kater_1_1_1581554053.jpg?itok=TFsf2wjd
135	Fairy Dreams	David Arkenstone	David Arkenstone	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BArkenstone/David%2520Arkenstone_1_1_1578387095.jpg?itok=ycvZBXGu
136	Homage To Kindness	David Darling	David Darling	
137	Verve	Sebastian Plano	Sebastian Plano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sebastian%2BPlano/Sebastian%2520Plano_1_1_1581552743.jpg?itok=mwDr83hf
138	Deva	Deva Premal	Deva Premal	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deva%2BPremal/Deva%2520premal_1_1_1597174793_0.jpg?itok=szPeM6cz
139	Sozinho	Randy Brecker, soloist	Randy Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BBrecker/Randy%2520Brecker_1_1_1575373868.jpg?itok=9QxyBydg
140	Elsewhere	Melissa Aldana, soloist	Melissa Aldana, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Melissa%2BAldana/Melissa%2520Aldana_1_1_1575355710.jpg?itok=cHEEaH9n
141	Tomorrow Is The Question	Julian Lage, soloist	Julian Lage, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BLage/Julian%2520Lage_1_1_1594758594.jpg?itok=_3X5-Sx9
142	The Windup	Branford Marsalis, soloist	Branford Marsalis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Branford%2BMarsalis/Branford%2520Marsalis_1_1_1584628324.jpg?itok=qOYg7Q6K
143	Sightseeing	Christian McBride, soloist	Christian McBride, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christian%2BMcBride/Christian%2520McBride_1_1_1578387063.jpg?itok=3giAcQ-M
144	12 Little Spells	Esperanza Spalding	Esperanza Spalding	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Esperanza%2BSpalding/Esperanza%2520Spalding_1_1_1581552254.jpg?itok=5wdQbxbw
145	Thirsty Ghost	Sara Gazarek	Sara Gazarek	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sara%2BGazarek/Sara%2520Gazarek_1_1_1581553565.jpg?itok=vJyWrmjt
146	Love & Liberation	Jazzmeia Horn	Jazzmeia Horn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jazzmeia%2BHorn/Jazzmeia%2520Horn_1_1_1581628291.jpg?itok=-9xN_vS1
147	Alone Together	Catherine Russell	Catherine Russell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Catherine%2BRussell/Catherine%2520Russell_1_1_1578387046.jpg?itok=mrtGvA7m
148	Screenplay	Tierney Sutton Band	Tierney Sutton Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tierney%2BSutton/Tierney%2520Sutton_1_1_1575360413.jpg?itok=btGJaYJt
149	Finding Gabriel	Brad Mehldau	Brad Mehldau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brad%2BMehldau/Brad%2520Mehldau_1_1_1578387024.jpg?itok=w_qDSFSp
150	In The Key Of The Universe	Joey DeFrancesco	Joey DeFrancesco	
151	The Secret Between The Shadow And The Soul	Branford Marsalis Quartet	Branford Marsalis Quartet	
152	Christian McBride's New Jawn	Christian McBride’s New Jawn	Christian McBride’s New Jawn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christian%2BMcBride/Christian%2520McBride_1_1_1578387063.jpg?itok=3giAcQ-M
153	Come What May	Joshua Redman Quartet	Joshua Redman Quartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joshua%2BRedman/Joshua%2520Redman_1_1_1575369922.jpg?itok=48Eq-pkH
154	The Omni-American Book Club	Brian Lynch Big Band	Brian Lynch Big Band	
155	Triple Helix	Anat Cohen Tentet	Anat Cohen Tentet	
156	Dancer In Nowhere	Miho Hazama	Miho Hazama	
157	Hiding Out	Mike Holober & The Gotham Jazz Orchestra	Mike Holober & The Gotham Jazz Orchestra	
158	One Day Wonder	Terraza Big Band	Terraza Big Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terraza%2BBig%2BBand/Terraza%2520Big%2520Band_1_1_1581619926.jpg?itok=xLPiHbs4
159	Antidote	Chick Corea & The Spanish Heart Band	Chick Corea & The Spanish Heart Band	
160	Sorte!: Music By John Finbury	Thalma de Freitas With Vitor Gonçalves, John Patitucci, Chico Pinheiro, Rogerio Boccato & Duduka Da Fonseca	Thalma de Freitas With Vitor Gonçalves, John Patitucci, Chico Pinheiro, Rogerio Boccato & Duduka Da Fonseca	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thalma%2Bde%2BFreitas/Thalma%2520de%2520Freitas_1_1_1581627306.jpg?itok=N9mypY2O
161	Una Noche Con Rubén Blades	Jazz At Lincoln Center Orchestra With Wynton Marsalis Featuring Rubén Blades	Jazz At Lincoln Center Orchestra With Wynton Marsalis Featuring Rubén Blades	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
162	Carib	David Sánchez	David Sánchez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanchez/David%2520Sanchez_1_1_1588844480.jpg?itok=B1C1s-If
163	Sonero: The Music Of Ismael Rivera	Miguel Zenón	Miguel Zenón	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miguel%2BZenon/Miguel%2520Zenon_1_1_1581554613.jpg?itok=0J1YMpWk
164	Love Theory	Kirk Franklin; Kirk Franklin, songwriter	Kirk Franklin; Kirk Franklin, songwriter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
165	Talkin' 'Bout Jesus	Gloria Gaynor Featuring Yolanda Adams; Bryan Fowler, Gloria Gaynor & Chris Stevens, songwriters	Gloria Gaynor Featuring Yolanda Adams; Bryan Fowler, Gloria Gaynor & Chris Stevens, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BGaynor/Gloria%2520Gaynor_1_1_1578387145.jpg?itok=pSaCbtAb
201	Poco A Poco	La Energia Norteña	La Energia Norteña	
166	See The Light	Travis Greene Featuring Jekalyn Carr	Travis Greene Featuring Jekalyn Carr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Travis%2BGreene/Travis%2520Greene_1_1_1594731107.jpg?itok=83_FyGXE
167	Speak The Name	Koryn Hawthorne Featuring Natalie Grant	Koryn Hawthorne Featuring Natalie Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Koryn%2BHawthorne/Koryn%2520Hawthorne_1_1_1598877989.jpg?itok=j7KCOgMf
168	This Is A Move (Live)	Tasha Cobbs Leonard; Tony Brown, Brandon Lake, Tasha Cobbs Leonard & Nate Moore, songwriters	Tasha Cobbs Leonard; Tony Brown, Brandon Lake, Tasha Cobbs Leonard & Nate Moore, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tasha%2BCobbs/Tasha%2520Cobbs_1_1_1578515138.jpg?itok=uTbk9-DV
169	God Only Knows	for KING & COUNTRY & Dolly Parton; Josh Kerr, Jordan Reynolds, Joel Smallbone, Luke Smallbone & Tedd Tjornhom, songwriters	for KING & COUNTRY & Dolly Parton; Josh Kerr, Jordan Reynolds, Joel Smallbone, Luke Smallbone & Tedd Tjornhom, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/For%2BKing%2B%2526%2BCountry/for%2520King%2520%2526%2520Country_1_1_1594893266.jpg?itok=vbdVBPd1
170	Only Jesus	Casting Crowns; Mark Hall, Bernie Herms & Matthew West, songwriters	Casting Crowns; Mark Hall, Bernie Herms & Matthew West, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Casting%2BCrowns/Casting%2520Crowns_1_1_1595967307.jpg?itok=-PNWYUFZ
171	Haven't Seen It Yet	Danny Gokey; Danny Gokey, Ethan Hulse & Colby Wedgeworth, songwriters	Danny Gokey; Danny Gokey, Ethan Hulse & Colby Wedgeworth, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Danny%2BGokey/Danny%2520Gokey_1_1_1594724422.jpg?itok=9FIyBhj5
172	God's Not Done With You (Single Version)	Tauren Wells	Tauren Wells	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tauren%2BWells/Tauren%2520Wells_1_1_1596246202.jpg?itok=I2mZmwVY
173	Rescue Story	Zach Williams; Ethan Hulse, Andrew Ripp, Jonathan Smith & Zach Williams, songwriters	Zach Williams; Ethan Hulse, Andrew Ripp, Jonathan Smith & Zach Williams, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zach%2BWilliams/Zach%2520Williams_1_1_1589203860.jpg?itok=-LP-eodk
174	Long Live Love	Kirk Franklin	Kirk Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
175	Goshen	Donald Lawrence Presents The Tri -City Singers	Donald Lawrence Presents The Tri -City Singers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donald%2BLawrence/Donald%2520Lawrence_1_1_1594739006.jpg?itok=sLgm8I99
176	Tunnel Vision	Gene Moore	Gene Moore	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gene%2BMoore/Gene%2520Moore_1_1_1581554695.jpg?itok=cYFDZNaB
177	Settle Here	William Murphy	William Murphy	
178	Something's Happening! A Christmas Album	CeCe Winans	CeCe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
179	Burn The Ships	for KING & COUNTRY	for KING & COUNTRY	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/For%2BKing%2B%2526%2BCountry/for%2520King%2520%2526%2520Country_1_1_1594893266.jpg?itok=vbdVBPd1
180	I Know A Ghost	Crowder	Crowder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Crowder/Crowder_1_1_1596247728.jpg?itok=4LLMlso6
181	The Elements	TobyMac	TobyMac	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TobyMac/TobyMac_1_1_1598306051.jpg?itok=SpVwnS-G
182	Holy Roar	Chris Tomlin	Chris Tomlin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BTomlin/Chris%2520Tomlin_1_1_1581554713.jpg?itok=-oRnaxZO
183	Testimony	Gloria Gaynor	Gloria Gaynor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BGaynor/Gloria%2520Gaynor_1_1_1578387145.jpg?itok=pSaCbtAb
184	Deeper Roots: Where The Bluegrass Grows	Steven Curtis Chapman	Steven Curtis Chapman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BCurtis%2BChapman/Steven%2520Curtis%2520Chapman_1_1_1595957925.jpg?itok=qj-xFTeX
185	Deeper Oceans	Joseph Habedank	Joseph Habedank	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joseph%2BHabedank/Joseph%2520Habedank_1_1_1581564716.jpg?itok=CLVTQ9xX
186	His Name Is Jesus	Tim Menzies	Tim Menzies	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tim%2BMenzies/Tim%2520Menzies_1_1_1581552467.jpg?itok=xCAUK3IN
187	Gonna Sing, Gonna Shout	(Various Artists)	Jerry Salley, Producer	
188	#Eldisco	Alejandro Sanz	Alejandro Sanz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alejandro%2BSanz/Alejandro%2520Sanz_1_1_1581342907.jpg?itok=0YVrY2Gd
189	Vida	Luis Fonsi	Luis Fonsi	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BFonsi/Luis%2520Fonsi_1_1_1581552055.jpg?itok=RkAXKj1M
190	11:11	Maluma	Maluma	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maluma/Maluma_1_1_1596098044.jpg?itok=tLMqULBR
191	Montaner	Ricardo Montaner	Ricardo Montaner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricardo%2BMontaner/Ricardo%2520Montaner_1_1_1588858537.jpg?itok=shGiJSWF
192	Fantasia	Sebastian Yatra	Sebastian Yatra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sebastian%2BYatra/Sebastian%2520Yatra_1_1_1581552053.jpg?itok=btgi52jM
193	El Mal Querer	ROSALÍA	ROSALÍA	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/ROSAL%25C3%258DA/ROSAL%25C3%258DA_1_1_1599075435.jpg?itok=zgYamrDi
194	X 100Pre	Bad Bunny	Bad Bunny	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bad%2BBunny/Bad%2520Bunny_1_1_1594644107.jpg?itok=6crVcL6L
195	Oasis	J Balvin & Bad Bunny	J Balvin & Bad Bunny	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/J%2BBalvin/J%2520Balvin_1_1_1591112930.jpg?itok=rt1piLg-
196	Indestructible	Flor De Toloache	Flor De Toloache	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flor%2BDe%2BToloache/Flor%2520De%2520Toloache_1_1_1596097994.jpg?itok=qGdkotoi
197	Almadura	iLe	iLe	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/ile/ILE_1_1_1582723542_0.jpg?itok=EJpO42hJ
198	De Ayer Para Siempre	Mariachi Los Camperos	Mariachi Los Camperos	
199	Caminando	Joss Favela	Joss Favela	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joss%2BFavela/Joss%2520Favela_1_1_1581553533.jpg?itok=ltWE3iW4
200	Percepción	Intocable	Intocable	
202	20 Aniversario	Mariachi Divas De Cindy Shea	Mariachi Divas De Cindy Shea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mariachi%2BDivas%2BDe%2BCindy%2BShea/Mariachi%2520Divas%2520de%2520Cindy%2520Shea_1_1_1581557400.jpg?itok=wsySZtbw
203	Opus	Marc Anthony	Marc Anthony	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BAnthony/Marc%2520Anthony_1_1_1597235686.jpg?itok=R1zcxTbN
204	A Journey Through Cuban Music	Aymée Nuviola	Aymée Nuviola	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aymee%2BNuviola/Aymee%2520Nuviola_1_1_1597169079.jpg?itok=tnCGTcZa
205	Tiempo Al Tiempo	Luis Enrique + C4 Trio	Luis Enrique + C4 Trio	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BEnrique/Luis%2520Enrique_1_1_1581552336.jpg?itok=NYAg6KyW
206	Candela	Vicente García	Vicente García	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vicente%2BGarc%25C3%25ADa/Vicente%2520Garc%25C3%25ADa_1_1_1581555859.jpg?itok=QcfcfoAA
207	Literal	Juan Luis Guerra 4.40	Juan Luis Guerra 4.40	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juan%2BLuis%2BGuerra/Juan%2520Luis%2520Guerra_1_1_1581552062.jpg?itok=nyuSb_-7
208	Saint Honesty	Sara Bareilles	Sara Bareilles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sara%2BBareilles/Sara%2520Bareilles_1_1_1578385435.jpg?itok=OyYJ8F2S
209	Father Mountain	Calexico And Iron & Wine	Calexico And Iron & Wine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Calexico/Calexico_1_1_1595540416.jpg?itok=wcv3bmNM
210	I'm On My Way	Rhiannon Giddens with Francesco Turrisi	Rhiannon Giddens with Francesco Turrisi	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rhiannon%2BGiddens/Rhiannon%2520Giddens_1_1_1578387359.jpg?itok=YwSDYhAA
211	Call My Name	I'm With Her	I'm With Her	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/I%2527m%2BWith%2BHer/I%2527m%2520With%2520Her_1_1_1581553266.jpg?itok=yHxs9HH3
212	Faraway Look	Yola	Yola	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yola%2BCarter/Yola%2520Carter_1_1_1599076400.jpg?itok=t0_UlGfc
213	Black Myself	Amythyst Kiah, songwriter (Our Native Daughters)	Amythyst Kiah, songwriter (Our Native Daughters)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amythyst%2BKiah/Amythyst%2520Kiah_1_1_1588264798.jpg?itok=ox4LVp63
214	Crossing To Jerusalem	Rosanne Cash & John Leventhal, songwriters (Rosanne Cash)	Rosanne Cash & John Leventhal, songwriters (Rosanne Cash)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rosanne%2BCash/Rosanne%2520Cash_1_1_1588845547.jpg?itok=mmORB3u0
215	I Don't Wanna Ride The Rails No More	Vince Gill, songwriter (Vince Gill)	Vince Gill, songwriter (Vince Gill)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
216	Oklahoma	Keb' Mo'	Keb' Mo'	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keb%2527Mo%2527/Keb%2520Mo_1_1_1581609755.jpg?itok=E1mi2WjB
217	Years To Burn	Calexico And Iron & Wine	Calexico And Iron & Wine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Calexico/Calexico_1_1_1595540416.jpg?itok=wcv3bmNM
218	Who Are You Now	Madison Cunningham	Madison Cunningham	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madison%2BCunningham/Madison%2520Cunningham_1_1_1581553356.jpg?itok=REjXu4_Q
219	Tales Of America	J.S. Ondara	J.S. Ondara	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/J.S.%2BOndara/J.S.%2520Ondara_1_1_1581553444.jpg?itok=xYo-sRZf
220	Walk Through Fire	Yola	Yola	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yola%2BCarter/Yola%2520Carter_1_1_1599076400.jpg?itok=t0_UlGfc
221	Tall Fiddler	Michael Cleveland	Michael Cleveland	
222	Live In Prague, Czech Republic	Doyle Lawson & Quicksilver	Doyle Lawson & Quicksilver	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doyle%2BLawson/Doyle%2520Lawson_1_1_1597163472.jpg?itok=LRSV79Cn
223	Toil, Tears & Trouble	The Po’ Ramblin’ Boys	The Po’ Ramblin’ Boys	
224	Royal Traveller	Missy Raines	Missy Raines	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Missy%2BRaines/Missy%2520Raines_1_1_1581557360.jpg?itok=tWxjriqh
225	If You Can't Stand The Heat	Frank Solivan & Dirty Kitchen	Frank Solivan & Dirty Kitchen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSolivan/Frank%2520Solivan_1_1_1581557269.jpg?itok=jtK1MlbD
226	Tall, Dark, & Handsome	Delbert McClinton & Self-Made Men + Dana	Delbert McClinton & Self-Made Men + Dana	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Delbert%2BMcClinton/Delbert%2520McClinton_1_1_1581554726.jpg?itok=j-MdZE80
227	Kingfish	Christone "Kingfish" Ingram	Christone "Kingfish" Ingram	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christone%2B%2522Kingfish%2522%2BIngram/Christone%2520%2522Kingfish%2522%2520Ingram_1_1_1596098068.jpg?itok=Wt3Gzx_q
228	Sitting On Top Of The Blues	Bobby Rush	Bobby Rush	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BRush/Bobby%2520Rush_1_1_1581552280.jpg?itok=l0SI7wOy
229	Baby, Please Come Home	Jimmie Vaughan	Jimmie Vaughan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmie%2BVaughan/Jimmie%2520Vaughan_1_1_1582716890.jpg?itok=f6u7w4e2
230	Spectacular Class	Jontavious Willis	Jontavious Willis	
231	Venom & Faith	Larkin Poe	Larkin Poe	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larkin%2BPoe/Larkin%2520Poe_1_1_1581551965.jpg?itok=uoYdAWHP
232	Brighter Days	Robert Randolph & The Family Band	Robert Randolph & The Family Band	
233	Somebody Save Me	Sugaray Rayford	Sugaray Rayford	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sugaray%2BRayford/Sugaray%2520Rayford_1_1_1595842415.jpg?itok=xqoJUlRQ
234	Keep On	Southern Avenue	Southern Avenue	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Southern%2BAvenue/Southern%2520Avenue_1_1_1594669744.jpg?itok=cvP3a3t_
235	Patty Griffin	Patty Griffin	Patty Griffin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patty%2BGriffin/Patty%2520Griffin_1_1_1595299978.jpg?itok=eleI1Jhv
236	My Finest Work Yet	Andrew Bird	Andrew Bird	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BBird/Andrew%2520Bird_1_1_1594899222.jpg?itok=mSn-zeY_
237	Rearrange My Heart	Che Apalache	Che Apalache	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Che%2BApalache/Che%2520Apalache_1_1_1581554965.jpg?itok=eR6Idz_U
238	Evening Machines	Gregory Alan Isakov	Gregory Alan Isakov	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gregory%2BAlan%2BIsakov/Gregory%2520Alan%2520Isakov_1_1_1594758590.jpg?itok=R4ONBj9Z
239	Front Porch	Joy Williams	Joy Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joy%2BWilliams/Joy%2520Williams_1_1_1578387225.jpg?itok=4iT0juOM
240	Good Time	Ranky Tanky	Ranky Tanky	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ranky%2BTanky/Ranky%2520Tanky_1_1_1581553432.jpg?itok=LXyWGN6D
241	Kalawai’anui	Amy Hānaiali’i	Amy Hānaiali’i	
242	When It's Cold - Cree Round Dance Songs	Northern Cree	Northern Cree	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Northern%2BCree/Northern%2520Cree_1_1_1581554381.jpg?itok=MG71wmDa
243	Recorded Live At The 2019 New Orleans Jazz & Heritage Festival	Rebirth Brass Band	Rebirth Brass Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rebirth%2BBrass%2BBand/Rebirth%2520Brass%2520Band_1_1_1581553390.jpg?itok=3icExOc0
244	Hawaiian Lullaby	(Various Artists)	Imua Garza & Kimié Miner, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Imua%2BGarza/Imua%2520Garza_1_1_1597164429.jpg?itok=RuWP5q9w
245	Rapture	Koffee	Koffee	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Koffee/Koffee_1_1_1596098057.jpg?itok=euLfvs-J
246	As I Am	Julian Marley	Julian Marley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BMarley/Julian%2520Marley_1_1_1578387230.jpg?itok=A4szeZ0f
247	The Final Battle: Sly & Robbie vs. Roots Radics	Sly & Robbie & Roots Radics	Sly & Robbie & Roots Radics	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roots%2BRadics/Roots%2520Radics_1_1_1596097981.jpg?itok=Di7Q1gpE
248	Mass Manipulation	Steel Pulse	Steel Pulse	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steel%2BPulse/Steel%2520Pulse_1_1_1580335395.jpg?itok=Hn60-Yp1
249	More Work To Be Done	Third World	Third World	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Third%2BWorld/THIRD%2520WORLD_1_1_1597292974.jpg?itok=UPZPYzQw
250	Celia	Angelique Kidjo	Angelique Kidjo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ang%25C3%25A9lique%2BKidjo/Ang%25C3%25A9lique%2520Kidjo_1_1_1598366948.jpg?itok=wGfBf5NX
251	Gece	Altin Gün	Altin Gün	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Altin%2BG%25C3%25BCn/Altin%2520G%25C3%25BCn_1_1_1599076905.jpg?itok=3usi01WW
252	What Heat	Bokanté & Metropole Orkest Conducted By Jules Buckley	Bokanté & Metropole Orkest Conducted By Jules Buckley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bokant%25C3%25A9/Bokant%25C3%25A9_1_1_1581553368.jpg?itok=hIorqUgY
253	African Giant	Burna Boy	Burna Boy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burna%2BBoy/Burna%2520Boy_1_1_1581554778.jpg?itok=ZU6D_y1p
254	Fanm D'ayiti	Nathalie Joachim With Spektral Quartet	Nathalie Joachim With Spektral Quartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Spektral%2BQuartet/Spektral%2520Quartet_1_1_1595926525.jpg?itok=KKOOAsxs
255	Ageless: Songs for the Child Archetype	Jon Samson	Jon Samson	
256	Flying High!	Caspar Babypants	Caspar Babypants	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Caspar%2BBabypants/Caspar%2520Babypants_1_1_1596098108.jpg?itok=t44X50O0
257	I Love Rainy Days	Daniel Tashian	Daniel Tashian	
258	The Love	Alphabet Rockers	Alphabet Rockers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alphabet%2BRockers/Alphabet%2520Rockers_1_1_1581555427_0.jpg?itok=lq-rqGMt
259	Winterland	The Okee Dokee Brothers	The Okee Dokee Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BOkee%2BDokee%2BBrothers/The%2520Okee%2520Dokee%2520Brothers_1_1_1581553572.jpg?itok=j15kGa7V
260	Becoming	Michelle Obama	Michelle Obama	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michelle%2BObama/Michelle%2520Obama_1_1_1581641424.jpg?itok=24prweXs
261	Beastie Boys Book	(Various Artists)	Michael Diamond, Adam Horovitz, Scott Sherratt & Dan Zitt, producers	
262	I.V. Catatonia: 20 Years As A Two-Time Cancer Survivor	Eric Alexandrakis	Eric Alexandrakis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BAlexandrakis/Eric%2520Alexandrakis_1_1_1581618397.jpg?itok=mk6VIUD8
263	Mr. Know-It-All	John Waters	John Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWaters/John%2520Waters_1_1_1581553387.jpg?itok=EdHLzs5i
264	Sekou Andrews & The String Theory	Sekou Andrews (& The String Theory)	Sekou Andrews (& The String Theory)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sekou%2BAndrews/Sekou%2520Andrews_1_1_1581624988.jpg?itok=RMSSDHxB
265	Sticks & Stones	Dave Chappelle	Dave Chappelle	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BChappelle/Dave%2520Chappelle_1_1_1581629380.jpg?itok=3HV8iP_8
266	Quality Time	Jim Gaffigan	Jim Gaffigan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BGaffigan/Jim%2520Gaffigan_1_1_1584115972.jpg?itok=SiQihblC
267	Relatable	Ellen DeGeneres	Ellen DeGeneres	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ellen%2BDeGeneres/Ellen%2520DeGeneres_1_1_1581556378.jpg?itok=ntYB9WTy
268	Right Now	Aziz Ansari	Aziz Ansari	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aziz%2BAnsari/Aziz%2520Ansari_1_1_1584523424.jpg?itok=aIbnVHPE
269	Son Of Patricia	Trevor Noah	Trevor Noah	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Trevor%2BNoah/Trevor%2520Noah_1_1_1581554914.jpg?itok=6gp5PVfw
270	Hadestown	Reeve Carney, André De Shields, Amber Gray, Eva Noblezada & Patrick Page, principal soloists; Mara Isaacs, David Lai, Anaïs Mitchell & Todd Sickafoose, producers (Anaïs Mitchell, composer & lyricist) (Original Broadway Cast)	Reeve Carney, André De Shields, Amber Gray, Eva Noblezada & Patrick Page, principal soloists; Mara Isaacs, David Lai, Anaïs Mitchell & Todd Sickafoose, producers (Anaïs Mitchell, composer & lyricist) (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Reeve%2BCarney/Reeve%2520Carney_1_1_1581553462.jpg?itok=R0Jie_JL
271	Ain't Too Proud: The Life And Times Of The Temptations	Saint Aubyn, Derrick Baskin, James Harkness, Jawan M. Jackson, Jeremy Pope & Ephraim Sykes, principal soloists; Scott M. Riesett, producer (Original Broadway Cast)	Saint Aubyn, Derrick Baskin, James Harkness, Jawan M. Jackson, Jeremy Pope & Ephraim Sykes, principal soloists; Scott M. Riesett, producer (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeremy%2BPope/Jeremy%2520Pope_1_1_1581561596.jpg?itok=-KLBmIKA
272	Moulin Rouge! The Musical	Danny Burstein, Tam Mutu, Sahr Ngaujah, Karen Olivo & Aaron Tveit, principal soloists; Justin Levine, Baz Luhrmann, Matt Stine & Alex Timbers, producers (Original Broadway Cast)	Danny Burstein, Tam Mutu, Sahr Ngaujah, Karen Olivo & Aaron Tveit, principal soloists; Justin Levine, Baz Luhrmann, Matt Stine & Alex Timbers, producers (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tam%2BMutu/Tam%2520Mutu_1_1_1581632409.jpg?itok=j79DJ82m
273	The Music Of Harry Potter And The Cursed Child - In Four Contemporary Suites	Imogen Heap, producer; Imogen Heap, composer (Imogen Heap)	Imogen Heap, producer; Imogen Heap, composer (Imogen Heap)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Imogen%2BHeap/Imogen%2520Heap_1_1_1578385125.jpg?itok=Ec7F2w7F
274	Oklahoma!	Damon Daunno, Rebecca Naomi Jones, Ali Stroker, Mary Testa & Patrick Vaill, principal soloists; Daniel Kluger & Dean Sharenow, producers (Richard Rodgers, composer; Oscar Hammerstein II, lyricist) (2019 Broadway Cast)	Damon Daunno, Rebecca Naomi Jones, Ali Stroker, Mary Testa & Patrick Vaill, principal soloists; Daniel Kluger & Dean Sharenow, producers (Richard Rodgers, composer; Oscar Hammerstein II, lyricist) (2019 Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rebecca%2BNaomi%2BJones/Rebecca%2520Naomi%2520Jones_1_1_1597180894.jpg?itok=UnCsGl8f
275	A Star Is Born	Lady Gaga & Bradley Cooper	Paul “DJWS” Blair, Bradley Cooper, Lady Gaga, Nick Monson, Lukas Nelson, Mark Nilan Jr. & Benjamin Rice, compilation producers; Julianne Jordan & Julia Michels, music supervisors	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
276	The Lion King: The Songs	(Various Artists)	Jon Favreau & Hans Zimmer, compilation producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jon%2BFavreau/Jon%2520Favreau_1_1_1592404830.jpg?itok=DxQPcixu
277	Quentin Tarantino's Once Upon A Time In Hollywood	(Various Artists)	Quentin Tarantino, compilation producer; Mary Ramos, music supervisor	
278	Rocketman	Taron Egerton	Giles Martin, compilation producer	
279	Spider-Man: Into The Spider-Verse	(Various Artists)	Spring Aspers & Dana Sano, compilation producers; Kier Lehman, music supervisor	
280	Chernobyl	Hildur Guðnadóttir, composer	Hildur Guðnadóttir, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hildur%2BGu%25C3%25B0nad%25C3%25B3ttir/Gud_1_1_1581558898.jpg?itok=JBaxxjoj
281	Avengers: Endgame	Alan Silvestri, composer	Alan Silvestri, composer	
282	Game Of Thrones: Season 8	Ramin Djawadi, composer	Ramin Djawadi, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramin%2BDjawadi/Ramin%2520Djawadi_1_1_1581554914.jpg?itok=w3bpe7mZ
283	The Lion King	Hans Zimmer, composer	Hans Zimmer, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hans%2BZimmer/Hans%2520Zimmer_1_1_1597141743.jpg?itok=ixrZrEuX
284	Mary Poppins Returns	Marc Shaiman, composer	Marc Shaiman, composer	
285	I'll Never Love Again (Film Version)	Natalie Hemby, Lady Gaga, Hillary Lindsey & Aaron Raitiere, songwriters (Lady Gaga & Bradley Cooper)	Natalie Hemby, Lady Gaga, Hillary Lindsey & Aaron Raitiere, songwriters (Lady Gaga & Bradley Cooper)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BHemby/Natalie%2520Hemby_1_1_1591113039.jpg?itok=AKF_O3V1
286	The Ballad Of The Lonesome Cowboy	Randy Newman, songwriter (Chris Stapleton)	Randy Newman, songwriter (Chris Stapleton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
287	Girl In The Movies	Dolly Parton & Linda Perry, songwriters (Dolly Parton)	Dolly Parton & Linda Perry, songwriters (Dolly Parton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dolly%2BParton/Dolly%2520Parton_1_1_1581552316.jpg?itok=1Iad2upT
288	Suspirium	Thom Yorke, songwriter (Thom Yorke)	Thom Yorke, songwriter (Thom Yorke)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/thom_yorke.png?itok=YO27DEeb
289	Star Wars: Galaxy's Edge Symphonic Suite	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
290	Begin Again	Fred Hersch, composer (Fred Hersch & The WDR Big Band Conducted By Vince Mendoza)	Fred Hersch, composer (Fred Hersch & The WDR Big Band Conducted By Vince Mendoza)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fred%2BHersch/Fred%2520Hersch_1_1_1581555757.jpg?itok=GpgRxgqT
291	Crucible For Crisis	Brian Lynch, composer (Brian Lynch Big Band)	Brian Lynch, composer (Brian Lynch Big Band)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BLynch/Brian%2520Lynch_1_1_1581624871.jpg?itok=mSQPKfUl
292	Love, A Beautiful Force	Vince Mendoza, composer (Vince Mendoza, Terell Stafford, Dick Oatts & Temple University Studio Orchestra)	Vince Mendoza, composer (Vince Mendoza, Terell Stafford, Dick Oatts & Temple University Studio Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vincent%2BMendoza/Vince%2520Mendoza_1_1_1581562428.jpg?itok=3xtFsTEn
293	Walkin' Funny	Christian McBride, composer (Christian McBride)	Christian McBride, composer (Christian McBride)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christian%2BMcBride/Christian%2520McBride_1_1_1578387063.jpg?itok=3giAcQ-M
294	Moon River	Jacob Collier, arranger (Jacob Collier)	Jacob Collier, arranger (Jacob Collier)	
295	Blue Skies	Kris Bowers, arranger (Kris Bowers)	Kris Bowers, arranger (Kris Bowers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kris%2BBowers/Kris%2520Bowers_1_1_1581555446.jpg?itok=g1TxuHhO
296	Hedwig's Theme	John Williams, arranger (Anne-Sophie Mutter & John Williams)	John Williams, arranger (Anne-Sophie Mutter & John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
297	La Novena	Emilio Solla, arranger (Emilio Solla Tango Jazz Orchestra)	Emilio Solla, arranger (Emilio Solla Tango Jazz Orchestra)	
298	All Night Long	Jacob Collier, arranger (Jacob Collier Featuring Jules Buckley, Take 6 & Metropole Orkest)	Jacob Collier, arranger (Jacob Collier Featuring Jules Buckley, Take 6 & Metropole Orkest)	
299	Jolene	Geoff Keezer, arranger (Sara Gazarek)	Geoff Keezer, arranger (Sara Gazarek)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Geoffrey%2BKeezer/Geoffrey%2520Keezer_1_1_1581555753.jpg?itok=Pdz1UUd0
300	Marry Me A Little	Cyrille Aimée & Diego Figueiredo, arrangers (Cyrille Aimée)	Cyrille Aimée & Diego Figueiredo, arrangers (Cyrille Aimée)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cyrille%2BAim%25C3%25A9e/Cyrille%2520Aim%25C3%25A9e_1_1_1575355715.jpg?itok=EozCMtO_
301	Over The Rainbow	Vince Mendoza, arranger (Trisha Yearwood)	Vince Mendoza, arranger (Trisha Yearwood)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vincent%2BMendoza/Vince%2520Mendoza_1_1_1581562428.jpg?itok=3xtFsTEn
302	12 Little Spells (Thoracic Spine)	Esperanza Spalding, arranger (Esperanza Spalding)	Esperanza Spalding, arranger (Esperanza Spalding)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Esperanza%2BSpalding/Esperanza%2520Spalding_1_1_1581552254.jpg?itok=5wdQbxbw
303	Chris Cornell	Barry Ament, Jeff Ament & Joe Spix, art directors (Chris Cornell)	Barry Ament, Jeff Ament & Joe Spix, art directors (Chris Cornell)	
304	Anónimas & Resilientes	Luisa María Arango, Carlos Dussan, Manuel García-Orozco & Juliana Jaramillo-Buenaventura, art directors (Voces Del Bullerengue)	Luisa María Arango, Carlos Dussan, Manuel García-Orozco & Juliana Jaramillo-Buenaventura, art directors (Voces Del Bullerengue)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manuel%2BGarc%25C3%25ADa-Orozco/Manuel%2520Garc%25C3%25ADa-Orozco_1_1_1596098081.jpg?itok=HKHgzC2j
305	Hold That Tiger	Andrew Wong & Fongming Yang, art directors (The Muddy Basin Ramblers)	Andrew Wong & Fongming Yang, art directors (The Muddy Basin Ramblers)	
306	Intellexual	Irwan Awalludin, art director (Intellexual)	Irwan Awalludin, art director (Intellexual)	
307	Woodstock: Back To The Garden - The Definitive 50th Anniversary Archive	Masaki Koike, art director (Various Artists)	Masaki Koike, art director (Various Artists)	
308	Gold In A Brass Age	Amanda Chiu, Mark Farrow & David Gray, art directors (David Gray)	Amanda Chiu, Mark Farrow & David Gray, art directors (David Gray)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amanda%2BChiu/Amanda%2520Chiu_1_1_1581627332.jpg?itok=8J5m0bTk
309	1963: New Directions	Josh Cheuse, art director (John Coltrane)	Josh Cheuse, art director (John Coltrane)	
310	The Radio Recordings 1939–1945	Marek Polewski, art director (Wilhelm Furtwängler & Berliner Philharmoniker)	Marek Polewski, art director (Wilhelm Furtwängler & Berliner Philharmoniker)	
311	Stax '68: A Memphis Story	Steve Greenberg, album notes writer (Various Artists)	Steve Greenberg, album notes writer (Various Artists)	
312	The Complete Cuban Jam Sessions	Judy Cantor-Navas, album notes writer (Various Artists)	Judy Cantor-Navas, album notes writer (Various Artists)	
313	The Gospel According To Malaco	Robert Marovich, album notes writer (Various Artists)	Robert Marovich, album notes writer (Various Artists)	
314	Pedal Steal + Four Corners	Brendan Greaves, album notes writer (Terry Allen And The Panhandle Mystery Band)	Brendan Greaves, album notes writer (Terry Allen And The Panhandle Mystery Band)	
315	Pete Seeger: The Smithsonian Folkways Collection	Jeff Place, album notes writer (Pete Seeger)	Jeff Place, album notes writer (Pete Seeger)	
316	The Girl From Chickasaw County - The Complete Capitol Masters	Andrew Batt & Kris Maher, compilation producers; Simon Gibson, mastering engineer (Bobbie Gentry)	Andrew Batt & Kris Maher, compilation producers; Simon Gibson, mastering engineer (Bobbie Gentry)	
317	The Great Comeback: Horowitz At Carnegie Hall	Robert Russ, compilation producer; Andreas K. Meyer & Jennifer Nulsen, mastering engineers (Vladimir Horowitz)	Robert Russ, compilation producer; Andreas K. Meyer & Jennifer Nulsen, mastering engineers (Vladimir Horowitz)	
318	Kankyo Ongaku: Japanese Ambient, Environmental & New Age Music 1980-1990	Spencer Doran, Yosuke Kitazawa, Douglas Mcgowan & Matt Sullivan, compilation producers; John Baldwin, mastering engineer (Various Artists)	Spencer Doran, Yosuke Kitazawa, Douglas Mcgowan & Matt Sullivan, compilation producers; John Baldwin, mastering engineer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BBaldwin/John%2520Baldwin_1_1_1581558774.jpg?itok=NyIyg-t8
319	All These Things	Tchad Blake, Thomas Dybdahl, Adam Greenspan & Roderick Shearer, engineers; Bernie Grundman, mastering engineer (Thomas Dybdahl)	Tchad Blake, Thomas Dybdahl, Adam Greenspan & Roderick Shearer, engineers; Bernie Grundman, mastering engineer (Thomas Dybdahl)	
320	Run Home Slow	Paul Butler & Sam Teskey, engineers; Joe Carra, mastering engineer (The Teskey Brothers)	Paul Butler & Sam Teskey, engineers; Joe Carra, mastering engineer (The Teskey Brothers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BButler/Paul%2520Butler_1_1_1581619171.jpg?itok=Hrph1Y2R
321	Scenery	Tom Elmhirst, Ben Kane & Jeremy Most, engineers; Bob Ludwig, mastering engineer (Emily King)	Tom Elmhirst, Ben Kane & Jeremy Most, engineers; Bob Ludwig, mastering engineer (Emily King)	
322	Finneas	• When We Fall Asleep, Where Do We Go? (Billie Eilish) (A)	• When We Fall Asleep, Where Do We Go? (Billie Eilish) (A)	
323	Jack Antonoff	• Arizona Baby (Kevin Abstract) (A)  • Lover (Taylor Swift) (A)  • Norman F***ing Rockwell! (Lana Del Rey) (A)  • Red Hearse (Red Hearse) (A)	• Arizona Baby (Kevin Abstract) (A)  • Lover (Taylor Swift) (A)  • Norman F***ing Rockwell! (Lana Del Rey) (A)  • Red Hearse (Red Hearse) (A)	
324	Dan Auerbach	• The Angels In Heaven Done Signed My Name (Leo Bud Welch) (A)  • "Let's Rock" (The Black Keys) (A)  • Mockingbird (The Gibson Brothers) (A)  • Myth Of A Man (Night Beats) (A)  • Southern Gentleman (Dee White) (A)  • Walk Through Fire (Yola) (A)	• The Angels In Heaven Done Signed My Name (Leo Bud Welch) (A)  • "Let's Rock" (The Black Keys) (A)  • Mockingbird (The Gibson Brothers) (A)  • Myth Of A Man (Night Beats) (A)  • Southern Gentleman (Dee White) (A)  • Walk Through Fire (Yola) (A)	
356	Duruflé: Complete Choral Works	Robert Simpson, conductor (Ken Cowan; Houston Chamber Choir)	Robert Simpson, conductor (Ken Cowan; Houston Chamber Choir)	
357	Boyle: Voyages	Donald Nally, conductor (The Crossing)	Donald Nally, conductor (The Crossing)	
358	The Hope Of Loving	Craig Hella Johnson, conductor (Conspirare)	Craig Hella Johnson, conductor (Conspirare)	
849	Love On Top	Beyoncé	Beyoncé	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
325	John Hill	• Heat Of The Summer (Young The Giant) (T)  • Hundred (Khalid) (T)  • No Drug Like Me (Carly Rae Jepsen) (T)  • Outta My Head (Khalid With John Mayer) (T)  • Social Cues (Cage The Elephant) (A)  • Superposition (Young The Giant) (T)  • Too Much (Carly Rae Jepsen) (T)  • Vertigo (Khalid) (T)  • Zero (From "Ralph Breaks The Internet") (Imagine Dragons) (T)	• Heat Of The Summer (Young The Giant) (T)  • Hundred (Khalid) (T)  • No Drug Like Me (Carly Rae Jepsen) (T)  • Outta My Head (Khalid With John Mayer) (T)  • Social Cues (Cage The Elephant) (A)  • Superposition (Young The Giant) (T)  • Too Much (Carly Rae Jepsen) (T)  • Vertigo (Khalid) (T)  • Zero (From "Ralph Breaks The Internet") (Imagine Dragons) (T)	
326	Ricky Reed	• Almost Free (Fidlar) (A)  • Burning (Maggie Rogers) (T)  • Confidence (X Ambassadors Featuring K.Flay) (T)  • Juice (Lizzo) (T)  • Kingdom Of One (Maren Morris) (T)  • Power Is Power (SZA Featuring The Weeknd & Travis Scott) (T)  • Tempo (Lizzo Featuring Missy Elliott) (T)  • Truth Hurts (Lizzo) (T)  • The Wrong Man (Ross Golan) (A)	• Almost Free (Fidlar) (A)  • Burning (Maggie Rogers) (T)  • Confidence (X Ambassadors Featuring K.Flay) (T)  • Juice (Lizzo) (T)  • Kingdom Of One (Maren Morris) (T)  • Power Is Power (SZA Featuring The Weeknd & Travis Scott) (T)  • Tempo (Lizzo Featuring Missy Elliott) (T)  • Truth Hurts (Lizzo) (T)  • The Wrong Man (Ross Golan) (A)	
327	I Rise (Tracy Young's Pride Intro Radio Remix)	Tracy Young, remixer (Madonna)	Tracy Young, remixer (Madonna)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tracy%2BYoung/Tracy%2520Young_1_1_1581552189.jpg?itok=xLTitZ7X
328	Mother's Daughter (Wuki Remix)	Wuki, remixer (Miley Cyrus)	Wuki, remixer (Miley Cyrus)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wuki/Wuki_1_1_1581552657.jpg?itok=CSZyknvP
329	The One (High Contrast Remix)	Lincoln Barrett, remixer (Jorja Smith)	Lincoln Barrett, remixer (Jorja Smith)	
330	Swim (ford. Remix)	Luc Bradford, remixer (Mild Minds)	Luc Bradford, remixer (Mild Minds)	
331	Work It (Soulwax Remix)	David Gerard C Dewaele & Stephen Antoine C Dewaele, remixers (Marie Davidson)	David Gerard C Dewaele & Stephen Antoine C Dewaele, remixers (Marie Davidson)	
332	LUX	Morten Lindberg, immersive audio engineer; Morten Lindberg, immersive audio mastering engineer; Morten Lindberg, immersive audio producer (Anita Brevik, Trondheimsolistene & Nidarosdomens Jentekor)	Morten Lindberg, immersive audio engineer; Morten Lindberg, immersive audio mastering engineer; Morten Lindberg, immersive audio producer (Anita Brevik, Trondheimsolistene & Nidarosdomens Jentekor)	
333	Chain Tripping	Luke Argilla, immersive audio engineer; Jurgen Scharpf, immersive audio mastering engineer; Jona Bechtolt, Claire L. Evans & Rob Kieswetter, immersive audio producers (YACHT)	Luke Argilla, immersive audio engineer; Jurgen Scharpf, immersive audio mastering engineer; Jona Bechtolt, Claire L. Evans & Rob Kieswetter, immersive audio producers (YACHT)	
334	Kverndokk: Symphonic Dances	Jim Anderson, immersive audio engineer; Robert C. Ludwig, immersive audio mastering engineer; Ulrike Schwarz, immersive audio producer (Ken-David Masur & Stavanger Symphony Orchestra)	Jim Anderson, immersive audio engineer; Robert C. Ludwig, immersive audio mastering engineer; Ulrike Schwarz, immersive audio producer (Ken-David Masur & Stavanger Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BAnderson/Jim%2520Anderson_1_1_1581638867.jpg?itok=owpF-7EP
335	The Orchestral Organ	Keith O. Johnson, immersive audio engineer; Keith O. Johnson, immersive audio mastering engineer; Marina A. Ledin & Victor Ledin, immersive audio producers (Jan Kraybill)	Keith O. Johnson, immersive audio engineer; Keith O. Johnson, immersive audio mastering engineer; Marina A. Ledin & Victor Ledin, immersive audio producers (Jan Kraybill)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/keithojohnson.jpg?itok=FnHhykTp
336	The Savior	Bob Clearmountain, immersive audio engineer; Bob Ludwig, immersive audio mastering engineer; Michael Marquart & Dave Way, immersive audio producers (A Bad Think)	Bob Clearmountain, immersive audio engineer; Bob Ludwig, immersive audio mastering engineer; Michael Marquart & Dave Way, immersive audio producers (A Bad Think)	
337	Riley: Sun Rings	Leslie Ann Jones, engineer; John Kilgore, Judith Sherman & David Harrington, engineers/mixers; Robert C. Ludwig, mastering engineer (Kronos Quartet)	Leslie Ann Jones, engineer; John Kilgore, Judith Sherman & David Harrington, engineers/mixers; Robert C. Ludwig, mastering engineer (Kronos Quartet)	
338	Aequa - Anna Thorvaldsdóttir	Daniel Shores, engineer; Daniel Shores, mastering engineer (International Contemporary Ensemble)	Daniel Shores, engineer; Daniel Shores, mastering engineer (International Contemporary Ensemble)	
339	Bruckner: Symphony No. 9	Mark Donahue, engineer; Mark Donahue, mastering engineer (Manfred Honeck & Pittsburgh Symphony Orchestra)	Mark Donahue, engineer; Mark Donahue, mastering engineer (Manfred Honeck & Pittsburgh Symphony Orchestra)	
340	Rachmaninoff - Hermitage Piano Trio	Keith O. Johnson & Sean Royce Martin, engineers; Keith O. Johnson, mastering engineer (Hermitage Piano Trio)	Keith O. Johnson & Sean Royce Martin, engineers; Keith O. Johnson, mastering engineer (Hermitage Piano Trio)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/keithojohnson.jpg?itok=FnHhykTp
341	Wolfe: Fire In My Mouth	Bob Hanlon & Lawrence Rock, engineers; Ian Good & Lawrence Rock, mastering engineers (Jaap Van Zweden, Francisco J. Núñez, Donald Nally, The Crossing, Young People's Chorus Of NY City & New York Philharmonic)	Bob Hanlon & Lawrence Rock, engineers; Ian Good & Lawrence Rock, mastering engineers (Jaap Van Zweden, Francisco J. Núñez, Donald Nally, The Crossing, Young People's Chorus Of NY City & New York Philharmonic)	
359	Sander: The Divine Liturgy Of St. John Chrysostom	Peter Jermihov, conductor (Evan Bravos, Vadim Gan, Kevin Keys, Glenn Miller & Daniel Shirley; PaTRAM Institute Singers)	Peter Jermihov, conductor (Evan Bravos, Vadim Gan, Kevin Keys, Glenn Miller & Daniel Shirley; PaTRAM Institute Singers)	
360	Smith, K.: The Arc In The Sky	Donald Nally, conductor (The Crossing)	Donald Nally, conductor (The Crossing)	
361	Shaw: Orange	Attacca Quartet	Attacca Quartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Attacca%2BQuartet/Attacca%2520Quartet_1_1_1581554644.jpg?itok=MQOZxggV
362	Cerrone: The Pieces That Fall To Earth	Christopher Rountree & Wild Up	Christopher Rountree & Wild Up	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wild%2BUp/Wild%2520Up_1_1_1596097978.jpg?itok=-pugHdRn
363	Freedom & Faith	PUBLIQuartet	PUBLIQuartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/PUBLIQuartet/PUBLIQuartet_1_1_1581554770.jpg?itok=PH9qPIGJ
364	Perpetulum	Third Coast Percussion	Third Coast Percussion	
1620	Polkas, Gritos y Acordeónes	David Lee Garza, Joel Guzman & Sunny Sauceda	Joel Guzman & Gilbert Velasquez, producers	
342	Blanton Alspaugh	• Artifacts - The Music Of Michael McGlynn (Charles Bruffy & Kansas City Chorale)  • Berlioz: Symphonie Fantastique; Fantaisie Sur La Tempête De Shakespeare (Andrew Davis & Toronto Symphony Orchestra)  • Copland: Billy The Kid; Grohg (Leonard Slatkin & Detroit Symphony Orchestra)  • Duruflé: Complete Choral Works (Robert Simpson & Houston Chamber Choir)  • Glass: Symphony No. 5 (Julian Wachner, The Choir Of Trinity Wall Street, Trinity Youth Chorus, Downtown Voices & Novus NY)  • Sander: The Divine Liturgy Of St. John Chrysostom (Peter Jermihov & PaTRAM Institute Singers)  • Smith, K.: Canticle (Craig Hella Johnson & Cincinnati Vocal Arts Ensemble)  • Visions Take Flight (Mei-Ann Chen & ROCO)	• Artifacts - The Music Of Michael McGlynn (Charles Bruffy & Kansas City Chorale)  • Berlioz: Symphonie Fantastique; Fantaisie Sur La Tempête De Shakespeare (Andrew Davis & Toronto Symphony Orchestra)  • Copland: Billy The Kid; Grohg (Leonard Slatkin & Detroit Symphony Orchestra)  • Duruflé: Complete Choral Works (Robert Simpson & Houston Chamber Choir)  • Glass: Symphony No. 5 (Julian Wachner, The Choir Of Trinity Wall Street, Trinity Youth Chorus, Downtown Voices & Novus NY)  • Sander: The Divine Liturgy Of St. John Chrysostom (Peter Jermihov & PaTRAM Institute Singers)  • Smith, K.: Canticle (Craig Hella Johnson & Cincinnati Vocal Arts Ensemble)  • Visions Take Flight (Mei-Ann Chen & ROCO)	
343	James Ginsburg	• Project W - Works By Diverse Women Composers (Mei-Ann Chen & Chicago Sinfonietta)  • Silenced Voices (Black Oak Ensemble)  • 20th Century Harpsichord Concertos (Jory Vinikour, Scott Speck & Chicago Philharmonic)  • Twentieth Century Oboe Sonatas (Alex Klein & Phillip Bush)  • Winged Creatures & Other Works For Flute, Clarinet, And Orchestra (Anthony McGill, Demarre McGill, Allen Tinkham & Chicago Youth Symphony Orchestra)	• Project W - Works By Diverse Women Composers (Mei-Ann Chen & Chicago Sinfonietta)  • Silenced Voices (Black Oak Ensemble)  • 20th Century Harpsichord Concertos (Jory Vinikour, Scott Speck & Chicago Philharmonic)  • Twentieth Century Oboe Sonatas (Alex Klein & Phillip Bush)  • Winged Creatures & Other Works For Flute, Clarinet, And Orchestra (Anthony McGill, Demarre McGill, Allen Tinkham & Chicago Youth Symphony Orchestra)	
344	Marina A. Ledin, Victor Ledin	• Bates: Children Of Adam; Vaughan Williams: Dona Nobis Pacem (Steven Smith, Erin R. Freeman, Richmond Symphony & Chorus)  • The Orchestral Organ (Jan Kraybill)  • The Poetry Of Places (Nadia Shpachenko)  • Rachmaninoff - Hermitage Piano Trio (Hermitage Piano Trio)	• Bates: Children Of Adam; Vaughan Williams: Dona Nobis Pacem (Steven Smith, Erin R. Freeman, Richmond Symphony & Chorus)  • The Orchestral Organ (Jan Kraybill)  • The Poetry Of Places (Nadia Shpachenko)  • Rachmaninoff - Hermitage Piano Trio (Hermitage Piano Trio)	
345	Morten Lindberg	• Himmelborgen (Elisabeth Holte, Kåre Nordstoga & Uranienborg Vokalensemble)  • Kleiberg: Do You Believe In Heather? (Various Artists)  • Ljos (Fauna Vokalkvintett)  • LUX (Anita Brevik, Trondheimsolistene & Nidarosdomens Jentekor)  • Trachea (Tone Bianca Sparre Dahl & Schola Cantorum)  • Veneliti (Håkon Daniel Nystedt & Oslo Kammerkor)	• Himmelborgen (Elisabeth Holte, Kåre Nordstoga & Uranienborg Vokalensemble)  • Kleiberg: Do You Believe In Heather? (Various Artists)  • Ljos (Fauna Vokalkvintett)  • LUX (Anita Brevik, Trondheimsolistene & Nidarosdomens Jentekor)  • Trachea (Tone Bianca Sparre Dahl & Schola Cantorum)  • Veneliti (Håkon Daniel Nystedt & Oslo Kammerkor)	
346	Dirk Sobotka	• Bruckner: Symphony No. 9 (Manfred Honeck & Pittsburgh Symphony Orchestra)	• Bruckner: Symphony No. 9 (Manfred Honeck & Pittsburgh Symphony Orchestra)	
347	Norman: Sustain	Gustavo Dudamel, conductor (Los Angeles Philharmonic)	Gustavo Dudamel, conductor (Los Angeles Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gustavo%2BDudamel/Gustavo%2520Dudamel_1_1_1581553571.jpg?itok=Frl2ikst
348	Copland: Billy The Kid; Grohg	Leonard Slatkin, conductor (Detroit Symphony Orchestra)	Leonard Slatkin, conductor (Detroit Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BSlatkin/Leonard%2520Slatkin_1_1_1581623003.jpg?itok=g58yYZbQ
349	Transatlantic	Louis Langrée, conductor (Cincinnati Symphony Orchestra)	Louis Langrée, conductor (Cincinnati Symphony Orchestra)	
350	Weinberg: Symphonies Nos. 2 & 21	Mirga Gražinytė-Tyla, conductor (City Of Birmingham Symphony Orchestra & Kremerata Baltica)	Mirga Gražinytė-Tyla, conductor (City Of Birmingham Symphony Orchestra & Kremerata Baltica)	
351	Picker: Fantastic Mr. Fox	Gil Rose, conductor; John Brancy, Andrew Craig Brown, Gabriel Preisser, Krista River & Edwin Vega; Gil Rose, producer (Boston Modern Orchestra Project; Boston Children's Chorus)	Gil Rose, conductor; John Brancy, Andrew Craig Brown, Gabriel Preisser, Krista River & Edwin Vega; Gil Rose, producer (Boston Modern Orchestra Project; Boston Children's Chorus)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gil%2BRose/Gil%2520Rose_1_1_1581629726.jpg?itok=WDyTbtmC
352	Benjamin: Lessons In Love & Violence	George Benjamin, conductor; Stéphane Degout, Barbara Hannigan, Peter Hoare & Gyula Orendt; Raphaël Mouterde & James Whitbourn, producers (Orchestra Of The Royal Opera House)	George Benjamin, conductor; Stéphane Degout, Barbara Hannigan, Peter Hoare & Gyula Orendt; Raphaël Mouterde & James Whitbourn, producers (Orchestra Of The Royal Opera House)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenjamin/George%2520Benjamin_1_1_1597165795.jpg?itok=lRL0vXK8
353	Berg: Wozzeck	Marc Albrecht, conductor; Christopher Maltman & Eva-Maria Westbroek; François Roussillon, producer (Netherlands Philharmonic Orchestra; Chorus Of Dutch National Opera)	Marc Albrecht, conductor; Christopher Maltman & Eva-Maria Westbroek; François Roussillon, producer (Netherlands Philharmonic Orchestra; Chorus Of Dutch National Opera)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BAlbrecht/Marc%2520Albrecht_1_1_1581625603.jpg?itok=9c1dzU2t
354	Charpentier: Les Arts Florissants; Les Plaisirs De Versailles	Paul O'Dette & Stephen Stubbs, conductors; Jesse Blumberg, Teresa Wakim & Virginia Warnken; Renate Wolter-Seevers, producer (Boston Early Music Festival Chamber Ensemble; Boston Early Music Festival Vocal Ensemble)	Paul O'Dette & Stephen Stubbs, conductors; Jesse Blumberg, Teresa Wakim & Virginia Warnken; Renate Wolter-Seevers, producer (Boston Early Music Festival Chamber Ensemble; Boston Early Music Festival Vocal Ensemble)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BO%2527Dette/Paul%2520O%2527Dette_1_1_1581562301.jpg?itok=j12DLyxO
355	Wagner: Lohengrin	Christian Thielemann, conductor; Piotr Beczała, Anja Harteros, Tomasz Konieczny, Waltraud Meier & Georg Zeppenfeld; Eckhard Glauche, producer (Festspielorchester Bayreuth; Festspielchor Bayreuth)	Christian Thielemann, conductor; Piotr Beczała, Anja Harteros, Tomasz Konieczny, Waltraud Meier & Georg Zeppenfeld; Eckhard Glauche, producer (Festspielorchester Bayreuth; Festspielchor Bayreuth)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christian%2BThielemann/Christian%2520Thielemann_1_1_1597166649.jpg?itok=xa11thC5
365	Marsalis: Violin Concerto; Fiddle Dance Suite	Nicola Benedetti; Cristian Măcelaru, conductor (Philadelphia Orchestra)	Nicola Benedetti; Cristian Măcelaru, conductor (Philadelphia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nicola%2BBenedetti/Nicola%2520Benedetti_1_1_1575355685.jpg?itok=yrKPuTWM
366	The Berlin Recital	Yuja Wang	Yuja Wang	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yuja%2BWang/Yuja%2520Wang_1_1_1581554132.jpg?itok=Lf6vqVz_
367	Higdon: Harp Concerto	Yolanda Kondonassis; Ward Stare, conductor (The Rochester Philharmonic Orchestra)	Yolanda Kondonassis; Ward Stare, conductor (The Rochester Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yolanda%2BKondonassis/Yolanda%2520Kondonassis_1_1_1581628954.jpg?itok=ZBBKcKj2
368	Torke: Sky, Concerto For Violin	Tessa Lark; David Alan Miller, conductor (Albany Symphony)	Tessa Lark; David Alan Miller, conductor (Albany Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tessa%2BLark/Tessa%2520Lark_1_1_1581622236.jpg?itok=vBhLpWET
369	Songplay	Joyce DiDonato; Chuck Israels, Jimmy Madison, Charlie Porter & Craig Terry, accompanists (Steve Barnett & Lautaro Greco)	Joyce DiDonato; Chuck Israels, Jimmy Madison, Charlie Porter & Craig Terry, accompanists (Steve Barnett & Lautaro Greco)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joyce%2BDiDonato/Joyce%2520DiDonato_1_1_1581621554.jpg?itok=d96fn4ix
370	The Edge Of Silence - Works For Voice By György Kurtág	Susan Narucki (Donald Berman, Curtis Macomber, Kathryn Schulmeister & Nicholas Tolle)	Susan Narucki (Donald Berman, Curtis Macomber, Kathryn Schulmeister & Nicholas Tolle)	
371	Himmelsmusik	Philippe Jaroussky & Céline Scheen; Christina Pluhar, conductor; L’Arpeggiata, ensemble (Jesús Rodil & Dingle Yandell)	Philippe Jaroussky & Céline Scheen; Christina Pluhar, conductor; L’Arpeggiata, ensemble (Jesús Rodil & Dingle Yandell)	
372	Schumann: Liederkreis Op. 24, Kerner-Lieder Op. 35	Matthias Goerne; Leif Ove Andsnes, accompanist	Matthias Goerne; Leif Ove Andsnes, accompanist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Matthias%2BGoerne/Matthias%2520Goerne_1_1_1581554392.jpg?itok=sZZoCtyS
373	A Te, O Cara	Stephen Costello; Constantine Orbelian, conductor (Kaunas City Symphony Orchestra)	Stephen Costello; Constantine Orbelian, conductor (Kaunas City Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BCostello/Stephen%2520Costello_1_1_1581559064.jpg?itok=Vd7-zMjB
374	The Poetry Of Places	Nadia Shpachenko; Marina A. Ledin & Victor Ledin, producers	Nadia Shpachenko; Marina A. Ledin & Victor Ledin, producers	
375	American Originals 1918	John Morris Russell, conductor; Elaine Martone, producer	John Morris Russell, conductor; Elaine Martone, producer	
376	Leshnoff: Symphony No. 4 'Heichalos'; Guitar Concerto; Starburst	Giancarlo Guerrero, conductor; Tim Handley, producer	Giancarlo Guerrero, conductor; Tim Handley, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giancarlo%2BGuerrero/Giancarlo%2520Guerrero_1_1_1581610466.jpg?itok=IwpSCWeW
377	Meltzer: Songs And Structures	Paul Appleby & Natalia Katyukova; Silas Brown & Harold Meltzer, producers	Paul Appleby & Natalia Katyukova; Silas Brown & Harold Meltzer, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BAppleby/Paul%2520Appleby_1_1_1581565107.jpg?itok=9MXrEdI5
378	Saariaho: True Fire; Trans; Ciel D'Hiver	Hannu Lintu, conductor; Laura Heikinheimo, producer	Hannu Lintu, conductor; Laura Heikinheimo, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hannu%2BLintu/Hannu%2520Lintu_1_1_1581560190.jpg?itok=BlFeKfgN
379	Bermel: Migration Series For Jazz Ensemble & Orchestra	Derek Bermel, composer (Derek Bermel, Ted Nash, David Alan Miller, Juilliard Jazz Orchestra & Albany Symphony Orchestra)	Derek Bermel, composer (Derek Bermel, Ted Nash, David Alan Miller, Juilliard Jazz Orchestra & Albany Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Derek%2BBermel/Derek%2520Bermel_1_1_1581556759.jpg?itok=yuxyF2E5
380	Marsalis: Violin Concerto In D Major	Wynton Marsalis, composer (Nicola Benedetti, Cristian Măcelaru & Philadelphia Orchestra)	Wynton Marsalis, composer (Nicola Benedetti, Cristian Măcelaru & Philadelphia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
381	Old Town Road (Official Movie)	Lil Nas X & Billy Ray Cyrus	Calmatic, video director; Candice Dragonas, Melissa Larsen & Saul Levitz, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Montero%2BLamar%2BHill/Lil%2520Nas%2520X_1_1_1581656760.jpg?itok=_YR6dOjI
382	We've Got To Try	The Chemical Brothers	Ninian Doff, video director; Ellie Fry, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
383	Cellophane	FKA twigs	Andrew Thomas Huang, video director; Alex Chamberlain, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/FKA%2Btwigs/FKA%2520twigs_1_1_1584534372.jpg?itok=fKNAWfo-
384	Glad He's Gone	Tove Lo	Vania Heymann & Gal Muggia, video directors; Natan Schottenfels, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tove%2BLo/Tove%2520Lo_1_1_1595838597.jpg?itok=QXFNtXGF
385	Homecoming	Beyoncé	Beyoncé Knowles-Carter & Ed Burke, video directors; Steve Pamon & Erinn Williams, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
386	Remember My Name	David Crosby	A.J. Eaton, video director; Cameron Crowe, Michele Farinola & Greg Mariotti, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BCrosby/David%2520Crosby_1_1_1591283852.jpg?itok=3VsOtEJQ
387	Birth Of The Cool	(Miles Davis)	Stanley Nelson, video director; Nicole London, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/stanley_nelson.png?itok=-MNAiiVP
388	Shangri-La	(Various Artists)	Jeff Malmberg & Morgan Neville, video directors; Danny Breen, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/morgan_neville.png?itok=xD-0oBtl
389	This Is America	Childish Gambino	Donald Glover & Ludwig Göransson, producers; Derek "MixedByAli" Ali, Kesha Lee, Riley Mackin, Shaan Singh & Alex Tumay, engineers/mixers; Mike Bozzi, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Childish%2BGambino/Childish%2520Gambino_1_1_1591112936.jpg?itok=AU_J_f8x
882	Blow Your Pants Off	Jimmy Fallon	Gerard Bradford, Mike DiCenzo, Jimmy Fallon & Lawrence Manchester, producers; Lawrence Manchester, engineer/mixer	
390	Golden Hour	Kacey Musgraves	Ian Fitchuk, Kacey Musgraves & Daniel Tashian, producers; Craig Alvin & Shawn Everett, engineers/mixers; Ian Fitchuk, Kacey Musgraves & Daniel Tashian, songwriters; Greg Calbi & Steve Fallone, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kacey%2BMusgraves/Kacey%2520Musgraves_1_1_1578384727.jpg?itok=OQQ3rnwH
391	Dua Lipa	Dua Lipa		
392	Joanne (Where Do You Think You're Goin'?)	Lady Gaga	Lady Gaga	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
393	Shallow	Lady Gaga & Bradley Cooper	Lady Gaga & Bradley Cooper	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
394	My Way	Willie Nelson	Buddy Cannon & Matt Rollings, producers; Tony Castle, Steve Chadie & Ed Cherney, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
395	Sweetener	Ariana Grande	Pharrell Williams, producer; Mike Larson, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ariana%2BGrande/Ariana%2520Grande_1_1_1578384678.jpg?itok=Amj90j13
396	Electricity	Silk City & Dua Lipa Featuring Diplo & Mark Ronson	Jarami, Alex Metric, Riton & Silk City, producers; Josh Gudwin, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Silk%2BCity/Silk%2520City_1_1_1581628566.jpg?itok=AbWKBXwp
397	Woman Worldwide	Justice	Justice, producers; Justice, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Justice/Justice_1_1_1575363094.jpg?itok=NoZFQoef
398	Steve Gadd Band	Steve Gadd Band	Rich Breen, engineer/mixer	
399	When Bad Does Good	Chris Cornell	Chris Cornell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BCornell/Chris%2520Cornell_1_1_1596467945.jpg?itok=KmGk0Oi4
400	Electric Messiah	High On Fire	High On Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/High%2BOn%2BFire/High%2520On%2520Fire_1_1_1581552230.jpg?itok=OngDSVSw
401	Masseduction	Jack Antonoff & Annie Clark, songwriters (St. Vincent)	Jack Antonoff & Annie Clark, songwriters (St. Vincent)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/jack.png?itok=qPWzu57c
402	From The Fires	Greta Van Fleet	Herschel Boone, Al Sutton & Marlon Young, producers; Al Sutton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Greta%2BVan%2BFleet/Greta%2520Van%2520Fleet_1_1_1578384393.jpg?itok=CN-WN5iB
403	Colors	Beck	Beck & Greg Kurstin, producers; Julian Burg, Serban Ghenea, David Greenbaum, John Hanes, Greg Kurstin, Florian Lagatta, Cole M.G.N., Alex Pasco, Jesse Shatkin, Darrel Thorp & Cassidy Turbin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beck/Beck_1_1_1578385706.jpg?itok=mG8JgiRs
404	Best Part	H.E.R. Featuring Daniel Caesar	H.E.R. Featuring Daniel Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/H.E.R./H.E.R._1_1_1594631035.jpg?itok=ClJe-2MN
405	Bet Ain't Worth The Hand	Leon Bridges	Leon Bridges	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leon%2BBridges/Leon%2520Bridges_1_1_1578384624.jpg?itok=8bistHNE
406	How Deep Is Your Love	PJ Morton Featuring Yebba	PJ Morton Featuring Yebba	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/PJ%2BMorton/PJ%2520Morton_1_1_1581553476.jpg?itok=jl8z_7qP
407	Boo'd Up	Larrance Dopson, Joelle James, Ella Mai & Dijon McFarlane, songwriters (Ella Mai)	Larrance Dopson, Joelle James, Ella Mai & Dijon McFarlane, songwriters (Ella Mai)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joelle%2BJames/Joelle%2520James_1_1_1581553786.jpg?itok=pKQBqpQq
408	Everything Is Love	The Carters	The Carters, producers; Gimel "Young Guru" Keaton & Stuart White, engineers/mixers	
409	H.E.R.	H.E.R.	Darhyl "DJ" Camper, David "Swagg R'Celius" Harris, H.E.R., Walter Jones & Jeff Robinson, producers; Mikinari Tsutsumi, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/H.E.R./H.E.R._1_1_1594631035.jpg?itok=ClJe-2MN
410	King's Dead	Kendrick Lamar, Jay Rock, Future & James Blake	Kendrick Lamar, Jay Rock, Future & James Blake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
411	Bubblin	Anderson .Paak	Anderson .Paak	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anderson%2B.Paak/Anderson%2520.Paak_1_1_1581551893.jpg?itok=uYzYyy-g
412	God's Plan	Aubrey Graham, Daveon Jackson, Brock Korsan, Ron LaTour, Matthew Samuels & Noah Shebib, songwriters (Drake)	Aubrey Graham, Daveon Jackson, Brock Korsan, Ron LaTour, Matthew Samuels & Noah Shebib, songwriters (Drake)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Drake/Drake_1_1_1594066654.jpg?itok=SV_b8VHJ
413	Invasion Of Privacy	Cardi B	Leslie Brathwaite & Evan LaRay, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cardi%2BB/Cardi%2520B_1_1_1581552048.jpg?itok=KP1P0IP1
414	Butterflies	Kacey Musgraves	Kacey Musgraves	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kacey%2BMusgraves/Kacey%2520Musgraves_1_1_1578384727.jpg?itok=OQQ3rnwH
415	Tequila	Dan + Shay	Dan + Shay	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dan%2B%252B%2BShay/Dan%2520%252B%2520Shay_1_1_1595519839.jpg?itok=YuZpUbdu
416	Space Cowboy	Luke Laird, Shane McAnally & Kacey Musgraves, songwriters (Kacey Musgraves)	Luke Laird, Shane McAnally & Kacey Musgraves, songwriters (Kacey Musgraves)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shane%2BMcAnally/Shane%2520McAnally_1_1_1597164659.jpg?itok=TO5X2jQ0
417	Opium Moon	Opium Moon	Opium Moon, producers; Lucas Fehring & Jeff Gartenbaum, engineers/mixers	
418	Don't Fence Me In	John Daversa, soloist	John Daversa, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BDaversa/John%2520Daversa_1_1_1575357407.jpg?itok=bdXZDJLO
419	The Window	Cécile McLorin Salvant	Sullivan Fortner, Al Pryor & Cécile McLorin Salvant, producers; Todd Whitelock, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/C%25C3%25A9cile%2BMcLorin%2BSalvant/Cecile%2520McLorin%2520Salvant_1_1_1588264786.jpg?itok=ZI5BvUzC
420	Emanon	The Wayne Shorter Quartet	Don Was, producer; Rob Griffin, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BWas/Don%2520Was_1_1_1597166605.jpg?itok=VjPdbASx
1105	75	Joe Zawinul & The Zawinul Syndicate	Joachim Becker, producer; Joachim Becker, Klaus Genuit & Wladi Turkewitsch, engineers/mixers	
421	American Dreamers: Voices Of Hope, Music Of Freedom	John Daversa Big Band Featuring DACA Artists	Doug Davis & Kabir Sehgal, producers; Oscar Autie, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doug%2BDavis/Doug%2520Davis_1_1_1581642927.jpg?itok=tFmHTF79
422	Back To The Sunset	Dafnis Prieto Big Band	Eric Oberstein, producer; Joe Marciano & Max Ross, engineers/mixers	
423	Never Alone	Tori Kelly Featuring Kirk Franklin; Kirk Franklin & Victoria Kelly, songwriters	Tori Kelly Featuring Kirk Franklin; Kirk Franklin & Victoria Kelly, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tori%2BKelly/Tori%2520Kelly_1_1_1594739766.jpg?itok=LfN3g0_f
424	You Say	Lauren Daigle; Lauren Daigle, Jason Ingram & Paul Mabury, songwriters	Lauren Daigle; Lauren Daigle, Jason Ingram & Paul Mabury, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lauren%2BDaigle/Lauren%2520Daigle_1_1_1595415610.jpg?itok=e8j0Bu5A
425	Hiding Place	Tori Kelly	Kirk Franklin, Ronald Hill & Max Stark, producers; Rob Chiarelli & Michael Havens, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tori%2BKelly/Tori%2520Kelly_1_1_1594739766.jpg?itok=LfN3g0_f
426	Look Up Child	Lauren Daigle	Jason Ingram & Paul Mabury, producers; Mark Endert & Buckley Miller, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lauren%2BDaigle/Lauren%2520Daigle_1_1_1595415610.jpg?itok=e8j0Bu5A
427	Unexpected	Jason Crabb	Jay DeMarcus, producer; Derek Bason, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BCrabb/Jason%2520Crabb_1_1_1581557998.jpg?itok=kXAxOT8q
428	Sincera	Claudia Brant	Cheche Alara & Antonio "Moogie" Canazio, producers; Antonio "Moogie" Canazio, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cheche%2BAlara/Cheche%2520Alara_1_1_1581561845.jpg?itok=QFY1ENqe
429	Aztlán	Zoé	Phil Vinall & Zoé, producers; Juan Sebastian Rodriguez & Craig Silvey, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zo%25C3%25A9/Zo%25C3%25A9_1_1_1596099458.jpg?itok=BSzlRylW
430	¡México Por Siempre!	Luis Miguel	Luis Miguel & David Reitzas, producers; David Reitzas & Jess Sutcliffe, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
431	Anniversary	Spanish Harlem Orchestra	Doug Beavers, producer; Kyle Cassel & Guido Diaz, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doug%2BBeavers/Doug%2520Beavers_1_1_1581558730.jpg?itok=88HuCIGb
432	The Joke	Brandi Carlile	Brandi Carlile	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brandi%2BCarlile/Brandi%2520Carlile_1_1_1597247043.jpg?itok=5265JEVE
433	By The Way, I Forgive You	Brandi Carlile	Dave Cobb & Shooter Jennings, producers; Eddie Spear, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brandi%2BCarlile/Brandi%2520Carlile_1_1_1597247043.jpg?itok=5265JEVE
434	The Travelin' McCourys	The Travelin' McCourys	The Travelin' McCourys, producers; Sean Sullivan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BTravelin%2527%2BMcCourys/The%2520Travelin%2527%2520McCourys_1_1_1594938701.jpg?itok=2VZ_f4ff
435	The Blues Is Alive And Well	Buddy Guy	Buddy Guy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
436	Please Don't Be Dead	Fantastic Negrito	Fantastic Negrito, producer; Nahuel Bronzini, Alexandro "Migui" Maloles & Matt Winegar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fantastic%2BNegrito/Fantastic%2520Negrito_1_1_1575357373.jpg?itok=3hYD10aD
437	All Ashore	Punch Brothers	Punch Brothers, producers; Jason Wormer, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Punch%2BBrothers/Punch%2520Brothers_1_1_1594671548.jpg?itok=SqQ5PyYx
438	No 'Ane'i	Kalani Pe'a	Allan B. Cool, Kalani Pe'a & Dave Tucciarone, producers; Dave Tucciarone, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kalani%2BPe%2527a/Kalani%2520Pe%2527a_1_1_1581553494.jpg?itok=rAnFwS_R
439	44/876	Sting & Shaggy	Sting International, producer; Tony Lake & Robert Orton, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
440	Freedom	Soweto Gospel Choir	Diniloxolo Ndlakuse, producer; Gabs Agostino, Tarick Joseph, Richard Mitchell & Oyama Songo, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soweto%2BGospel%2BChoir/Soweto%2520Gospel%2520Choir_1_1_1581629382.jpg?itok=kUiaTG4e
441	All The Sounds	Lucy Kalantari & The Jazz Cats	Denise Barbarita, engineer/mixer	
442	Faith  - A Journey For All	Jimmy Carter	Elisa Shokoff, producer; Rick Bradley & John St. Denis, engineers/mixers	
443	Equanimity & The Bird Revelation	Dave Chappelle	Rikki Hughes, Stan Lathan, Sina Sadighi, Carla Sims & Geof Wills, producers; Brian Riordan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BChappelle/Dave%2520Chappelle_1_1_1581629380.jpg?itok=3HV8iP_8
444	The Band's Visit	Etai Benson, Adam Kantor, Katrina Lenk & Ari'el Stachel, principal soloists; Dean Sharenow & David Yazbek, producers; David Yazbek, composer & lyricist (Original Broadway Cast); Dean Sharenow, engineer/mixer	Etai Benson, Adam Kantor, Katrina Lenk & Ari'el Stachel, principal soloists; Dean Sharenow & David Yazbek, producers; David Yazbek, composer & lyricist (Original Broadway Cast); Dean Sharenow, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adam%2BKantor/Adam%2520Kantor_1_1_1581657283.jpg?itok=EFFpMzxK
445	The Greatest Showman	Hugh Jackman (& Various Artists)	Alex Lacamoire, Benj Pasek, Justin Paul & Greg Wells, compilation producers; Derik Lee, Ian MacGregor & Greg Wells, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hugh%2BJackman/Hugh%2520Jackman_1_1_1600072433Muzooka.jpg?itok=QC-uhq-7
446	Black Panther	Ludwig Göransson, composer; Ludwig Göransson, producer; Chris Fogel, engineer/mixer	Ludwig Göransson, composer; Ludwig Göransson, producer; Chris Fogel, engineer/mixer	
447	Blut Und Boden (Blood And Soil)	Terence Blanchard, composer (Terence Blanchard)	Terence Blanchard, composer (Terence Blanchard)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terence%2BBlanchard/Terence%2520Blanchard_1_1_1581553525.jpg?itok=gNLy5qGf
504	The Nashville Sound	Jason Isbell And The 400 Unit	Dave Cobb, producer; Matt Ross-Spang, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BIsbell/Jason%2520Isbell_1_1_1596138781.jpg?itok=SFaQvVti
448	Stars And Stripes Forever	John Daversa, arranger (John Daversa Big Band Featuring DACA Artists)	John Daversa, arranger (John Daversa Big Band Featuring DACA Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BDaversa/John%2520Daversa_1_1_1575357407.jpg?itok=bdXZDJLO
449	Spiderman Theme	Mark Kibble, Randy Waldman & Justin Wilson, arrangers (Randy Waldman Featuring Take 6 & Chris Potter)	Mark Kibble, Randy Waldman & Justin Wilson, arrangers (Randy Waldman Featuring Take 6 & Chris Potter)	
450	Squeeze Box: The Complete Works Of "Weird Al" Yankovic	Meghan Foley, Annie Stoll & Al Yankovic, art directors ("Weird Al" Yankovic)	Meghan Foley, Annie Stoll & Al Yankovic, art directors ("Weird Al" Yankovic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/weird_al_yankovic_spotlight_510334176.png?itok=u7SwDHr0
451	Voices Of Mississippi: Artists And Musicians Documented By William Ferris	David Evans, album notes writer (Various Artists)	David Evans, album notes writer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BEvans/David%2520Evans_1_1_1581636058.jpg?itok=4Fpz73xr
452	Pharrell Williams	Pharrell Williams		
453	Walking Away (Mura Masa Remix)	Alex Crossan, remixer (Haim)	Alex Crossan, remixer (Haim)	
454	Eye In The Sky - 35th Anniversary Edition	Alan Parsons, surround mix engineer; Dave Donnelly, PJ Olsson & Alan Parsons, surround mastering engineers; Alan Parsons, surround producer (The Alan Parsons Project)	Alan Parsons, surround mix engineer; Dave Donnelly, PJ Olsson & Alan Parsons, surround mastering engineers; Alan Parsons, surround producer (The Alan Parsons Project)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BParsons/Alan%2520Parsons_1_1_1588264807.jpg?itok=ia9VJpOP
455	Shostakovich: Symphonies Nos. 4 & 11	Shawn Murphy & Nick Squire, engineers; Tim Martyn, mastering engineer (Andris Nelsons & Boston Symphony Orchestra)	Shawn Murphy & Nick Squire, engineers; Tim Martyn, mastering engineer (Andris Nelsons & Boston Symphony Orchestra)	
456	Bates: The (R)evolution Of Steve Jobs	Michael Christie, conductor; Sasha Cooke, Jessica E. Jones, Edward Parks, Garrett Sorenson & Wei Wu; Elizabeth Ostrow, producer (The Santa Fe Opera Orchestra); Mark Donahue & Dirk Sobotka, engineers; Mark Donahue, mixer	Michael Christie, conductor; Sasha Cooke, Jessica E. Jones, Edward Parks, Garrett Sorenson & Wei Wu; Elizabeth Ostrow, producer (The Santa Fe Opera Orchestra); Mark Donahue & Dirk Sobotka, engineers; Mark Donahue, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BChristie/Michael%2520Christie_1_1_1581628953.jpg?itok=QuY0wmmU
457	McLoskey: Zealot Canticles	Donald Nally, conductor (Doris Hall-Gulati, Rebecca Harris, Arlen Hlusko, Lorenzo Raval & Mandy Wolman; The Crossing); Paul Vazquez, producer	Donald Nally, conductor (Doris Hall-Gulati, Rebecca Harris, Arlen Hlusko, Lorenzo Raval & Mandy Wolman; The Crossing); Paul Vazquez, producer	
458	Anderson, Laurie: Landfall	Laurie Anderson & Kronos Quartet; Scott Fraser, producer	Laurie Anderson & Kronos Quartet; Scott Fraser, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Laurie%2BAnderson/Laurie%2520Anderson_1_1_1581551860.jpg?itok=yPia18T2
459	Kernis: Violin Concerto	James Ehnes; Ludovic Morlot, conductor (Seattle Symphony)	James Ehnes; Ludovic Morlot, conductor (Seattle Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BEhnes/James%2520Ehnes_1_1_1591955923.jpg?itok=w7lFhh0Y
460	Songs Of Orpheus - Monteverdi, Caccini, D'India & Landi	Karim Sulayman; Jeannette Sorrell, conductor; Apollo's Fire, ensembles; Erica Brenner, producer; Ian Dobie, engineer; Ian Dobie & Daniel Shores, mixers	Karim Sulayman; Jeannette Sorrell, conductor; Apollo's Fire, ensembles; Erica Brenner, producer; Ian Dobie, engineer; Ian Dobie & Daniel Shores, mixers	
461	Fuchs: Piano Concerto 'Spiritualist'; Poems Of Life; Glacier; Rush	JoAnn Falletta, conductor; Tim Handley, producer; Jonathan Allen, engineer	JoAnn Falletta, conductor; Tim Handley, producer; Jonathan Allen, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/JoAnn%2BFalletta/JoAnn%2520Falletta_1_1_1581558412.jpg?itok=fKqmOyvB
462	Quincy	Quincy Jones	Alan Hicks & Rashida Jones, video directors; Paula DuPré Pesmen, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
463	24K Magic	Bruno Mars	Shampoo Press & Curl (Christopher Brody Brown, Philip Lawrence & Bruno Mars), producers; Serban Ghenea, John Hanes & Charles Moniz, engineers/mixers; Tom Coyne, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruno%2BMars/Bruno%2520Mars_1_1_1578385368.jpg?itok=KhxnacRR
464	That's What I Like	Christopher Brody Brown, James Fauntleroy, Philip Lawrence, Bruno Mars, Ray Charles McCullough II, Jeremy Reeves, Ray Romulus & Jonathan Yip, songwriters (Bruno Mars)	Christopher Brody Brown, James Fauntleroy, Philip Lawrence, Bruno Mars, Ray Charles McCullough II, Jeremy Reeves, Ray Romulus & Jonathan Yip, songwriters (Bruno Mars)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BFauntleroy/James%2520Fauntleroy_1_1_1581557523.jpg?itok=_ub-XLB4
465	Alessia Cara	Alessia Cara		
466	Shape Of You	Ed Sheeran	Ed Sheeran	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ed%2BSheeran/Ed%2520Sheeran_1_1_1594056948.jpg?itok=On8YTR-K
467	Feel It Still	Portugal. The Man	Portugal. The Man	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Portugal.%2BThe%2BMan/Portugal.%2520The%2520Man_1_1_1594897208.jpg?itok=CNX_OrCF
468	Tony Bennett Celebrates 90	(Various Artists)	Dae Bennett, producer; Dae Bennett & John Harris, engineers/mixers	
469	÷ (Divide)	Ed Sheeran	Ed Sheeran, producer; Joe Rubel, Chris Sclafani & Mark "Spike" Stent, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ed%2BSheeran/Ed%2520Sheeran_1_1_1594056948.jpg?itok=On8YTR-K
470	Tonite	LCD Soundsystem	James Murphy, producer; James Murphy, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/LCD%2BSoundsystem/LCD%2520Soundsystem_1_1_1581552170.jpg?itok=_4cWi_2l
471	3-D The Catalogue	Kraftwerk	Serge Gräfe, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kraftwerk/Kraftwerk_1_1_1575360657.jpg?itok=5Dpt8XLs
472	Prototype	Jeff Lorber Fusion	Peter Mokran, engineer/mixer	
473	You Want It Darker	Leonard Cohen	Leonard Cohen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BCohen/Leonard%2520Cohen_1_1_1578385024.jpg?itok=RQvGp5d_
474	Sultan’s Curse	Mastodon	Mastodon	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mastodon/Mastodon_1_1_1578384935.jpg?itok=_pncNWCf
475	Run	Foo Fighters (Dave Grohl, Taylor Hawkins, Rami Jaffee, Nate Mendel, Chris Shiflett & Pat Smear), songwriters (Foo Fighters)	Foo Fighters (Dave Grohl, Taylor Hawkins, Rami Jaffee, Nate Mendel, Chris Shiflett & Pat Smear), songwriters (Foo Fighters)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
476	A Deeper Understanding	The War On Drugs	Shawn Everett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BWar%2BOn%2BDrugs/The%2520War%2520On%2520Drugs_1_1_1578384442.jpg?itok=ce7kfzO2
477	Sleep Well Beast	The National	David Chalmin, Peter Katis, Jonathan Low & Sean O'Brien, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BNational/The%2520National_1_1_1581551769.jpg?itok=23ipvRgH
478	Redbone	Childish Gambino	Childish Gambino	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Childish%2BGambino/Childish%2520Gambino_1_1_1591112936.jpg?itok=AU_J_f8x
479	Starboy	The Weeknd	Circut, Doc McKinney & The Weeknd, producers; Serban Ghenea, John Hanes, Doc McKinney & Josh Smith, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BWeeknd/The%2520Weeknd_1_1_1596247865.jpg?itok=rjKyI9uH
480	HUMBLE.	Kendrick Lamar	Kendrick Lamar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
481	LOYALTY.	Kendrick Lamar Featuring Rihanna	Kendrick Lamar Featuring Rihanna	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
482	DAMN.	Kendrick Lamar	Sounwave & Anthony "Topdawg" Tiffith, producers; Derek "MixedByAli" Ali, James "The White Black Man" Hunt & Matt Schaeffer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
483	Either Way	Chris Stapleton	Chris Stapleton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BStapleton/Chris%2520Stapleton_1_1_1581551781.jpg?itok=ud0xLx64
484	Better Man	Little Big Town	Little Big Town	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Little%2BBig%2BTown/Little%2520Big%2520Town_1_1_1595861656.jpg?itok=iuWsqCuA
485	Broken Halos	Mike Henderson & Chris Stapleton, songwriters (Chris Stapleton)	Mike Henderson & Chris Stapleton, songwriters (Chris Stapleton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mike%2BHenderson/Mike%2520Henderson_1_1_1578516280.jpg?itok=gtTFbsWI
486	From A Room: Volume 1	Chris Stapleton	Dave Cobb & Chris Stapleton, producers; Vance Powell, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BStapleton/Chris%2520Stapleton_1_1_1581551781.jpg?itok=ud0xLx64
487	Dancing On Water	Peter Kater	Peter Kater, producer; Peter Kater, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BKater/Peter%2520Kater_1_1_1581554053.jpg?itok=TFsf2wjd
488	Miles Beyond	John McLaughlin, soloist	John McLaughlin, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMcLaughlin/John%2520McLaughlin_1_1_1575362509.jpg?itok=Szr6s3GN
489	Dreams And Daggers	Cécile McLorin Salvant	Al Pryor & Cécile McLorin Salvant, producers; Todd Whitelock & Damon Whittemore, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/C%25C3%25A9cile%2BMcLorin%2BSalvant/Cecile%2520McLorin%2520Salvant_1_1_1588264786.jpg?itok=ZI5BvUzC
490	Rebirth	Billy Childs	Billy Childs, producer; Rich Breen, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BChilds/Billy%2520Childs_1_1_1581647571.jpg?itok=fGAL4PEd
491	Bringin' It	Christian McBride Big Band	Todd Whitelock, engineer/mixer	
492	Jazz Tango	Pablo Ziegler Trio	Kabir Sehgal, producer	
493	Never Have To Be Alone	CeCe Winans; Dwan Hill & Alvin Love III, songwriters	CeCe Winans; Dwan Hill & Alvin Love III, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
494	What A Beautiful Name	Hillsong Worship; Ben Fielding & Brooke Ligertwood, songwriters	Hillsong Worship; Ben Fielding & Brooke Ligertwood, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hillsong%2BWorship/Hillsong%2520Worship_1_1_1579261934.jpg?itok=0TvUOtW7
495	Let Them Fall In Love	CeCe Winans	Alvin Love III & Tommy Sims, producers; Jimmy Douglass, Ben Kane & Vance Powell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
496	Chain Breaker	Zach Williams	Jonathan Smith, producer; Jon Kaplan, Buckley Miller, Jonathan Smith, Colby Wedgeworth & Mark Zellmer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zach%2BWilliams/Zach%2520Williams_1_1_1589203860.jpg?itok=-LP-eodk
497	Sing It Now: Songs Of Faith & Hope	Reba McEntire	Reba McEntire & Doug Sisemore, producers; Sean Neff & Todd Tidwell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Reba%2BMcEntire/Reba%2520McEntire_1_1_1578387350.jpg?itok=UEMLeH_f
498	El Dorado	Shakira	Shakira, producer; Carlos Hernandez Carbonell & Dave Clauss, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shakira/Shakira_1_1_1594207397.jpg?itok=X_hiC5-c
499	Residente	Residente	Residente, producer; Rafael Arcaute, Beatriz Artola, Tom Elmhirst & Phil Joly, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Residente/Residente_1_1_1596466006.jpg?itok=0bFvIH8-
500	Arrieros Somos Sesiones Acústicas	Aida Cuevas	Rodrigo Cuevas, producer; Rodrigo Cuevas, Gael Hedding & Acradio Hernández, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aida%2BCuevas/Aida%2520Cuevas_1_1_1581554595.jpg?itok=7z39XfnT
501	Salsa Big Band	Rubén Blades Con Roberto Delgado & Orquesta	Pablo Governatori & Ignacio Molino, engineers/mixers	
502	Killer Diller Blues	Alabama Shakes	Alabama Shakes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alabama%2BShakes/Alabama%2520Shakes_1_1_1595867699.jpg?itok=SBbMPUnz
503	If We Were Vampires	Jason Isbell, songwriter (Jason Isbell And The 400 Unit)	Jason Isbell, songwriter (Jason Isbell And The 400 Unit)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BIsbell/Jason%2520Isbell_1_1_1596138781.jpg?itok=SFaQvVti
587	In Such Good Company: Eleven Years Of Laughter, Mayhem, And Fun In The Sandbox	Carol Burnett	Aaron Blank, producer; Dominic Camardella, engineer/mixer	
505	Laws Of Gravity	The Infamous Stringdusters	Billy Hume & The Infamous Stringdusters, producers; Billy Hume, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BInfamous%2BStringdusters/The%2520Infamous%2520Stringdusters_1_1_1578385196.jpg?itok=YaD1hrbq
506	All The Rage - In Concert Volume One [Live]	Rhonda Vincent And The Rage	Rhonda Vincent And The Rage, producers; Joey Crawford & Joe Martino, engineers/mixers	
507	Blue & Lonesome	The Rolling Stones	Don Was, producer; Krish Sharma, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/rolling_stones_spotlight_623462898.png?itok=yydRz1v1
508	TajMo	Taj Mahal & Keb' Mo'	Taj Mahal & Keb' Mo', producers; Zach Allen, John Caldwell, Ross Hogarth & Casey Wasner, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taj%2BMahal/Taj%2520Mahal_1_1_1596802673.jpg?itok=ekwieOZA
509	Mental Illness	Aimee Mann	Paul Bryan, producer; Paul Bryan & Ryan Freeland, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aimee%2BMann/Aimee%2520Mann_1_1_1575371225.jpg?itok=vY8vJDZ0
510	Kalenda	Lost Bayou Ramblers	Lost Bayou Ramblers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lost%2BBayou%2BRamblers/Lost%2520Bayou%2520Ramblers_1_1_1581552637.jpg?itok=SdQTnCBC
511	Stony Hill	Damian "Jr. Gong" Marley	Damian "Jr. Gong" Marley, producer; Marc Lee & Gennaro "Geronimo" Schiano, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Damian%2BMarley/Damian%2520Marley_1_1_1591265412.jpg?itok=Mm5lmYZ8
512	Shaka Zulu Revisited: 30th Anniversary Celebration	Ladysmith Black Mambazo	Mitch Goldstein & Ladysmith Black Mambazo, producers; Nonhlanhla Buthelezi & Mthandeni Mvelase, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ladysmith%2BBlack%2BMambazo/Ladysmith%2520Black%2520Mambazo_1_1_1585147865.jpg?itok=GRzbQUPR
513	Feel What U Feel	Lisa Loeb	Rich Jacques & Lisa Loeb, producers; Rich Jacques & Brian Yaskulka, engineers/mixers	
514	The Princess Diarist	Carrie Fisher	Dan Zitt, producer; Nikki Banks Maurer, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BFisher/Carrie%2520Fisher_1_1_1581629258.jpg?itok=5kCllMp8
515	The Age Of Spin & Deep In The Heart Of Texas	Dave Chappelle	Rikki Hughes, Stan Lathan, Sina Sadighi, Carla Sims & Geof Wills, producers; Michael Abbott, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BChappelle/Dave%2520Chappelle_1_1_1581629380.jpg?itok=3HV8iP_8
516	Dear Evan Hansen	Laura Dreyfuss, Mike Faist, Rachel Bay Jones, Kristolyn Lloyd, Michael Park, Ben Platt, Will Roland & Jennifer Laura Thompson, principal soloists; Benj Pasek & Justin Paul, composers/lyricists; Pete Ganbarg, Alex Lacamoire, Stacey Mindich, Benj Pasek & Justin Paul, producers; Neal Avron & Derik Lee, engineers/mixers (Original Broadway Cast Recording)	Laura Dreyfuss, Mike Faist, Rachel Bay Jones, Kristolyn Lloyd, Michael Park, Ben Platt, Will Roland & Jennifer Laura Thompson, principal soloists; Benj Pasek & Justin Paul, composers/lyricists; Pete Ganbarg, Alex Lacamoire, Stacey Mindich, Benj Pasek & Justin Paul, producers; Neal Avron & Derik Lee, engineers/mixers (Original Broadway Cast Recording)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Laura%2BDreyfuss/Laura%2520Dreyfuss_1_1_1581609586.jpg?itok=4wOAccQ3
517	La La Land	(Various Artists)	Justin Hurwitz & Marius de Vries, compilation producers; Steven Gizicki, music supervisor; Nicholai Baxter, engineer/mixer	
518	How Far I'll Go	Lin-Manuel Miranda, songwriter (Auli'i Cravalho)	Lin-Manuel Miranda, songwriter (Auli'i Cravalho)	
519	Three Revolutions	Arturo O'Farrill, composer (Arturo O'Farrill & Chucho Valdés)	Arturo O'Farrill, composer (Arturo O'Farrill & Chucho Valdés)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/arturoofarrill-spotlight.png?itok=I8W2h2tn
520	Escapades For Alto Saxophone And Orchestra From Catch Me If You Can	John Williams, arranger (John Williams)	John Williams, arranger (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
521	Putin	Randy Newman, arranger (Randy Newman)	Randy Newman, arranger (Randy Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
522	El Orisha De La Rosa	Carlos Dussán, Juliana Jaramillo, Juan Felipe Martínez & Claudio Roncoli, art directors (Magín Díaz)	Carlos Dussán, Juliana Jaramillo, Juan Felipe Martínez & Claudio Roncoli, art directors (Magín Díaz)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juan%2BFelipe%2BMart%25C3%25ADnez/MARTi_1_1_1581649963.jpg?itok=8bGoRZxN
523	Pure Comedy (Deluxe Edition)	Sasha Barr, Ed Steed & Josh Tillman, art directors (Father John Misty)	Sasha Barr, Ed Steed & Josh Tillman, art directors (Father John Misty)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Father%2BJohn%2BMisty/Father%2520John%2520Misty_1_1_1578384481.jpg?itok=5aX5x5bN
524	The Voyager Golden Record: 40th Anniversary Edition	Lawrence Azerrad, Timothy Daly & David Pescovitz, art directors (Various Artists)	Lawrence Azerrad, Timothy Daly & David Pescovitz, art directors (Various Artists)	
525	Live At The Whisky A Go Go: The Complete Recordings	Lynell George, album notes writer (Otis Redding)	Lynell George, album notes writer (Otis Redding)	
526	Leonard Bernstein - The Composer	Robert Russ, compilation producer; Martin Kistner & Andreas K. Meyer, mastering engineers (Leonard Bernstein)	Robert Russ, compilation producer; Martin Kistner & Andreas K. Meyer, mastering engineers (Leonard Bernstein)	
527	Greg Kurstin	Greg Kurstin		
528	You Move (Latroit Remix)	(Depeche Mode)	Dennis White, remixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dennis%2BWhite/Dennis%2520White_1_1_1581612797.jpg?itok=BJxfSDR1
529	Early Americans	(Jane Ira Bloom)	Jim Anderson, surround mix engineer; Darcy Proper, surround mastering engineer; Jim Anderson & Jane Ira Bloom, surround producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BAnderson/Jim%2520Anderson_1_1_1581638867.jpg?itok=owpF-7EP
530	Shostakovich: Symphony No. 5; Barber: Adagio	Mark Donahue, engineer (Manfred Honeck & Pittsburgh Symphony Orchestra)	Mark Donahue, engineer (Manfred Honeck & Pittsburgh Symphony Orchestra)	
531	David Frost	David Frost		
532	Bryars: The Fifth Century	Donald Nally, conductor; Andreas K. Meyer & Paul Vazquez, engineers (The Crossing; PRISM Quartet)	Donald Nally, conductor; Andreas K. Meyer & Paul Vazquez, engineers (The Crossing; PRISM Quartet)	
1222	La Vida...Es Un Ratico	Juanes	Juanes & Gustavo Santaolalla, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juanes/Juanes_1_1_1596248014.jpg?itok=tCm50Dlr
533	Death & The Maiden	Patricia Kopatchinskaja, conductor/soloist; The Saint Paul Chamber Orchestra; Blanton Alspaugh, producer; John Newton, engineer; Mark Donahue, engineer/mixer	Patricia Kopatchinskaja, conductor/soloist; The Saint Paul Chamber Orchestra; Blanton Alspaugh, producer; John Newton, engineer; Mark Donahue, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patricia%2BKopatchinskaja/Patricia%2520Kopatchinskaja_1_1_1581552589.jpg?itok=DQRkWKZl
534	Transcendental	Daniil Trifonov; Sid McLauchlan, producer; Marcus Herzog, engineer	Daniil Trifonov; Sid McLauchlan, producer; Marcus Herzog, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniil%2BTrifonov/Daniil%2520Trifonov_1_1_1581553824.jpg?itok=NMYQQ170
535	Crazy Girl Crazy	Barbara Hannigan, soloist; Guido Tichelman, producer; Bastiaan Kuijt, engineer (Ludwig Orchestra)	Barbara Hannigan, soloist; Guido Tichelman, producer; Bastiaan Kuijt, engineer (Ludwig Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbara%2BHannigan/Barbara%2520Hannigan_1_1_1581552367.jpg?itok=0r7tgRRy
536	Higdon: All Things Majestic, Viola Concerto & Oboe Concerto	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giancarlo%2BGuerrero/Giancarlo%2520Guerrero_1_1_1581610466.jpg?itok=IwpSCWeW
537	Viola Concerto	Jennifer Higdon, composer (Roberto Díaz, Giancarlo Guerrero & Nashville Symphony)	Jennifer Higdon, composer (Roberto Díaz, Giancarlo Guerrero & Nashville Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHigdon/Jennifer%2520Higdon_1_1_1597169142.jpg?itok=KWYGxb6d
538	The Defiant Ones	(Various Artists)	Allen Hughes, video director; Sarah Anthony, Fritzi Horstman, Broderick Johnson, Gene Kirkwood, Andrew Kosove, Laura Lancaster, Michael Lombardo, Jerry Longarzo, Doug Pray & Steven Williams, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BWilliams/Steven%2520Williams_1_1_1597180183.jpg?itok=Aw1iIu8W
539	Hello	Adele	Greg Kurstin, producer; Julian Burg, Tom Elmhirst, Emile Haynie, Greg Kurstin, Liam Nolan, Alex Pasco & Joe Visciano, engineers/mixers; Tom Coyne & Randy Merrill, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adele/Adele_1_1_1584090130.jpg?itok=xlwW6t3a
540	25	Adele	Danger Mouse, Samuel Dixon, Paul Epworth, Greg Kurstin, Max Martin, Ariel Rechtshaid, Shellback, Ryan Tedder & The Smeezingtons (Christopher "Brody" Brown, Philip Lawrence & Bruno Mars), producers; Julian Burg, Austen Jux Chandler, Cameron Craig, Samuel Dixon, Tom Elmhirst, Declan Gaffney, Serban Ghenea, John Hanes, Emile Haynie, Jan Holzner, Michael Ilbert, Chris Kasych, Greg Kurstin, Charles Moniz, Liam Nolan, Alex Pasco, Mike Piersante, Ariel Rechtshaid, Rich Rich, Dave Schiffman, Joe Visciano & Matt Wiggins, engineers/mixers; Tom Coyne & Randy Merrill, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adele/Adele_1_1_1584090130.jpg?itok=xlwW6t3a
541	Chance The Rapper	Chance The Rapper		
542	Stressed Out	Twenty One Pilots	Twenty One Pilots	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Twenty%2BOne%2BPilots/Twenty%2520One%2520Pilots_1_1_1588264732.jpg?itok=XFDo-4UM
543	Summertime: Willie Nelson Sings Gershwin	Willie Nelson	Buddy Cannon & Matt Rollings, producers; Ed Cherney, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
544	Don't Let Me Down	The Chainsmokers Featuring Daya	The Chainsmokers (Alex Pall & Andrew Taggart), producers; Jordan Young, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChainsmokers/The%2520Chainsmokers_1_1_1578384536.jpg?itok=du5XODbX
545	Skin	Flume	Flume, producer; Eric J Dubowsky & Flume, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flume/Flume_1_1_1588264597.jpg?itok=mXrjnc4N
546	Culcha Vulcha	Snarky Puppy	Nic Hard, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Snarky%2BPuppy/Snarky%2520Puppy_1_1_1575358554.jpg?itok=jpWrNGFf
547	Blackstar	David Bowie	David Bowie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBowie/David%2520Bowie_1_1_1581552306.jpg?itok=zzZOO1tP
548	Dystopia	Megadeth	Megadeth	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Megadeth/Megadeth_1_1_1594910938.jpg?itok=RgXR6IZz
549	Tell Me I'm Pretty	Cage The Elephant	Dan Auerbach, producer; Collin Dupuis & Tom Elmhirst, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cage%2BThe%2BElephant/Cage%2520The%2520Elephant_1_1_1581551756.jpg?itok=mhAGqzDZ
550	Cranes In The Sky	Solange	Solange	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Solange/Solange_1_1_1581551772.jpg?itok=rOD8Flsa
551	Angel	Lalah Hathaway	Lalah Hathaway	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalah%2BHathaway/Lalah%2520Hathaway_1_1_1588264727.jpg?itok=xEiTnDJS
552	Lake By The Ocean	Hod David & Musze, songwriters (Maxwell)	Hod David & Musze, songwriters (Maxwell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maxwell/Maxwell_1_1_1581552176.jpg?itok=E4pcm551
553	Lemonade	Beyoncé	Beyoncé, producer; Stuart White, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
554	Lalah Hathaway Live	Lalah Hathaway	Lalah Hathaway, producer; Anthony Jeffries, Coobie Lewis & Brian Vibberts, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalah%2BHathaway/Lalah%2520Hathaway_1_1_1588264727.jpg?itok=xEiTnDJS
555	No Problem	Chance The Rapper Featuring Lil Wayne & 2 Chainz	Chance The Rapper Featuring Lil Wayne & 2 Chainz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chancelor%2BBennett/Chance%2520The%2520Rapper_1_1_1581551756.jpg?itok=sD2KjlWQ
556	Hotline Bling	Drake	Drake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Drake/Drake_1_1_1594066654.jpg?itok=SV_b8VHJ
557	Coloring Book	Chance The Rapper	Jeff Lane, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chancelor%2BBennett/Chance%2520The%2520Rapper_1_1_1581551756.jpg?itok=sD2KjlWQ
558	My Church	Maren Morris	Maren Morris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maren%2BMorris/Maren%2520Morris_1_1_1594056945.jpg?itok=29Dwb_ve
588	Talking For Clapping	Patton Oswalt	Matt Belknap & Ryan McManemin, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patton%2BOswalt/Patton%2520Oswalt_1_1_1581555247.jpg?itok=6ynbv8aR
559	Humble And Kind	Lori McKenna, songwriter (Tim McGraw)	Lori McKenna, songwriter (Tim McGraw)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lori%2BMcKenna/Lori%2520McKenna_1_1_1575357759.jpg?itok=h0QlO8Nk
560	A Sailor's Guide To Earth	Sturgill Simpson	Sturgill Simpson, producer; David Ferguson & Sean Sullivan, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sturgill%2BSimpson/Sturgill%2520Simpson_1_1_1591113009.jpg?itok=pMVJbjil
561	White Sun II	White Sun	White Sun	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/White%2BSun/White%2520Sun_1_1_1581554400.jpg?itok=MKxYbhPI
562	I’m So Lonesome I Could Cry	John Scofield, soloist	John Scofield, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BScofield/John%2520Scofield_1_1_1581553699.jpg?itok=N7hmZoJs
563	Take Me To The Alley	Gregory Porter	Kamau Kenyatta & Gregory Porter, producers; Jay Newland & Charlie Paakkari, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gregory%2BPorter/Gregory%2520Porter_1_1_1592251517.jpg?itok=eJd90TcH
564	Country For Old Men	John Scofield	John Scofield, producer; Jay Newland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BScofield/John%2520Scofield_1_1_1581553699.jpg?itok=N7hmZoJs
565	Presidential Suite: Eight Variations On Freedom	Ted Nash Big Band	Douglas Brinkley, Herschel Garfein & Kabir Sehgal, producers; Rob Macomber, engineer/mixer	
566	Tribute To Irakere: Live In Marciac	Chucho Valdés	Chucho Valdés, producer; Orestes Águila, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chucho%2BVald%25C3%25A9s/Chucho%2520Valdes_1_1_1581560137.jpg?itok=jZ6vH_c6
567	God Provides	Tamela Mann; Kirk Franklin, songwriter	Tamela Mann; Kirk Franklin, songwriter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tamela%2BMann/Tamela%2520Mann_1_1_1581552437.jpg?itok=E5k-EgRg
568	Thy Will	Hillary Scott & The Scott Family; Bernie Herms, Hillary Scott & Emily Weisband, songwriters	Hillary Scott & The Scott Family; Bernie Herms, Hillary Scott & Emily Weisband, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bernie%2BHerms/Bernie%2520Herms_1_1_1581553284.jpg?itok=hxUP1BHG
569	Losing My Religion	Kirk Franklin	Kirk Franklin, Ronald Hill, Shaun Martin & Max Stark, producers; Rob Chiarelli & Tre Nagella, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
570	Love Remains	Hillary Scott & The Scott Family	Ricky Skaggs, producer; Richie Biggs, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
571	Hymns	Joey+Rory	Joe West, producer; Joshua Craig, Jim DeBlanc, James Ennis, Daniel Grace, Rob Lane & Joe West, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BWest/Joe%2520West_1_1_1581648190.jpg?itok=_QKTBuoe
572	Un Besito Más	Jesse & Joy	Eduardo De La Paz Canel, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jesse%2B%2526%2BJoy/Jesse%2520%2526%2520Joy_1_1_1596098432.jpg?itok=MhifVwfT
573	iLevitable	iLe	Ismael Cancel & iLe, producers; Noah Georgeson, Ramón Martínez, Harold Wendell Sanders & Carlos Velázquez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/ile/ILE_1_1_1582723542_0.jpg?itok=EJpO42hJ
574	Un Azteca En El Azteca, Vol. 1 (En Vivo)	Vicente Fernández	Gustavo Borner & Javier Ramírez, producers; Gustavo Borner & Javier Ramírez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vicente%2BFernandez/Vicente%2520Fernandez_1_1_1592222005.jpg?itok=D_3nB9FL
575	Donde Están?	Jose Lugo & Guasábara Combo	Gilberto A. Cádenas, producer; Manuel Calero, JoseMa Lugo & Ronnie Torres, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BLugo/Jose%2520Lugo_1_1_1597180907.jpg?itok=wFL5AI88
576	House Of Mercy	Sarah Jarosz	Sarah Jarosz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BJarosz/Sarah%2520Jarosz_1_1_1575363986.jpg?itok=txLxLeAv
577	Kid Sister	Vince Gill, songwriter (The Time Jumpers)	Vince Gill, songwriter (The Time Jumpers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
578	This Is Where I Live	William Bell	John Leventhal, producer; Rick DePofi & John Leventhal, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/William%2BBell/William%2520Bell_1_1_1578384579.jpg?itok=d0tOusGC
579	Coming Home	O'Connor Band With Mark O'Connor	Gregg Field, producer; Neal Cappellino & Gregg Field, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BO%2527Connor/Mark%2520O%2527Connor_1_1_1575370363.jpg?itok=7CY7Nr7s
580	Porcupine Meat	Bobby Rush	Scott Billington, producer; Steve Reynolds, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BRush/Bobby%2520Rush_1_1_1581552280.jpg?itok=l0SI7wOy
581	The Last Days Of Oakland	Fantastic Negrito	Fantastic Negrito, producer; Migui Maloles, Jabari Tawiah & Matt Winegar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fantastic%2BNegrito/Fantastic%2520Negrito_1_1_1575357373.jpg?itok=3hYD10aD
582	Undercurrent	Sarah Jarosz	Sarah Jarosz & Gary Paczosa, producers; Shani Gandhi & Gary Paczosa, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BJarosz/Sarah%2520Jarosz_1_1_1575363986.jpg?itok=txLxLeAv
583	E Walea	Kalani Pe'a	Allan B. Cool, Kamakoa Lindsey-Asing & Dave Tucciarone, producers; Kamakoa Lindsey-Asing & Dave Tucciarone, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kalani%2BPe%2527a/Kalani%2520Pe%2527a_1_1_1581553494.jpg?itok=rAnFwS_R
584	Ziggy Marley	Ziggy Marley	Ziggy Marley, producer; Carlos de la Garza, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
585	Sing Me Home	Yo-Yo Ma & The Silk Road Ensemble	Kevin Killen, producer; Jody Elff & Kevin Killen, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
586	Infinity Plus One	Secret Agent 23 Skidoo	Secret Agent 23 Skidoo, producer; Julian Dreyer & Spencer Williams, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Secret%2BAgent%2B23%2BSkidoo/Secret%2520Agent%252023%2520Skidoo_1_1_1581552341.jpg?itok=nt789y-k
589	The Color Purple	Danielle Brooks, Cynthia Erivo & Jennifer Hudson, principal soloists; Stephen Bray, Van Dean, Frank Filipetti, Roy Furman, Joan Raffe, Scott Sanders & Jhett Tolentino, producers; Frank Filipetti, engineer/mixer (New Broadway Cast)	Danielle Brooks, Cynthia Erivo & Jennifer Hudson, principal soloists; Stephen Bray, Van Dean, Frank Filipetti, Roy Furman, Joan Raffe, Scott Sanders & Jhett Tolentino, producers; Frank Filipetti, engineer/mixer (New Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHudson/Jennifer%2520Hudson_1_1_1581554832.jpg?itok=5KxEp7oS
590	Miles Ahead	(Miles Davis) & Various Artists	Steve Berkowitz, Don Cheadle & Robert Glasper, compilation producers; Ed Gerrard, music supervisor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BGlasper/Robert%2520Glasper_1_1_1588264688.jpg?itok=2mTaU6-A
591	Star Wars: The Force Awakens	John Williams, composer; John Williams, producer; Shawn Murphy, engineer/mixer (John Williams)	John Williams, composer; John Williams, producer; Shawn Murphy, engineer/mixer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
592	Can't Stop The Feeling!	Max Martin, Shellback & Justin Timberlake, songwriters (Justin Timberlake, Anna Kendrick, Gwen Stefani, James Corden, Zooey Deschanel, Walt Dohrn, Ron Funches, Caroline Hjelt, Aino Jawo, Christopher Mintz-Plasse & Kunal Nayyar)	Max Martin, Shellback & Justin Timberlake, songwriters (Justin Timberlake, Anna Kendrick, Gwen Stefani, James Corden, Zooey Deschanel, Walt Dohrn, Ron Funches, Caroline Hjelt, Aino Jawo, Christopher Mintz-Plasse & Kunal Nayyar)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shellback/Shellback_1_1_1597173025.jpg?itok=OJVxLt2v
593	Spoken At Midnight	Ted Nash, composer (Ted Nash Big Band)	Ted Nash, composer (Ted Nash Big Band)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ted%2BNash/Ted%2520Nash_1_1_1589296025.jpg?itok=t_D3hYxB
594	You And I	Jacob Collier, arranger (Jacob Collier)	Jacob Collier, arranger (Jacob Collier)	
595	Flintstones	Jacob Collier, arranger (Jacob Collier)	Jacob Collier, arranger (Jacob Collier)	
596	Edith Piaf 1915-2015	Gérard Lo Monaco, art director (Edith Piaf)	Gérard Lo Monaco, art director (Edith Piaf)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/G%25C3%25A9rard%2BLo%2BMonaco/G%25C3%25A9rard%2520Lo%2520Monaco_1_1_1578514689.jpg?itok=dv0Et20v
597	Sissle And Blake Sing Shuffle Along	Ken Bloom & Richard Carlin, album notes writers (Eubie Blake & Noble Sissle)	Ken Bloom & Richard Carlin, album notes writers (Eubie Blake & Noble Sissle)	
598	The Cutting Edge 1965-1966: The Bootleg Series, Vol.12 (Collector's Edition)	Steve Berkowitz & Jeff Rosen, compilation producers; Mark Wilder, mastering engineer (Bob Dylan)	Steve Berkowitz & Jeff Rosen, compilation producers; Mark Wilder, mastering engineer (Bob Dylan)	
599	Tearing Me Up (RAC Remix)	André Allen Anjos, remixer (Bob Moses)	André Allen Anjos, remixer (Bob Moses)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andr%25C3%25A9%2BAllen%2BAnjos/RAC_1_1_1581552356.jpg?itok=YE6i-E2j
600	Dutilleux: Sur Le Même Accord; Les Citations; Mystère De L'instant & Timbres, Espace, Mouvement	Alexander Lipay & Dmitriy Lipay, surround mix engineers; Dmitriy Lipay, surround mastering engineer; Dmitriy Lipay, surround producer (Ludovic Morlot & Seattle Symphony)	Alexander Lipay & Dmitriy Lipay, surround mix engineers; Dmitriy Lipay, surround mastering engineer; Dmitriy Lipay, surround producer (Ludovic Morlot & Seattle Symphony)	
601	Corigliano: The Ghosts Of Versailles	Mark Donahue, Fred Vogler & David L Williams, engineers (James Conlon, Guanqun Yu, Joshua Guerrero, Patricia Racette, Christopher Maltman, Lucy Schaufer, Lucas Meachem, LA Opera Chorus & Orchestra)	Mark Donahue, Fred Vogler & David L Williams, engineers (James Conlon, Guanqun Yu, Joshua Guerrero, Patricia Racette, Christopher Maltman, Lucy Schaufer, Lucas Meachem, LA Opera Chorus & Orchestra)	
602	Shostakovich: Under Stalin's Shadow - Symphonies Nos. 5, 8 & 9	Andris Nelsons, conductor; Shawn Murphy, producer; Nick Squire, engineer (Boston Symphony Orchestra)	Andris Nelsons, conductor; Shawn Murphy, producer; Nick Squire, engineer (Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andris%2BNelsons/Andris%2520Nelsons_1_1_1581554184.jpg?itok=kDCUo-Mi
603	Penderecki Conducts Penderecki, Volume 1	Krzysztof Penderecki, conductor (Nikolay Didenko, Agnieszka Rehlis & Johanna Rusanen; Warsaw Philharmonic Choir; Warsaw Philharmonic Orchestra)	Krzysztof Penderecki, conductor (Nikolay Didenko, Agnieszka Rehlis & Johanna Rusanen; Warsaw Philharmonic Choir; Warsaw Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Krzysztof%2BPenderecki/Krzysztof%2520Penderecki_1_1_1581629036.jpg?itok=X1ub6NJB
604	Steve Reich	Jesse Lewis, producer; Third Coast Percussion (Sean Connors, Robert Dillon, Peter Martin & David Skidmore), ensembles; Dan Nichols, engineer	Jesse Lewis, producer; Third Coast Percussion (Sean Connors, Robert Dillon, Peter Martin & David Skidmore), ensembles; Dan Nichols, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jesse%2BLewis/Jesse%2520Lewis_1_1_1581633813.jpg?itok=6K2b3BoZ
605	Daugherty: Tales Of Hemingway	Zuill Bailey; Giancarlo Guerrero, conductor (Nashville Symphony)	Zuill Bailey; Giancarlo Guerrero, conductor (Nashville Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zuill%2BBailey/Zuill%2520Bailey_1_1_1581554414.jpg?itok=g1NX4Pza
606	Schumann & Berg	Dorothea Röschmann, soloist; Everett Porter, producer	Dorothea Röschmann, soloist; Everett Porter, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dorothea%2BR%25C3%25B6schmann/Ro_1_1_1581560053.jpg?itok=NpW8-Pnv
607	Shakespeare Songs	Ian Bostridge, soloist; John Fraser, producer; Philip Siney, engineer	Ian Bostridge, soloist; John Fraser, producer; Philip Siney, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ian%2BBostridge/Ian%2520Bostridge_1_1_1581564595.jpg?itok=lJMXGOsM
608	Daugherty: Tales Of Hemingway; American Gothic; Once Upon A Castle	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer (Giancarlo Guerrero)	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer (Giancarlo Guerrero)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giancarlo%2BGuerrero/Giancarlo%2520Guerrero_1_1_1581610466.jpg?itok=IwpSCWeW
609	Formation	Beyoncé	Melina Matsoukas, video director; Nathan Scherrer, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
798	Treinta Días	La Santa Cecilia	Sebastian Krys, producer; Sebastian Krys, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BSanta%2BCecilia/La%2520Santa%2520Cecilia_1_1_1578384712.jpg?itok=LXEcLxz2
610	The Beatles: Eight Days A Week The Touring Years	The Beatles	Ron Howard, video director; Brian Grazer, Ron Howard, Scott Pascucci & Nigel Sinclair, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBeatles/The%2520Beatles_1_1_1591112972.jpg?itok=KFRZmETY
611	Uptown Funk	Mark Ronson Featuring Bruno Mars	Jeff Bhasker, Philip Lawrence, Bruno Mars & Mark Ronson, producers; Josh Blair, Riccardo Damian, Serban Ghenea, Wayne Gordon, John Hanes, Inaam Haq, Boo Mitchell, Charles Moniz & Mark Ronson, engineers/mixers; Tom Coyne, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BRonson/Mark%2520Ronson_1_1_1596790481.jpg?itok=s-dqiJed
612	1989	Taylor Swift	Jack Antonoff, Nathan Chapman, Imogen Heap, Max Martin, Mattman & Robin, Ali Payami, Shellback, Taylor Swift, Ryan Tedder & Noel Zancanella, producers; Jack Antonoff, Mattias Bylund, Smith Carlson, Nathan Chapman, Serban Ghenea, John Hanes, Imogen Heap, Sam Holland, Michael Ilbert, Brendan Morawski, Laura Sisk & Ryan Tedder, engineers/mixers; Tom Coyne, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
613	Thinking Out Loud	Ed Sheeran & Amy Wadge, songwriters (Ed Sheeran)	Ed Sheeran & Amy Wadge, songwriters (Ed Sheeran)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ed%2BSheeran/Ed%2520Sheeran_1_1_1594056948.jpg?itok=On8YTR-K
614	Meghan Trainor	Meghan Trainor		
615	The Silver Lining: The Songs Of Jerome Kern	Tony Bennett & Bill Charlap	Dae Bennett & Bill Charlap, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
616	Where Are Ü Now	Skrillex And Diplo With Justin Bieber	Sonny Moore & Thomas Pentz, producers; Sonny Moore & Thomas Pentz, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
617	Skrillex And Diplo Present Jack Ü	Skrillex And Diplo	Diplo & Skrillex, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
618	Sylva	Snarky Puppy & Metropole Orkest	Snarky Puppy & Metropole Orkest	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Snarky%2BPuppy/Snarky%2520Puppy_1_1_1575358554.jpg?itok=jpWrNGFf
619	Don't Wanna Fight	Alabama Shakes	Alabama Shakes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alabama%2BShakes/Alabama%2520Shakes_1_1_1595867699.jpg?itok=SBbMPUnz
620	Cirice	Ghost	Ghost	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ghost/Ghost_1_1_1581552481.jpg?itok=EMDQ_atj
621	Drones	Muse	Robert John "Mutt" Lange & Muse (Matthew Bellamy, Dominic Howard & Chris Wolstenholme), producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muse/Muse_1_1_1581551894.jpg?itok=YSjRgwU-
622	Sound & Color	Alabama Shakes	Alabama Shakes (Zac Cockrell, Heath Fogg, Brittany Howard & Steve Johnson) & Blake Mills, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alabama%2BShakes/Alabama%2520Shakes_1_1_1595867699.jpg?itok=SBbMPUnz
623	Earned It (Fifty Shades Of Grey)	The Weeknd	The Weeknd	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BWeeknd/The%2520Weeknd_1_1_1596247865.jpg?itok=rjKyI9uH
624	Little Ghetto Boy	Lalah Hathaway	Lalah Hathaway	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalah%2BHathaway/Lalah%2520Hathaway_1_1_1588264727.jpg?itok=xEiTnDJS
625	Really Love	D'Angelo, Gina Figueroa & Kendra Foster, songwriters (D'Angelo And The Vanguard)	D'Angelo, Gina Figueroa & Kendra Foster, songwriters (D'Angelo And The Vanguard)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/D%2527Angelo/D%2527Angelo_1_1_1598956250.jpg?itok=6v-IaL_V
626	Beauty Behind The Madness	The Weeknd	Carlo "Illangelo" Montagnese & The Weeknd, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BWeeknd/The%2520Weeknd_1_1_1596247865.jpg?itok=rjKyI9uH
627	Black Messiah	D'Angelo And The Vanguard	D'Angelo And The Vanguard	
628	Alright	Kendrick Lamar	Kendrick Lamar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
629	These Walls	Kendrick Lamar Featuring Bilal, Anna Wise & Thundercat	Kendrick Lamar Featuring Bilal, Anna Wise & Thundercat	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
630	To Pimp A Butterfly	Kendrick Lamar	Kendrick Lamar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
631	Traveller	Chris Stapleton	Chris Stapleton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BStapleton/Chris%2520Stapleton_1_1_1581551781.jpg?itok=ud0xLx64
632	Girl Crush	Little Big Town	Little Big Town	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Little%2BBig%2BTown/Little%2520Big%2520Town_1_1_1595861656.jpg?itok=iuWsqCuA
633	Grace	Paul Avgerinos	Paul Avgerinos, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BAvgerinos/Paul%2520Avgerinos_1_1_1581564584.jpg?itok=Ch-FHqPA
634	Cherokee	Christian McBride, soloist	Christian McBride, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christian%2BMcBride/Christian%2520McBride_1_1_1578387063.jpg?itok=3giAcQ-M
635	For One To Love	Cécile McLorin Salvant	Al Pryor, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/C%25C3%25A9cile%2BMcLorin%2BSalvant/Cecile%2520McLorin%2520Salvant_1_1_1588264786.jpg?itok=ZI5BvUzC
636	Past Present	John Scofield	John Scofield, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BScofield/John%2520Scofield_1_1_1581553699.jpg?itok=N7hmZoJs
637	The Thompson Fields	Maria Schneider Orchestra	Ryan Truesdell, producer	
638	Made In Brazil	Eliane Elias	Eliane Elias, Marc Johnson & Steve Rodby, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BJohnson/Marc%2520Johnson_1_1_1581614461.jpg?itok=doXR4z91
639	Wanna Be Happy?	Kirk Franklin; Kirk Franklin, songwriter	Kirk Franklin; Kirk Franklin, songwriter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
640	Holy Spirit	Francesca Battistelli	Francesca Battistelli	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Francesca%2BBattistelli/Francesca%2520Battistelli_1_1_1581551740.jpg?itok=vBRzP8qu
641	Covered: Alive In Asia [Live]	Israel & NewBreed	Chris Baker, Kevin Camp & Aaron Lindsey, producers; Danny Duncan & Henry Seeley, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Israel%2B%2526%2BNew%2BBreed/Israel%2520%2526%2520New%2520Breed_1_1_1597750205.jpg?itok=boSpwjL6
642	This Is Not A Test	Tobymac	David Garcia, Christopher Stevens & Tobymac, producers; Bryan Fowler, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TobyMac/TobyMac_1_1_1598306051.jpg?itok=SpVwnS-G
643	Still Rockin' My Soul	The Fairfield Four	Lee Olsen & The Fairfield Four (Levert Allison, Bobbye Sherrell, Larrice Byrd, Sr. & Joe Thompson), producers; Brandon Perdue, engineer/mixer	
644	A Quien Quiera Escuchar  (Deluxe Edition)	Ricky Martin	Julio Reyes Copello, producer; Luis Barrera Jr., Julio Reyes Copello, Javier Garza, Ricardo López Laliinde, Enrique Larreal & Carlos Fernando Lopez, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BMartin/Ricky%2520Martin_1_1_1596247673.jpg?itok=QYE1feQo
645	Hasta La Raíz	Natalia Lafourcade	Natalia Lafourcade, producer; Andrés Borda, Eduardo Del Águila, Alan Ortiz Grande, Demián Nava, Alan Saucedo & Sebastián Schunt, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalia%2BLafourcade/Natalia%2520Lafourcade_1_1_1581552142.jpg?itok=W0An9G1b
646	Dale	Pitbull	José C. Garcia & Jorge Gomez, producers; Al Burna, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pitbull/Pitbull_1_1_1591238947.jpg?itok=EuYMblF3
647	Realidades - Deluxe Edition	Los Tigres Del Norte	Los Tigres Del Norte, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
648	Son De Panamá	Rubén Blades Con Roberto Delgado & Orquesta	Robert Delgado, producer; Pablo Governatori & Ignacio "Nacho" Molina, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
649	See That My Grave Is Kept Clean	Mavis Staples	Mavis Staples	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mavis%2BStaples/Mavis%2520Staples_1_1_1575368361.jpg?itok=P5iWm9I5
650	24 Frames	Jason Isbell, songwriter (Jason Isbell)	Jason Isbell, songwriter (Jason Isbell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BIsbell/Jason%2520Isbell_1_1_1596138781.jpg?itok=SFaQvVti
651	Something More Than Free	Jason Isbell	Dave Cobb, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BIsbell/Jason%2520Isbell_1_1_1596138781.jpg?itok=SFaQvVti
652	The Muscle Shoals Recordings	The Steeldrivers	The Steeldrivers, producer	
653	Born To Play Guitar	Buddy Guy	Tom Hambridge, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
654	Béla Fleck And Abigail Washburn	Béla Fleck & Abigail Washburn	Béla Fleck & Abigail Washburn, producers; Richard Battaglia & Béla Fleck, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
655	Go Go Juice	Jon Cleary	Jon Cleary & John Porter, producers; Tony Daigle, Mike Dorsey & John Porter, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jon%2BCleary/Jon%2520Cleary_1_1_1582885979.jpg?itok=RP8lT8sj
656	Strictly Roots	Morgan Heritage	Morgan Heritage, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Morgan%2BHeritage/Morgan%2520Heritage_1_1_1581551744.jpg?itok=VdZIZEjP
657	Sings	Angelique Kidjo	Jean Hébrail & Angelique Kidjo, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ang%25C3%25A9lique%2BKidjo/Ang%25C3%25A9lique%2520Kidjo_1_1_1598366948.jpg?itok=wGfBf5NX
658	Home	Tim Kubart	Dominic Fallacaro, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tim%2BKubart/Tim%2520Kubart_1_1_1581555964.jpg?itok=jbQr0N9J
659	A Full Life: Reflections at Ninety	Jimmy Carter	Elisa Shokoff, producer	
660	Live At Madison Square Garden	Louis C.K.	Dave Becky, Mike Berkowitz & M. Blair Breard, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Louis%2BC.K./Louis%2520C.K._1_1_1597163920.jpg?itok=C8o_tP1T
661	Hamilton	Daveed Diggs, Renée Elise Goldsberry, Jonathan Groff, Christopher Jackson, Jasmine Cephas Jones, Leslie Odom, Jr., Lin-Manuel Miranda, Okieriete Onaodowan, Anthony Ramos & Phillipa Soo, principal soloists; Lin-Manuel Miranda, composer & lyricist; Alex Lacamoire, Lin-Manuel Miranda, Bill Sherman, Ahmir Thompson & Tarik Trotter, producers; Tim Latham & Derik Lee, engineers (Original Broadway Cast)	Daveed Diggs, Renée Elise Goldsberry, Jonathan Groff, Christopher Jackson, Jasmine Cephas Jones, Leslie Odom, Jr., Lin-Manuel Miranda, Okieriete Onaodowan, Anthony Ramos & Phillipa Soo, principal soloists; Lin-Manuel Miranda, composer & lyricist; Alex Lacamoire, Lin-Manuel Miranda, Bill Sherman, Ahmir Thompson & Tarik Trotter, producers; Tim Latham & Derik Lee, engineers (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daveed%2BDiggs/Daveed%2520Diggs_1_1_1581629099.jpg?itok=D6A_pMXY
662	Glen Campbell: I'll Be Me	(Various Artists)	Julian Raymond, compilation producer; Jeff Pollack, music supervisor	
663	Birdman	Antonio Sanchez, composer; Alejandro González Iñárritu & Antonio Sanchez, producers (Antonio Sanchez)	Antonio Sanchez, composer; Alejandro González Iñárritu & Antonio Sanchez, producers (Antonio Sanchez)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Antonio%2BSanchez/Antonio%2520S%25C3%25A1nchez_1_1_1581554940.jpg?itok=Cl-Z_Df_
664	Glory	Lonnie Lynn, Che Smith & John Stephens, songwriters (Common & John Legend)	Lonnie Lynn, Che Smith & John Stephens, songwriters (Common & John Legend)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Common/Common_1_1_1598532469.jpg?itok=HGe5yznm
665	The Afro Latin Jazz Suite	Arturo O'Farrill, composer (Arturo O'Farrill & The Afro Latin Jazz Orchestra Featuring Rudresh Mahanthappa)	Arturo O'Farrill, composer (Arturo O'Farrill & The Afro Latin Jazz Orchestra Featuring Rudresh Mahanthappa)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/arturoofarrill-spotlight.png?itok=I8W2h2tn
666	Dance Of The Sugar Plum Fairy	Ben Bram & Pentatonix (Mitch Grassi, Scott Hoying, Avi Kaplan, Kirstin Maldonado & Kevin Olusola), arrangers (Pentatonix)	Ben Bram & Pentatonix (Mitch Grassi, Scott Hoying, Avi Kaplan, Kirstin Maldonado & Kevin Olusola), arrangers (Pentatonix)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pentatonix/Pentatonix_1_1_1578384529.jpg?itok=jiP1yB0m
1251	Here's That Rainy Day	Nan Schwartz, arranger (Natalie Cole)	Nan Schwartz, arranger (Natalie Cole)	
667	Sue (Or In A Season Of Crime)	Maria Schneider, arranger (David Bowie)	Maria Schneider, arranger (David Bowie)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maria%2BSchneider/Maria%2520Schneider_1_1_1581646132.jpg?itok=jf9f6nh5
668	Still The King: Celebrating The Music Of Bob Wills And His Texas Playboys	Sarah Dodds, Shauna Dodds & Dick Reeves, art directors (Asleep At The Wheel)	Sarah Dodds, Shauna Dodds & Dick Reeves, art directors (Asleep At The Wheel)	
669	The Rise & Fall Of Paramount Records, Volume Two (1928-32)	Susan Archie, Dean Blackwood & Jack White, art directors (Various Artists)	Susan Archie, Dean Blackwood & Jack White, art directors (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
670	Love Has Many Faces: A Quartet, A Ballet, Waiting To Be Danced	Joni Mitchell, album notes writer (Joni Mitchell)	Joni Mitchell, album notes writer (Joni Mitchell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
671	The Basement Tapes Complete: The Bootleg Series Vol. 11	Steve Berkowitz, Jan Haust & Jeff Rosen, compilation producers; Peter J. Moore & Mark Wilder, mastering engineers (Bob Dylan And The Band)	Steve Berkowitz, Jan Haust & Jeff Rosen, compilation producers; Peter J. Moore & Mark Wilder, mastering engineers (Bob Dylan And The Band)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BMoore/Peter%2520Moore_1_1_1581562460.jpg?itok=9HeFHPdk
672	Jeff Bhasker	Jeff Bhasker		
673	Uptown Funk (Dave Audé Remix)	Dave Audé, remixer (Mark Ronson Featuring Bruno Mars)	Dave Audé, remixer (Mark Ronson Featuring Bruno Mars)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BAud%25C3%25A9/Dave%2520Aud%25C3%25A9_1_1_1575373429.jpg?itok=7xUOXIjq
674	Amused To Death	James Guthrie, surround mix engineer; James Guthrie & Joel Plante, surround mastering engineers; James Guthrie, surround producer (Roger Waters)	James Guthrie, surround mix engineer; James Guthrie & Joel Plante, surround mastering engineers; James Guthrie, surround producer (Roger Waters)	
675	Ask Your Mama	Leslie Ann Jones, John Kilgore, Nora Kroll-Rosenbaum & Justin Merrill, engineers; Patricia Sullivan, mastering engineer (George Manahan & San Francisco Ballet Orchestra)	Leslie Ann Jones, John Kilgore, Nora Kroll-Rosenbaum & Justin Merrill, engineers; Patricia Sullivan, mastering engineer (George Manahan & San Francisco Ballet Orchestra)	
676	Judith Sherman	Judith Sherman		
677	Shostakovich: Under Stalin's Shadow - Symphony No. 10	Andris Nelsons, conductor; Shawn Murphy, producer; Nick Squire, engineer (Boston Symphony Orchestra)	Andris Nelsons, conductor; Shawn Murphy, producer; Nick Squire, engineer (Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andris%2BNelsons/Andris%2520Nelsons_1_1_1581554184.jpg?itok=kDCUo-Mi
678	Ravel: L'Enfant Et Les Sortilèges; Shéhérazade	Seiji Ozawa, conductor; Dominic Fyfe, producer; Isabel Leonard, soloist; Jonathan Stokes, engineer (SKF Matsumoto Children's Chorus & SKF Matsumoto Chorus; Saito Kinen Orchestra)	Seiji Ozawa, conductor; Dominic Fyfe, producer; Isabel Leonard, soloist; Jonathan Stokes, engineer (SKF Matsumoto Children's Chorus & SKF Matsumoto Chorus; Saito Kinen Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Seiji%2BOzawa/Seiji%2520Ozawa_1_1_1597181018.jpg?itok=yQySNxlD
679	Rachmaninoff: All-Night Vigil	Charles Bruffy, conductor; Blanton Alspaugh, producer; Byeong Joon Hwang & John Newton, engineers (Paul Davidson, Frank Fleschner, Toby Vaughn Kidd, Bryan Pinkall, Julia Scozzafava, Bryan Taylor & Joseph Warner; Kansas City Chorale & Phoenix Chorale)	Charles Bruffy, conductor; Blanton Alspaugh, producer; Byeong Joon Hwang & John Newton, engineers (Paul Davidson, Frank Fleschner, Toby Vaughn Kidd, Bryan Pinkall, Julia Scozzafava, Bryan Taylor & Joseph Warner; Kansas City Chorale & Phoenix Chorale)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charles%2BBruffy/Charles%2520Bruffy_1_1_1581560686.jpg?itok=AIVsE7-Q
680	Filament	Bryce Dessner, producer; Jonathan Low, engineer	Bryce Dessner, producer; Jonathan Low, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bryce%2BDessner/Bryce%2520Dessner_1_1_1575358971.jpg?itok=hemnhoGx
681	Dutilleux: Violin Concerto, L'Arbre Des Songes	Augustin Hadelich; Ludovic Morlot, conductor (Seattle Symphony)	Augustin Hadelich; Ludovic Morlot, conductor (Seattle Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Augustin%2BHadelich/Augustin%2520Hadelich_1_1_1582884002.jpg?itok=bywSWJM7
682	Joyce & Tony - Live From Wigmore Hall	Joyce DiDonato, soloist; Stephen Johns, producer; Jonathan Allen, engineer	Joyce DiDonato, soloist; Stephen Johns, producer; Jonathan Allen, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joyce%2BDiDonato/Joyce%2520DiDonato_1_1_1581621554.jpg?itok=d96fn4ix
683	Paulus: Three Places Of Enlightenment; Veil Of Tears & Grand Concerto	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer (Giancarlo Guerrero)	Giancarlo Guerrero, conductor; Tim Handley, producer; Gary Call, engineer (Giancarlo Guerrero)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giancarlo%2BGuerrero/Giancarlo%2520Guerrero_1_1_1581610466.jpg?itok=IwpSCWeW
684	Paulus: Prayers & Remembrances	Stephen Paulus, composer	Stephen Paulus, composer	
685	Bad Blood	Taylor Swift Featuring Kendrick Lamar	Joseph Kahn, video director; Ron Mohrhoff, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
686	Amy	Amy Winehouse	Asif Kapadia, video director; James Gay-Rees, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BWinehouse/Amy%2520Winehouse_1_1_1578384847.jpg?itok=E0x96uqF
687	Stay With Me (Darkchild Version)	Sam Smith	Steve Fitzmaurice, Rodney Jerkins & Jimmy Napes, producers; Matthew Champlin, Steve Fitzmaurice, Jimmy Napes & Steve Price, engineers/mixers; Tom Coyne, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/sam_smithrotycrop.jpg?itok=CbuVXG4s
688	Morning Phase	Beck	Beck Hansen, producer; Drew Brown, Tom Elmhirst, David Greenbaum, Cole Marsden Greif-Neill, Florian Lagatta, Robbie Nelson, Darrell Thorp, Cassidy Turbin & Joe Visciano, engineers/mixers; Bob Ludwig, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/beck.jpg?itok=cY2Oix_7
689	Sam Smith	Sam Smith		https://www.grammy.com/sites/com/files/styles/artist_circle/public/sam-smith-03.jpg?itok=QIBIo8MW
690	Happy (Live)	Pharrell Williams	Pharrell Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pharrell%2BWilliams/Pharrell%2520Williams_1_1_1581551862.jpg?itok=3OIcxGsf
691	Say Something	A Great Big World With Christina Aguilera	A Great Big World With Christina Aguilera	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/A%2BGreat%2BBig%2BWorld/A%2520Great%2520Big%2520World_1_1_1581551755.jpg?itok=z6IZ-__V
692	Cheek To Cheek	Tony Bennett & Lady Gaga	Dae Bennett, producer; Dae Bennett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
693	In The Lonely Hour	Sam Smith	Jimmy Napes, producer; Steve Fitzmaurice, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sam%2BSmith/SAM%2520SMITH_1_1_1581552016.jpg?itok=vMZGzdV8
694	Rather Be	Clean Bandit Featuring Jess Glynne	Grace Chatto & Jack Patterson, producers; Wez Clarke & Jack Patterson, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Clean%2BBandit/Clean%2520Bandit_1_1_1575663970.jpg?itok=-UNleZ3w
695	Syro	Aphex Twin	Aphex Twin, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aphex%2BTwin/Aphex%2520Twin_1_1_1578384699.jpg?itok=S8QMd7dQ
696	Bass & Mandolin	Chris Thile & Edgar Meyer	Edgar Meyer & Chris Thile, producers; Richard King & Dave Sinko, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BThile/Chris%2520Thile_1_1_1581554174.jpg?itok=yxzYyhL9
697	Lazaretto	Jack White	Jack White	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
698	The Last In Line	Tenacious D	Tenacious D	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tenacious%2BD/Tenacious%2520D_1_1_1581552179.jpg?itok=Xb-gczLm
699	Ain't It Fun	Hayley Williams & Taylor York, songwriters (Paramore)	Hayley Williams & Taylor York, songwriters (Paramore)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hayley%2BWilliams/Hayley%2520Williams_1_1_1596100322.jpg?itok=jTrmpBQP
700	St. Vincent	St. Vincent	John Congleton, producer; John Congleton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/St.%2BVincent/St.%2520Vincent_1_1_1578384660.jpg?itok=donOOLOG
701	Drunk In Love	Beyoncé Featuring Jay Z	Beyoncé Featuring Jay Z	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
702	Jesus Children	Robert Glasper Experiment Featuring Lalah Hathaway & Malcolm-Jamal Warner	Robert Glasper Experiment Featuring Lalah Hathaway & Malcolm-Jamal Warner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalah%2BHathaway/Lalah%2520Hathaway_1_1_1588264727.jpg?itok=xEiTnDJS
703	Girl	Pharrell Williams	Pharrell Williams, producer; Andrew Coleman, Mick Guzauski & Mike Larson, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pharrell%2BWilliams/Pharrell%2520Williams_1_1_1581551862.jpg?itok=3OIcxGsf
704	Love, Marriage & Divorce	Toni Braxton & Babyface	Babyface, producer; Paul Boutin, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
705	I	Kendrick Lamar	Kendrick Lamar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kendrick%2BLamar/Kendrick%2520Lamar_1_1_1596249253.jpg?itok=yNvRDP1Y
706	The Monster	Eminem Featuring Rihanna	Eminem Featuring Rihanna	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
707	The Marshall Mathers LP2	Eminem	Tony Campana, Joe Strange & Mike Strange, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
708	Something In The Water	Carrie Underwood	Carrie Underwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
709	Gentle On My Mind	The Band Perry	The Band Perry	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBand%2BPerry/The%2520Band%2520Perry_1_1_1579680598.jpg?itok=mhbVCZsw
710	I'm Not Gonna Miss You	Glen Campbell & Julian Raymond, songwriters (Glen Campbell)	Glen Campbell & Julian Raymond, songwriters (Glen Campbell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glen%2BCampbell/Glen%2520Campbell_1_1_1598615569.jpg?itok=n3Jc20ht
711	Platinum	Miranda Lambert	Chuck Ainlay, Frank Liddell & Glenn Worf, producers; Chuck Ainlay, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miranda%2BLambert/Miranda%2520Lambert_1_1_1594893267.jpg?itok=7i4nOIkz
712	Winds Of Samsara	Ricky Kej & Wouter Kellerman	Ricky Kej & Wouter Kellerman, producers; Ricky Kej & Wouter Kellerman, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BKej/Ricky%2520Kej_1_1_1581565238.jpg?itok=2Vlb38yZ
713	Fingerprints	Chick Corea, soloist	Chick Corea, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
714	Beautiful Life	Dianne Reeves	Terri Lyne Carrington, producer; Jeremy Loucas, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terri%2BLyne%2BCarrington/Terri%2520Lyne%2520Carrington_1_1_1581553550.jpg?itok=fqlbhRm1
715	Trilogy	Chick Corea Trio	Bernie Kirsh & Brian Vibberts, engineers/mixers	
716	Life In The Bubble	Gordon Goodwin's Big Phat Band	Gregg Field & Dan Savant, producers; Gregg Field & Tommy Vicari, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gordon%2BGoodwin%2527s%2BBig%2BPhat%2BBand/Gordon%2520Goodwin%2527s%2520Big%2520Phat%2520Band_1_1_1581556730.jpg?itok=IuNbreY2
717	The Offense Of The Drum	Arturo O'Farrill & The Afro Latin Jazz Orchestra	Todd Barkan, Eric Oberstein & Kabir Sehgal, producers; Katherine Miller, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Arturo%2BO%2527Farrill%2B%2526%2BThe%2BAfro%2BLatin%2BJazz%2BOrchestra/Arturo%2520O%2527Farrill%2520%2526%2520the%2520Afro%2520Latin%2520Jazz%2520Orchestra_1_1_1581554698.jpg?itok=z1qt4IDc
718	No Greater Love	Smokie Norful; Aaron W. Lindsey & Smokie Norful, songwriters	Smokie Norful; Aaron W. Lindsey & Smokie Norful, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/smokie_norful_spotlight_463020002.png?itok=E52zQaiJ
744	New York Tendaberry	Billy Childs, arranger (Billy Childs Featuring Renée Fleming & Yo-Yo Ma)	Billy Childs, arranger (Billy Childs Featuring Renée Fleming & Yo-Yo Ma)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BChilds/Billy%2520Childs_1_1_1581647571.jpg?itok=fGAL4PEd
719	Messengers	Lecrae Featuring For King & Country; Torrance Esmond, Ran Jackson, Ricky Jackson, Kenneth Chris Mackey, Lecrae Moore, Joseph Prielozny, Joel Smallbone & Luke Smallbone, songwriters	Lecrae Featuring For King & Country; Torrance Esmond, Ran Jackson, Ricky Jackson, Kenneth Chris Mackey, Lecrae Moore, Joseph Prielozny, Joel Smallbone & Luke Smallbone, songwriters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lecrae/Lecrae_1_1_1597148791.jpg?itok=knCfRJ89
720	Help	Erica Campbell	Warryn Campbell, producer; Rob Chiarelli & Larry Whitt, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erica%2BCampbell/Erica%2520Campbell_1_1_1581554605.jpg?itok=dl6YQhvy
721	Run Wild. Live Free. Love Strong.	For King & Country	For King & Country (Joel Smallbone & Luke Smallbone), producers; Ainslie Grosser & Mike X O’Connor, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/For%2BKing%2B%2526%2BCountry/for%2520King%2520%2526%2520Country_1_1_1594893266.jpg?itok=vbdVBPd1
722	Shine For All The People	Mike Farris	Mike Farris, producer; Chad Brown, Mike Farris & Ross Gower, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mike%2BFarris/Mike%2520Farris_1_1_1581553380.jpg?itok=Xifs16op
723	Tangos	Rubén Blades	Carlos Franzetti, producer; Chris Sulit, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
724	Multiviral	Calle 13	Calle 13 (Eduardo Cabra & René Pérez), producers; John Blais & Michael Brauer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/calle13-spotlight-130489913.png?itok=J7RRDmDb
725	Mano A Mano - Tangos A La Manera De Vicente Fernández	Vicente Fernández	Vicente Fernández, producer; Alejandro Ramírez Espinal & Javier Ramírez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vicente%2BFernandez/Vicente%2520Fernandez_1_1_1592222005.jpg?itok=D_3nB9FL
726	Más + Corazón Profundo	Carlos Vives	Andrés Castro & Carlos Vives, producers; Edgar Barrera, Scott Canto, Andrés Castro, Francisco Díaz, Javier Garza, Guikanko Gomez, Shafik Palis & Curt Schneider, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BVives/Carlos%2520Vives_1_1_1596812937.jpg?itok=PvqhprQU
727	A Feather's Not A Bird	Rosanne Cash	Rosanne Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rosanne%2BCash/Rosanne%2520Cash_1_1_1588845547.jpg?itok=mmORB3u0
728	The River & The Thread	Rosanne Cash	Rick De Pofi & John Leventhal, producers; Rick De Pofi & John Leventhal, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rosanne%2BCash/Rosanne%2520Cash_1_1_1588845547.jpg?itok=mmORB3u0
729	The Earls Of Leicester	The Earls Of Leicester	Bil VornDick, engineer/mixer	
730	Step Back	Johnny Winter	Paul Nelson, producer; Mike "Metal" Goldberg & Brendan Muldowney, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BWinter/Johnny%2520Winter_1_1_1581555569.jpg?itok=jqEyY780
731	Remedy	Old Crow Medicine Show	Ted Hutt, producer; Ted Hutt & Ryan Mall, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Old%2BCrow%2BMedicine%2BShow/Old%2520Crow%2520Medicine%2520Show_1_1_1595937949.jpg?itok=sZQeI5gE
732	The Legacy	Jo-EL Sonnier	Jo-EL Sonnier & Shane Theriot, producers; Tony Daigle, Jo-EL Sonnier & Shane Theriot, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jo-El%2BSonnier/Jo-EL%2520Sonnier_1_1_1581563505.jpg?itok=IBupX_x_
733	Fly Rasta	Ziggy Marley	Ziggy Marley, producer; Isha Erskine & Andrew Scheps, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
734	Eve	Angelique Kidjo	Patrick Dillett, producer; Michael Brauer, Patrick Dillett & Laurent Dupuy, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ang%25C3%25A9lique%2BKidjo/Ang%25C3%25A9lique%2520Kidjo_1_1_1598366948.jpg?itok=wGfBf5NX
735	I Am Malala: How One Girl Stood Up For Education And Changed The World (Malala Yousafzai)	Neela Vaswani	Cheryl Smith, producer; Jared O'Connell, engineer/mixer	
736	Diary Of A Mad Diva	Joan Rivers	Diane Mckiernan, producer; Nikki Banks Maurer & Jared O'Connell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joan%2BRivers/Joan%2520Rivers_1_1_1581553827.jpg?itok=AF_W0yHj
737	Mandatory Fun	Weird Al Yankovic	Weird Al Yankovic, producer; Rafael Serrano, Brian Warwick & Dave Way, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/weird_al_yankovic_spotlight_510334176.png?itok=u7SwDHr0
738	Beautiful: The Carole King Musical	Jessie Mueller, principal soloist; Jason Howland, Steve Sidwell & Billy Jay Stein, producers; Joel Moss, engineer; Jason Howland & Billy Jay Stein, engineers/mixers (Original Broadway Cast)	Jessie Mueller, principal soloist; Jason Howland, Steve Sidwell & Billy Jay Stein, producers; Joel Moss, engineer; Jason Howland & Billy Jay Stein, engineers/mixers (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BSidwell/Steve%2520Sidwell_1_1_1581613069.jpg?itok=WKaqN-FY
739	Frozen	(Various Artists)	Kristen Anderson-Lopez, Robert Lopez, Tom MacDougall & Chris Montan, compilation producers; David Boucher, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBoucher/David%2520Boucher_1_1_1581619732.jpg?itok=hREVW5Z4
740	The Grand Budapest Hotel	Alexandre Desplat, composer; Wes Anderson & Randall Poster, producers; Simon Rhodes, engineer/mixer (Alexandre Desplat)	Alexandre Desplat, composer; Wes Anderson & Randall Poster, producers; Simon Rhodes, engineer/mixer (Alexandre Desplat)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alexandre%2BDesplat/Alexandre%2520Desplat_1_1_1581615260.jpg?itok=ZwlCDQaj
741	Let It Go	Kristen Anderson-Lopez & Robert Lopez, songwriters (Idina Menzel)	Kristen Anderson-Lopez & Robert Lopez, songwriters (Idina Menzel)	
742	The Book Thief	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
743	Daft Punk	Ben Bram & Pentatonix (Mitch Grassi, Scott Hoying, Avi Kaplan, Kirstin Maldonado & Kevin Olusola), arrangers (Pentatonix)	Ben Bram & Pentatonix (Mitch Grassi, Scott Hoying, Avi Kaplan, Kirstin Maldonado & Kevin Olusola), arrangers (Pentatonix)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pentatonix/Pentatonix_1_1_1578384529.jpg?itok=jiP1yB0m
745	Lightning Bolt	Jeff Ament, Don Pendleton, Joe Spix & Jerome Turner, art directors (Pearl Jam)	Jeff Ament, Don Pendleton, Joe Spix & Jerome Turner, art directors (Pearl Jam)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BPendleton/Don%2520Pendleton_1_1_1581559828.jpg?itok=uSS-ULd8
746	The Rise & Fall Of Paramount Records, Volume One (1917-27)	Susan Archie, Dean Blackwood & Jack White, art directors (Various Artists)	Susan Archie, Dean Blackwood & Jack White, art directors (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
747	Offering: Live At Temple University	Ashley Kahn, album notes writer (John Coltrane)	Ashley Kahn, album notes writer (John Coltrane)	
748	The Garden Spot Programs, 1950	Colin Escott & Cheryl Pawelski, compilation producers; Michael Graves, mastering engineer (Hank Williams)	Colin Escott & Cheryl Pawelski, compilation producers; Michael Graves, mastering engineer (Hank Williams)	
749	Max Martin	Max Martin		
750	All Of Me (Tiësto's Birthday Treatment Remix)	Tijs Michiel Verwest, remixer (John Legend)	Tijs Michiel Verwest, remixer (John Legend)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ti%25C3%25ABsto/Ti%25C3%25ABsto_1_1_1591112914.jpg?itok=70zjqzsD
751	Beyoncé	Elliot Scheiner, surround mix engineer; Bob Ludwig, surround mastering engineer; Beyoncé Knowles, surround producer (Beyoncé)	Elliot Scheiner, surround mix engineer; Bob Ludwig, surround mastering engineer; Beyoncé Knowles, surround producer (Beyoncé)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
752	Vaughan Williams: Dona Nobis Pacem; Symphony No. 4; The Lark Ascending	Michael Bishop, engineer; Michael Bishop, mastering engineer (Robert Spano, Norman Mackenzie, Atlanta Symphony Orchestra & Chorus)	Michael Bishop, engineer; Michael Bishop, mastering engineer (Robert Spano, Norman Mackenzie, Atlanta Symphony Orchestra & Chorus)	
753	Adams, John: City Noir	David Robertson, conductor; Friedemann Engelbrecht, producer; Richard King, engineer/mixer (St. Louis Symphony)	David Robertson, conductor; Friedemann Engelbrecht, producer; Richard King, engineer/mixer (St. Louis Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BRobertson/David%2520Robertson_1_1_1581561400.jpg?itok=2SlzDDwY
754	Charpentier: La Descente D'Orphée Aux Enfers	Paul O'Dette & Stephen Stubbs, conductors; Aaron Sheehan, soloist; Siegbert Ernst, engineer/mixer (Boston Early Music Festival Vocal Ensemble; Boston Early Music Festival Chamber Ensemble)	Paul O'Dette & Stephen Stubbs, conductors; Aaron Sheehan, soloist; Siegbert Ernst, engineer/mixer (Boston Early Music Festival Vocal Ensemble; Boston Early Music Festival Chamber Ensemble)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BO%2527Dette/Paul%2520O%2527Dette_1_1_1581562301.jpg?itok=j12DLyxO
755	The Sacred Spirit Of Russia	Craig Hella Johnson, conductor; Robina G. Young, producer; Brad Michel, engineer/mixer (Conspirare)	Craig Hella Johnson, conductor; Robina G. Young, producer; Brad Michel, engineer/mixer (Conspirare)	
756	In 27 Pieces - The Hilary Hahn Encores	Hilary Hahn & Andreas K. Meyer, producers; Andreas K. Meyer & Julian Schwenker, engineers/mixers	Hilary Hahn & Andreas K. Meyer, producers; Andreas K. Meyer & Julian Schwenker, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hilary%2BHahn/Hilary%2520Hahn_1_1_1581554020.jpg?itok=M3S8uHN7
757	Play	Jason Vieaux; Alan Bise, producer; Bruce Egre, engineer/mixer	Jason Vieaux; Alan Bise, producer; Bruce Egre, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BVieaux/Jason%2520Vieaux_1_1_1581555349.jpg?itok=_bQzZR3e
758	Douce France	Anne Sofie Von Otter, soloist; Jean-Pierre Loisil, producer; Thomas Dappelo, engineer/mixer	Anne Sofie Von Otter, soloist; Jean-Pierre Loisil, producer; Thomas Dappelo, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne%2BSofie%2Bvon%2BOtter/Anne%2520Sofie%2520von%2520Otter_1_1_1575369208.jpg?itok=i21yabJU
759	Partch: Plectra & Percussion Dances	John Schneider, producer; John Baffa, engineer/mixer (Partch)	John Schneider, producer; John Baffa, engineer/mixer (Partch)	
760	Adams, John Luther: Become Ocean	John Luther Adams, composer	John Luther Adams, composer	
761	Happy	Pharrell Williams	We Are From LA (Pierre Dupaquier & Clement Durou), video directors; Kathleen Heffernan, Solal Micenmacher, Jett Steiger & Cedric Troadec, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pharrell%2BWilliams/Pharrell%2520Williams_1_1_1581551862.jpg?itok=3OIcxGsf
762	20 Feet From Stardom	Darlene Love, Merry Clayton, Lisa Fischer & Judith Hill	Morgan Neville, video director; Gil Friesen & Caitrin Rogers, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Darlene%2BLove/Darlene%2520Love_1_1_1581552073.jpg?itok=94T-9i74
763	Get Lucky	Daft Punk Featuring Pharrell Williams & Nile Rodgers	Thomas Bangalter & Guy-Manuel de Homem-Christo, producers; Peter Franco, Mick Guzauski, Florian Lagatta & Daniel Lerner, engineers/mixers; Antoine Chabert & Bob Ludwig, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/465384097_daft_punk_pharrell.jpg?itok=tZ0IzKSI
764	Random Access Memories	Daft Punk	Julian Casablancas, DJ Falcon, Todd Edwards, Chilly Gonzales, Giorgio Moroder, Panda Bear, Nile Rodgers, Paul Williams & Pharrell Williams, featured artists; Thomas Bangalter, Julian Casablancas, Guy-Manuel de Homem-Christo, DJ Falcon & Todd Edwards, producers; Peter Franco, Mick Guzauski, Florian Lagatta, Guillaume Le Braz & Daniel Lerner, engineers/mixers; Antoine Chabert & Bob Ludwig, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/465276899_daft_punk.jpg?itok=LnRBgTfq
765	Royals	Joel Little & Ella Yelich O'Connor, songwriters (Lorde)	Joel Little & Ella Yelich O'Connor, songwriters (Lorde)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/465349571_lorde.jpg?itok=gLxQIFZq
766	Macklemore & Ryan Lewis	Macklemore & Ryan Lewis		https://www.grammy.com/sites/com/files/styles/artist_circle/public/465350105_macklemore_ryan_lewis.jpg?itok=t2UEvhbo
767	Steppin' Out	Herb Alpert	Herb Alpert & Lani Hall, producers; Mick Guzauski, Hussain Jiffry & Alan Myerson, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herb%2BAlpert/Herb%2520Alpert_1_1_1581628867.jpg?itok=45UhbQPe
768	Unorthodox Jukebox	Bruno Mars	Philip Lawrence, Ari Levine & Bruno Mars, producers; Ari Levine & Manny Marroquin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruno%2BMars/Bruno%2520Mars_1_1_1578385368.jpg?itok=KhxnacRR
769	Clarity	Zedd Featuring Foxes	Zedd, producer; Zedd, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zedd/Zedd_1_1_1591112930.jpg?itok=LOy_jmk8
770	To Be Loved	Michael Bublé	Bob Rock, producer; Eric Helmkamp, Roger Monk & Bob Rock, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBubl%25C3%25A9/Michael%2520Bubl%25C3%25A9_1_1_1578385534.jpg?itok=QJp6bog2
771	Radioactive	Imagine Dragons	Imagine Dragons	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Imagine%2BDragons/Imagine%2520Dragons_1_1_1578384716.jpg?itok=FEcOP4PI
772	God Is Dead?	Black Sabbath	Black Sabbath	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BSabbath/Black%2520Sabbath_1_1_1575368312.jpg?itok=PBBosk01
773	Cut Me Some Slack	Dave Grohl, Paul McCartney, Krist Novoselic & Pat Smear, songwriters (Paul McCartney, Dave Grohl, Krist Novoselic, Pat Smear)	Dave Grohl, Paul McCartney, Krist Novoselic & Pat Smear, songwriters (Paul McCartney, Dave Grohl, Krist Novoselic, Pat Smear)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BGrohl/Dave%2520Grohl_1_1_1591113061.jpg?itok=hl8m1EhF
774	Celebration Day	Led Zeppelin	Dick Curruthers & Jim Parsons, producers; John Catlin, Alan Moulder & Tim Summerhayes, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Led%2BZeppelin/Led%2520Zeppelin_1_1_1581552172.jpg?itok=MFsZs-CU
775	Modern Vampires Of The City	Vampire Weekend	Ariel Rechtshaid, producer; Michael Harris, Ariel Rechtshaid, Nick Rowe & Dave Schiffman, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vampire%2BWeekend/Vampire%2520Weekend_1_1_1578387474.jpg?itok=mAj-5E-g
776	Something	Snarky Puppy With Lalah Hathaway	Snarky Puppy With Lalah Hathaway	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Snarky%2BPuppy/Snarky%2520Puppy_1_1_1575358554.jpg?itok=jpWrNGFf
777	Please Come Home	Gary Clark Jr.	Gary Clark Jr.	
778	Pusher Love Girl	James Fauntleroy, Jerome Harmon, Timothy Mosley & Justin Timberlake, songwriters (Justin Timberlake)	James Fauntleroy, Jerome Harmon, Timothy Mosley & Justin Timberlake, songwriters (Justin Timberlake)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BFauntleroy/James%2520Fauntleroy_1_1_1581557523.jpg?itok=_ub-XLB4
779	Unapologetic	Rihanna	Kuk Harrell, producer; Kuk Harrell, Manny Marroquin & Marcos Tovar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rihanna/Rihanna_1_1_1581552340.jpg?itok=0Uce4ss-
780	Girl On Fire	Alicia Keys	Alicia Keys, producer; Manny Marroquin & Ann Mincieli, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
781	Thrift Shop	Macklemore & Ryan Lewis Featuring Wanz	Macklemore & Ryan Lewis Featuring Wanz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/macklemoreryanlewis-spotlight-494207034.png?itok=RfwUsSy2
782	Holy Grail	Jay Z Featuring Justin Timberlake	Jay Z Featuring Justin Timberlake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
783	The Heist	Macklemore & Ryan Lewis	Macklemore & Ryan Lewis, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ryan%2BLewis/Ryan%2520Lewis_1_1_1581552314.jpg?itok=X87O4cva
784	Wagon Wheel	Darius Rucker	Darius Rucker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Darius%2BRucker/Darius%2520Rucker_1_1_1581552110.jpg?itok=X7crW5to
785	From This Valley	The Civil Wars	The Civil Wars	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BCivil%2BWars/The%2520Civil%2520Wars_1_1_1578385291.jpg?itok=m-YMTusi
786	Merry Go 'Round	Shane McAnally, Kacey Musgraves & Josh Osborne, songwriters (Kacey Musgraves)	Shane McAnally, Kacey Musgraves & Josh Osborne, songwriters (Kacey Musgraves)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shane%2BMcAnally/Shane%2520McAnally_1_1_1597164659.jpg?itok=TO5X2jQ0
787	Same Trailer Different Park	Kacey Musgraves	Luke Laird, Shane McAnally & Kacey Musgraves, producers; Charlie Brocco & Ryan Gore, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kacey%2BMusgraves/Kacey%2520Musgraves_1_1_1578384727.jpg?itok=OQQ3rnwH
788	Love's River	Laura Sullivan	Eric Sullivan, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Laura%2BSullivan/Laura%2520Sullivan_1_1_1581552651.jpg?itok=TFFR7I8L
789	Orbits	Wayne Shorter, soloist	Wayne Shorter, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
790	Liquid Spirit	Gregory Porter	Brian Bacchus, producer; Jay Newland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gregory%2BPorter/Gregory%2520Porter_1_1_1592251517.jpg?itok=eJd90TcH
791	Money Jungle: Provocative In Blue	Terri Lyne Carrington	Terri Lyne Carrington, producer; Jeremy Loucas & Mike Marciano, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terri%2BLyne%2BCarrington/Terri%2520Lyne%2520Carrington_1_1_1581553550.jpg?itok=fqlbhRm1
792	Night In Calisia	Randy Brecker, Włodek Pawlik Trio & Kalisz Philharmonic	Jacek Gawlowski, Leszek Kaminski & Jaroslaw Regulski, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BBrecker/Randy%2520Brecker_1_1_1575373868.jpg?itok=9QxyBydg
793	Song For Maura	Paquito D'Rivera And Trio Corrente	Brenda Feliciano & Jacques Figueras, producers; Carlos Akamine & Daniel Freiberg, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paquito%2BD%2527Rivera/Paquito%2520D%2527Rivera_1_1_1581554599.jpg?itok=QYgXlw4P
794	Break Every Chain [Live]	Tasha Cobbs	Tasha Cobbs	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tasha%2BCobbs/Tasha%2520Cobbs_1_1_1578515138.jpg?itok=uTbk9-DV
795	If He Did It Before... Same God [Live]	Tye Tribbett, songwriter (Tye Tribbett)	Tye Tribbett, songwriter (Tye Tribbett)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tye%2BTribbett/Tye%2520Tribbett_1_1_1597167626.jpg?itok=G6lNvA_y
796	Overcomer	David Garcia, Ben Glover & Christopher Stevens, songwriters (Mandisa)	David Garcia, Ben Glover & Christopher Stevens, songwriters (Mandisa)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BGarcia/David%2520Garcia_1_1_1581559894.jpg?itok=1PiIrg6e
797	Greater Than [Live]	Tye Tribbett	Brandon Jones & Tye Tribbett, producers; John Jaszcz, Ryan Moys & Brian Thomason, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tye%2BTribbett/Tye%2520Tribbett_1_1_1597167626.jpg?itok=G6lNvA_y
1252	Death Magnetic	Bruce Duckworth, Sarah Moffat & David Turner, art directors (Metallica)	Bruce Duckworth, Sarah Moffat & David Turner, art directors (Metallica)	
799	A Mi Manera	Mariachi Divas De Cindy Shea	Salvador "Chava" Sandoval, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mariachi%2BDivas%2BDe%2BCindy%2BShea/Mariachi%2520Divas%2520de%2520Cindy%2520Shea_1_1_1581557400.jpg?itok=wsySZtbw
800	Pacific Mambo Orchestra	Pacific Mambo Orchestra	Pacific Mambo Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pacific%2BMambo%2BOrchestra/Pacific%2520Mambo%2520Orchestra_1_1_1581555826.jpg?itok=DpcDa2o8
801	Love Has Come For You	Edie Brickell & Steve Martin, songwriters (Steve Martin & Edie Brickell)	Edie Brickell & Steve Martin, songwriters (Steve Martin & Edie Brickell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Edie%2BBrickell/Edie%2520Brickell_1_1_1581553609.jpg?itok=saV-bG1j
802	Old Yellow Moon	Emmylou Harris & Rodney Crowell	Brian Ahern, producer; Donivan Cowart, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
803	The Streets Of Baltimore	Del McCoury Band	David Ferguson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFerguson/David%2520Ferguson_1_1_1581556736.jpg?itok=fBUSqOeM
804	Get Up!	Ben Harper With Charlie Musselwhite	Chris Goldsmith, Sheldon Gomberg, Ben Harper, Jesse Ingalls, Jason Mozersky & Jordan Richardson, producers; Sheldon Gomberg, Jason Gossman, Bill Mims & Erich Talaba, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ben%2BHarper/Ben%2520Harper_1_1_1578385482.jpg?itok=KpbF7evm
805	My Favorite Picture Of You	Guy Clark	Shawn Camp, Guy Clark & Chris Latham, producers; Chris Latham, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Guy%2BClark/Guy%2520Clark_1_1_1595949076.jpg?itok=v0YCoZEQ
806	Dockside Sessions	Terrance Simien & The Zydeco Experience	George G. Receli, producer; David Farrell & George G. Receli, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terrance%2BSimien%2B%2526%2BThe%2BZydeco%2BExperience/Terrance%2520Simien%2520%2526%2520The%2520Zydeco%2520Experience_1_1_1581628613.jpg?itok=qSRlT1x4
807	Ziggy Marley In Concert	Ziggy Marley	Ziggy Marley, producer; Errol Brown & Fabian Cooke, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
808	Savor Flamenco	Gipsy Kings	René Ameline & James Farber, engineers/mixers	
809	Live: Singing For Peace Around The World	Ladysmith Black Mambazo	Mitch Goldstein, producer; Jon Picciano, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ladysmith%2BBlack%2BMambazo/Ladysmith%2520Black%2520Mambazo_1_1_1585147865.jpg?itok=GRzbQUPR
810	Throw A Penny In The Wishing Well	Jennifer Gasoi	Jennifer Gasoi, producer; Pierre Messier, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BGasoi/Jennifer%2520Gasoi_1_1_1581621103.jpg?itok=wdB_Vu4a
811	America Again: Re-becoming The Greatness We Never Weren't	Stephen Colbert	Aaron Cohen & Michele McGonigle, producers; Christine M. Farrell & Todd Kilponen, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aaron%2BCohen/Aaron%2520Cohen_1_1_1581555097.jpg?itok=l4d9TdSh
812	Calm Down Gurrl	Kathy Griffin	Don Worsham, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kathy%2BGriffin/Kathy%2520Griffin_1_1_1581555734.jpg?itok=9CDdg6St
813	Kinky Boots	Billy Porter & Stark Sands, principal soloists; Cyndi Lauper, composer & lyricist; Sammy James, Jr., Cyndi Lauper, Stephen Oremus & William Wittman, producers; Derik Lee & William Wittman, engineers/mixers (Original Broadway Cast With Stark Sands, Billy Porter & Others)	Billy Porter & Stark Sands, principal soloists; Cyndi Lauper, composer & lyricist; Sammy James, Jr., Cyndi Lauper, Stephen Oremus & William Wittman, producers; Derik Lee & William Wittman, engineers/mixers (Original Broadway Cast With Stark Sands, Billy Porter & Others)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BPorter/Billy%2520Porter_1_1_1588601119.jpg?itok=jlJ0kuGY
814	Sound City: Real To Reel	Dave Grohl & Various Artists	Butch Vig, compilation producer; James Brown, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BGrohl/Dave%2520Grohl_1_1_1591113061.jpg?itok=hl8m1EhF
815	Skyfall	Thomas Newman, composer; Bill Bernstein & Thomas Newman, producers; Simon Rhodes, engineer/mixer (Thomas Newman)	Thomas Newman, composer; Bill Bernstein & Thomas Newman, producers; Simon Rhodes, engineer/mixer (Thomas Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Simon%2BRhodes/Simon%2520Rhodes_1_1_1581558543.jpg?itok=391vo2Zd
816	Pensamientos For Solo Alto Saxophone And Chamber Orchestra	Clare Fischer, composer (The Clare Fischer Orchestra)	Clare Fischer, composer (The Clare Fischer Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Clare%2BFischer/Clare%2520Fischer_1_1_1581555346.jpg?itok=ex7_fznz
817	On Green Dolphin Street	Gordon Goodwin, arranger (Gordon Goodwin's Big Phat Band)	Gordon Goodwin, arranger (Gordon Goodwin's Big Phat Band)	
818	Swing Low	Gil Goldstein, arranger (Bobby McFerrin & Esperanza Spalding)	Gil Goldstein, arranger (Bobby McFerrin & Esperanza Spalding)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gil%2BGoldstein/Gil%2520Goldstein_1_1_1597164797.jpg?itok=OD6j6fbj
819	Long Night Moon	Sarah Dodds & Shauna Dodds, art directors (Reckless Kelly)	Sarah Dodds & Shauna Dodds, art directors (Reckless Kelly)	
820	Wings Over America (Deluxe Edition)	Simon Earith & James Musgrave, art directors (Paul McCartney And Wings)	Simon Earith & James Musgrave, art directors (Paul McCartney And Wings)	
821	Afro Blue Impressions (Remastered & Expanded)	Neil Tesser, album notes writer (John Coltrane)	Neil Tesser, album notes writer (John Coltrane)	
822	Charlie Is My Darling - Ireland 1965	Teri Landi, Andrew Loog Oldham & Steve Rosenthal, compilation producers; Bob Ludwig, mastering engineer (The Rolling Stones)	Teri Landi, Andrew Loog Oldham & Steve Rosenthal, compilation producers; Bob Ludwig, mastering engineer (The Rolling Stones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BLoog%2BOldham/Andrew%2520Loog%2520Oldham_1_1_1581559295.jpg?itok=ykulgY1n
823	The Complete Sussex And Columbia Albums	Leo Sacks, compilation producer; Joseph M. Palmaccio, Tom Ruff & Mark Wilder, mastering engineers (Bill Withers)	Leo Sacks, compilation producer; Joseph M. Palmaccio, Tom Ruff & Mark Wilder, mastering engineers (Bill Withers)	
824	Summertime Sadness (Cedric Gervais Remix)	Cedric Gervais, remixer (Lana Del Rey)	Cedric Gervais, remixer (Lana Del Rey)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cedric%2BGervais/Cedric%2520Gervais_1_1_1591113003.jpg?itok=L5o-OfxG
825	Live Kisses	Al Schmitt, surround mix engineer; Tommy LiPuma, surround producer (Paul McCartney)	Al Schmitt, surround mix engineer; Tommy LiPuma, surround producer (Paul McCartney)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
826	Winter Morning Walks	David Frost, Brian Losch & Tim Martyn, engineers; Tim Martyn, mastering engineer (Dawn Upshaw, Maria Schneider, Australian Chamber Orchestra & St. Paul Chamber Orchestra)	David Frost, Brian Losch & Tim Martyn, engineers; Tim Martyn, mastering engineer (Dawn Upshaw, Maria Schneider, Australian Chamber Orchestra & St. Paul Chamber Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFrost/David%2520Frost_1_1_1581561453.jpg?itok=SLeIAd03
827	Sibelius: Symphonies Nos. 1 & 4	Osmo Vänskä, conductor; Robert Suff, producer; Jens Braun, engineer (Minnesota Orchestra)	Osmo Vänskä, conductor; Robert Suff, producer; Jens Braun, engineer (Minnesota Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Osmo%2BV%25C3%25A4nsk%25C3%25A4/Van_1_1_1581552659.jpg?itok=ipQGWdox
828	Adès: The Tempest	Thomas Adès, conductor; Jay David Saks, producer; Simon Keenlyside, Isabel Leonard, Audrey Luna & Alan Oke, soloists (The Metropolitan Opera Chorus; The Metropolitan Opera Orchestra)	Thomas Adès, conductor; Jay David Saks, producer; Simon Keenlyside, Isabel Leonard, Audrey Luna & Alan Oke, soloists (The Metropolitan Opera Chorus; The Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thomas%2BAd%25C3%25A8s/Thomas%2520Ad%25C3%25A8s_1_1_1575374246.jpg?itok=W2lhpc2d
829	Pärt: Adam's Lament	Tõnu Kaljuste, conductor; Manfred Eicher, producer; Peter Laenger & Stephan Schellmann, engineers (Tui Hirv & Rainer Vilu; Estonian Philharmonic Chamber Choir, Latvian Radio Choir & Vox Clamantis; Sinfonietta Riga & Tallinn Chamber Orchestra)	Tõnu Kaljuste, conductor; Manfred Eicher, producer; Peter Laenger & Stephan Schellmann, engineers (Tui Hirv & Rainer Vilu; Estonian Philharmonic Chamber Choir, Latvian Radio Choir & Vox Clamantis; Sinfonietta Riga & Tallinn Chamber Orchestra)	
830	Roomful Of Teeth	Jesse Lewis, producer; Brad Wells, conductor; Roomful Of Teeth (Cameron Beauchamp, Dashon Burton, Martha Cluver, Eric Dudley, Estelí Gomez, Avery Griffin, Caroline Shaw & Virginia Warnken), ensembles; Mark Donahue & Jesse Lewis, engineers	Jesse Lewis, producer; Brad Wells, conductor; Roomful Of Teeth (Cameron Beauchamp, Dashon Burton, Martha Cluver, Eric Dudley, Estelí Gomez, Avery Griffin, Caroline Shaw & Virginia Warnken), ensembles; Mark Donahue & Jesse Lewis, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jesse%2BLewis/Jesse%2520Lewis_1_1_1581633813.jpg?itok=6K2b3BoZ
831	Corigliano: Conjurer - Concerto For Percussionist & String Orchestra	Evelyn Glennie; David Alan Miller, conductor; Silas Brown & John Corigliano, producers; Silas Brown & John Corigliano, engineers (Albany Symphony)	Evelyn Glennie; David Alan Miller, conductor; Silas Brown & John Corigliano, producers; Silas Brown & John Corigliano, engineers (Albany Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BMiller/David%2520Miller_1_1_1581560031.jpg?itok=JZGOIOrN
832	Hindemith: Violinkonzert; Symphonic Metamorphosis; Konzertmusik	Christoph Eschenbach, conductor; Dominik Blech & Björn Brigsne, engineers (Christoph Eschenbach)	Christoph Eschenbach, conductor; Dominik Blech & Björn Brigsne, engineers (Christoph Eschenbach)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christoph%2BEschenbach/Christoph%2520Eschenbach_1_1_1581623770.jpg?itok=zEO4eEcx
833	Schneider, Maria: Winter Morning Walks	Maria Schneider, composer	Maria Schneider, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maria%2BSchneider/Maria%2520Schneider_1_1_1581646132.jpg?itok=jf9f6nh5
834	Suit & Tie	Justin Timberlake Featuring Jay Z	David Fincher, video director; Timory King, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
835	Somebody That I Used To Know	Gotye Featuring Kimbra	Wally De Backer, producer; Wally De Backer & Francois Tetaz, engineers/mixers; William Bowden, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/161396233_gotye_kimbra.jpg?itok=4_A2Llji
836	Babel	Mumford & Sons	Markus Dravs, producer; Robin Baynton, Ruadhri Cushnan & Matt Lawrence, engineers/mixers; Bob Ludwig, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/161430627_mumford_sons.jpg?itok=OtgIihLL
837	We Are Young	Jack Antonoff, Jeff Bhasker, Andrew Dost & Nate Ruess, songwriters (Fun. Featuring Janelle Monáe)	Jack Antonoff, Jeff Bhasker, Andrew Dost & Nate Ruess, songwriters (Fun. Featuring Janelle Monáe)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/161433969_fun.jpg?itok=2EygTiQN
838	Fun.	Fun.		https://www.grammy.com/sites/com/files/styles/artist_circle/public/161430258_fun.jpg?itok=wlzC1Tlb
839	Set Fire To The Rain [Live]	Adele	Adele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adele/Adele_1_1_1584090130.jpg?itok=xlwW6t3a
840	Impressions	Chris Botti	Bobby Colomby, producer; Allen M. Sides, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BBotti/Chris%2520Botti_1_1_1576352517.jpg?itok=M284g-x6
841	Stronger	Kelly Clarkson	Serban Ghenea & John Hanes, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kelly%2BClarkson/Kelly%2520Clarkson_1_1_1594057028.jpg?itok=mEUBzOGC
842	Bangarang	Skrillex Featuring Sirah	Skrillex, producer; Skrillex, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
843	Kisses On The Bottom	Paul McCartney	Tommy LiPuma, producer; Al Schmitt, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
844	Lonely Boy	The Black Keys	The Black Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBlack%2BKeys/The%2520Black%2520Keys_1_1_1595949843.jpg?itok=Vg62uatp
845	Love Bites (So Do I)	Halestorm	Halestorm	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Halestorm/Halestorm_1_1_1578384760.jpg?itok=OTN872iv
846	El Camino	The Black Keys	Danger Mouse & The Black Keys (Dan Auerbach & Patrick Carney), producers; Tchad Blake & Kennie Takahashi, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBlack%2BKeys/The%2520Black%2520Keys_1_1_1595949843.jpg?itok=Vg62uatp
847	Making Mirrors	Gotye	Gotye, producer; Francois Tetaz, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gotye/Gotye_1_1_1581551867.jpg?itok=ZIc11ls8
848	Climax	Usher	Usher	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
850	Adorn	Miguel Jontel Pimentel, songwriter (Miguel)	Miguel Jontel Pimentel, songwriter (Miguel)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miguel/Miguel_1_1_1597398421.jpg?itok=kpatlQen
851	Channel Orange	Frank Ocean	James Ryan Ho, Frank Ocean & Om'mas Keith, producers; Jeff Ellis, James Ryan Ho & Frank Ocean, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BOcean/Frank%2520Ocean_1_1_1591113067.jpg?itok=_S0DP_A-
852	Black Radio	Robert Glasper Experiment	Keith "Qmillion" Lewis, engineer/mixer	
853	N****s In Paris	Jay-Z & Kanye West	Jay-Z & Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
854	No Church In The Wild	Jay-Z & Kanye West Featuring Frank Ocean & The-Dream	Jay-Z & Kanye West Featuring Frank Ocean & The-Dream	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
855	Take Care	Drake	Noah "40" Shebib, producer; Noel "Gadget" Campbell & Noah "40" Shebib, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Drake/Drake_1_1_1594066654.jpg?itok=SV_b8VHJ
856	Blown Away	Carrie Underwood	Carrie Underwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
857	Pontoon	Little Big Town	Little Big Town	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Little%2BBig%2BTown/Little%2520Big%2520Town_1_1_1595861656.jpg?itok=iuWsqCuA
858	Uncaged	Zac Brown Band	Keith Stegall, producer; John Kelton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zac%2BBrown%2BBand/Zac%2520Brown%2520Band_1_1_1578385252.jpg?itok=AkNCKYRK
859	Echoes Of Love	Omar Akram	Gregg Karukas, producer; Gregg Karukas, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Omar%2BAkram/omar%2520akram_1_1_1597154155.jpg?itok=g7ini2eQ
860	Hot House	Gary Burton & Chick Corea, soloists	Gary Burton & Chick Corea, soloists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BBurton/Gary%2520Burton_1_1_1581554709.jpg?itok=h13WeAyX
861	Radio Music Society	Esperanza Spalding	Esperanza Spalding, producer; Joe Ferla & Fernando Lodeiro, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Esperanza%2BSpalding/Esperanza%2520Spalding_1_1_1581552254.jpg?itok=5wdQbxbw
862	Unity Band	Pat Metheny Unity Band	James Farber & Pete Karam, engineers/mixers	
863	Dear Diz (Every Day I Think Of You)	Arturo Sandoval	Gregg Field & Arturo Sandoval, producers; Gregg Field & Don Murray, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Arturo%2BSandoval/Arturo%2520Sandoval_1_1_1581560975.jpg?itok=5M3lBvaY
864	¡Ritmo!	The Clare Fischer Latin Jazz Big Band	Dan Blessinger, Les Brockmann, Matt Brownlie & Justin Merrill, engineers/mixers	
865	10,000 Reasons (Bless The Lord)	Matt Redman	Matt Redman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Matt%2BRedman/Matt%2520Redman_1_1_1578384881.jpg?itok=kGTiG7nI
866	Go Get It	Erica Campbell, Tina Campbell & Warryn "Baby Dubb" Campbell, songwriters (Mary Mary)	Erica Campbell, Tina Campbell & Warryn "Baby Dubb" Campbell, songwriters (Mary Mary)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erica%2BCampbell/Erica%2520Campbell_1_1_1581554605.jpg?itok=dl6YQhvy
867	Your Presence Is Heaven	Israel Houghton & Micah Massey, songwriters (Israel & New Breed)	Israel Houghton & Micah Massey, songwriters (Israel & New Breed)	
868	Gravity	Lecrae	Carlton Lynn & Joseph Prielozny, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lecrae/Lecrae_1_1_1597148791.jpg?itok=knCfRJ89
869	Eye On It	TobyMac	Christopher Stevens & Tobymac, producers; Jerricho Scroggins, Christopher Stevens & Taylor Stevens, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TobyMac/TobyMac_1_1_1598306051.jpg?itok=SpVwnS-G
870	MTV Unplugged Deluxe Edition	Juanes	Juan Luis Guerra, producer; Gustavo Borner, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juanes/Juanes_1_1_1596248014.jpg?itok=tCm50Dlr
871	Imaginaries	Quetzal	Daniel Sheehy, producer; Pete Reiniger, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quetzal/Quetzal_1_1_1581553825.jpg?itok=yxINxrGu
872	Pecados Y Milagros	Lila Downs	Paul Cohen, Lila Downs & Aneiro Taño, producers; Alan Saucedo, Aneiro Taño & Rodolfo Vasquez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lila%2BDowns/Lila%2520Downs_1_1_1597403811.jpg?itok=2MeOguf8
873	Retro	Marlow Rosado Y La Riqueña	Victor "Sonny" Hernández, engineer/mixer	
874	Slipstream	Bonnie Raitt	Bonnie Raitt, producer; Ryan Freeland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
875	Nobody Knows You	Steep Canyon Rangers	Gary Paczosa & The Steep Canyon Rangers (Mike Guggino, Charles Humphrey, Woody Platt, Nicky Sanders & Graham Sharp), producers; Brandon Bell & Gary Paczosa, engineers/mixers	
876	Locked Down	Dr. John	Dan Auerbach, producer; Dan Auerbach & Collin Dupuis, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BJohn/Dr.%2520John_1_1_1578385151.jpg?itok=crgtmith
877	The Goat Rodeo Sessions	Yo-Yo Ma, Stuart Duncan, Edgar Meyer & Chris Thile	Steven Epstein, producer; Richard King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
878	The Band Courtbouillon	Wayne Toups, Steve Riley & Wilson Savoy	Joel Savoy, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BToups/Wayne%2520Toups_1_1_1575366512.jpg?itok=30cU9_uO
879	The Living Room Sessions Part 1	Ravi Shankar	Barry Phillips, producer; Barry Phillips, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ravi%2BShankar/Ravi%2520Shankar_1_1_1581617080.jpg?itok=cArlUNpm
880	Can You Canoe?	The Okee Dokee Brothers	Dean Jones, producer; Dean Jones, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BOkee%2BDokee%2BBrothers/The%2520Okee%2520Dokee%2520Brothers_1_1_1581553572.jpg?itok=j15kGa7V
881	Society's Child: My Autobiography	Janis Ian	Mike Charzuk, Christina Harcar, Jason Ojalvo & Stefan Rudnicki, producers; Stefan Rudnicki & Ted Scott, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janis%2BIan/Janis%2520Ian_1_1_1578385122.jpg?itok=xZjXctgV
883	Once: A New Musical	Steve Kazee & Cristin Milioti, principal soloists; Steven Epstein & Martin Lowe, producers; Richard King, engineer/mixer (Original Broadway Cast With Steve Kazee, Cristin Milioti & Others)	Steve Kazee & Cristin Milioti, principal soloists; Steven Epstein & Martin Lowe, producers; Richard King, engineer/mixer (Original Broadway Cast With Steve Kazee, Cristin Milioti & Others)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BKazee/Steve%2520Kazee_1_1_1581637717.jpg?itok=DB3mpsEu
884	Midnight In Paris	(Various Artists)	Woody Allen, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Woody%2BAllen/Woody%2520Allen_1_1_1581558404.jpg?itok=VtI3wf7Y
885	The Girl With The Dragon Tattoo	Trent Reznor & Atticus Ross, composers; Trent Reznor & Atticus Ross, producers; Blumpy & Alan Moulder, engineers/mixers (Trent Reznor & Atticus Ross)	Trent Reznor & Atticus Ross, composers; Trent Reznor & Atticus Ross, producers; Blumpy & Alan Moulder, engineers/mixers (Trent Reznor & Atticus Ross)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMoulder/Alan%2520Moulder_1_1_1581558299.jpg?itok=1SYIN4x-
886	Safe & Sound (From The Hunger Games)	T Bone Burnett, Taylor Swift, John Paul White & Joy Williams, songwriters (Taylor Swift Featuring The Civil Wars)	T Bone Burnett, Taylor Swift, John Paul White & Joy Williams, songwriters (Taylor Swift Featuring The Civil Wars)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/t_bone_burnett_spotlight_609763428.png?itok=_teXgyr1
887	Mozart Goes Dancing	Chick Corea, composer (Chick Corea & Gary Burton)	Chick Corea, composer (Chick Corea & Gary Burton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
888	How About You	Gil Evans, arranger (Gil Evans Project)	Gil Evans, arranger (Gil Evans Project)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gil%2BEvans/Gil%2520Evans_1_1_1581557109.jpg?itok=B_HhGnzt
889	City Of Roses	Thara Memory & Esperanza Spalding, arrangers (Esperanza Spalding)	Thara Memory & Esperanza Spalding, arrangers (Esperanza Spalding)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Esperanza%2BSpalding/Esperanza%2520Spalding_1_1_1581552254.jpg?itok=5wdQbxbw
890	Biophilia	Michael Amzalag & Mathias Augustyniak, art directors (Björk)	Michael Amzalag & Mathias Augustyniak, art directors (Björk)	
891	Woody At 100: The Woody Guthrie Centennial Collection	Fritz Klaetke, art director (Woody Guthrie)	Fritz Klaetke, art director (Woody Guthrie)	
892	Singular Genius: The Complete ABC Singles	Billy Vera, album notes writer (Ray Charles)	Billy Vera, album notes writer (Ray Charles)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BVera/Billy%2520Vera_1_1_1581555529.jpg?itok=Er4m6Vzm
893	The Smile Sessions (Deluxe Box Set)	Alan Boyd, Mark Linett, Brian Wilson & Dennis Wolfe, compilation producers; Mark Linett, mastering engineer (The Beach Boys)	Alan Boyd, Mark Linett, Brian Wilson & Dennis Wolfe, compilation producers; Mark Linett, mastering engineer (The Beach Boys)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BWilson/Brian%2520Wilson_1_1_1596792375.jpg?itok=slERUDud
894	Promises (Skrillex & Nero Remix)	Joseph Ray, Skrillex & Daniel Stephens, remixers (Nero)	Joseph Ray, Skrillex & Daniel Stephens, remixers (Nero)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joseph%2BRay/Joseph%2520Ray_1_1_1581619071.jpg?itok=PLy_I3sS
895	Modern Cool	Jim Anderson, surround mix engineer; Darcy Proper, surround mastering engineer; Michael Friedman, surround producer (Patricia Barber)	Jim Anderson, surround mix engineer; Darcy Proper, surround mastering engineer; Michael Friedman, surround producer (Patricia Barber)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BAnderson/Jim%2520Anderson_1_1_1581638867.jpg?itok=owpF-7EP
896	Life & Breath - Choral Works By René Clausen	Tom Caulfield & John Newton, engineers; Mark Donahue, mastering engineer (Charles Bruffy & Kansas City Chorale)	Tom Caulfield & John Newton, engineers; Mark Donahue, mastering engineer (Charles Bruffy & Kansas City Chorale)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BNewton/John%2520Newton_1_1_1581631921.jpg?itok=7E-1ZB0f
897	Blanton Alspaugh (producer)	Blanton Alspaugh (producer)		
898	Adams: Harmonielehre & Short Ride In A Fast Machine	Michael Tilson Thomas, conductor; Jack Vad, producer; Roni Jules, Gus Polleck, Uwe Willenbacher & Denise Woodward, engineers/mixers (San Francisco Symphony)	Michael Tilson Thomas, conductor; Jack Vad, producer; Roni Jules, Gus Polleck, Uwe Willenbacher & Denise Woodward, engineers/mixers (San Francisco Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BTilson%2BThomas/Michael%2520Tilson%2520Thomas_1_1_1575368818.jpg?itok=he1ja-mb
899	Wagner: Der Ring Des Nibelungen	James Levine & Fabio Luisi, conductors; Jay David Saks, producer; Hans-Peter König, Jay Hunter Morris, Bryn Terfel & Deborah Voigt, soloists; Jay David Saks, engineer/mixer (The Metropolitan Opera Chorus; The Metropolitan Opera Orchestra)	James Levine & Fabio Luisi, conductors; Jay David Saks, producer; Hans-Peter König, Jay Hunter Morris, Bryn Terfel & Deborah Voigt, soloists; Jay David Saks, engineer/mixer (The Metropolitan Opera Chorus; The Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hans-Peter%2BK%25C3%25B6nig/Kon_1_1_1581649026.jpg?itok=kAMcddlQ
900	Meanwhile	Judith Sherman, producer; Eighth Blackbird (Matt Albert, Matthew Duvall, Lisa Kaplan, Michael J. Maccaferri, Tim Munro & Nicholas Photinos), ensembles; Bill Maylone, engineer/mixer	Judith Sherman, producer; Eighth Blackbird (Matt Albert, Matthew Duvall, Lisa Kaplan, Michael J. Maccaferri, Tim Munro & Nicholas Photinos), ensembles; Bill Maylone, engineer/mixer	
901	Kurtág & Ligeti: Music For Viola	Kim Kashkashian; Manfred Eicher, producer; Peter Laenger, engineer/mixer	Kim Kashkashian; Manfred Eicher, producer; Peter Laenger, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kim%2BKashkashian/Kim%2520Kashkashian_1_1_1597176998.jpg?itok=AMzsvL0v
902	Poèmes	Renée Fleming, soloist; Arnaud Moral, producer; Christian Lahondes, engineer/mixer (Alan Gilbert & Seiji Ozawa; Orchestre National De France & Orchestre Philharmonique De Radio France)	Renée Fleming, soloist; Arnaud Moral, producer; Christian Lahondes, engineer/mixer (Alan Gilbert & Seiji Ozawa; Orchestre National De France & Orchestre Philharmonique De Radio France)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Renee%2BFleming/Ren%25C3%25A9e%2520Fleming_1_1_1581553784.jpg?itok=YfPtYzYB
933	Hello Fear	Kirk Franklin, songwriter (Kirk Franklin)	Kirk Franklin, songwriter (Kirk Franklin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
934	Blessings	Laura Story, songwriter (Laura Story)	Laura Story, songwriter (Laura Story)	
903	Penderecki: Fonogrammi; Horn Concerto; Partita; The Awakening Of Jacob; Anaklasis	Antoni Wit, conductor; Aleksandra Nagórko & Andrzej Sasin, producers; Aleksandra Nagórko & Andrzej Sasin, engineers/mixers (Antoni Wit)	Antoni Wit, conductor; Aleksandra Nagórko & Andrzej Sasin, producers; Aleksandra Nagórko & Andrzej Sasin, engineers/mixers (Antoni Wit)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aleksandra%2BNag%25C3%25B3rko/Nago_1_1_1581621039.jpg?itok=5U017yA4
904	Hartke, Stephen: Meanwhile - Incidental Music To Imaginary Puppet Plays	Stephen Hartke, composer	Stephen Hartke, composer	
905	We Found Love	Rihanna Featuring Calvin Harris	Melina Matsoukas, video director; Juliette Larthe, Candice Ouaknine, Ben Sullivan & Inga Veronique, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rihanna/Rihanna_1_1_1581552340.jpg?itok=0Uce4ss-
906	Big Easy Express	Mumford & Sons, Edward Sharpe & The Magnetic Zeros & Old Crow Medicine Show	Emmett Malloy, video director; Bryan Ling, Mike Luba & Tim Lynch, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/mumfordandsons-spotlight-109055932.png?itok=zQPlOcSS
907	Rolling In The Deep	Adele	Paul Epworth, producer; Tom Elmhirst & Mark Rankin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/138850365_adele.jpg?itok=X8mml-Wk
908	21	Adele	Jim Abbiss, Adele, Paul Epworth, Rick Rubin, Fraser T. Smith, Ryan Tedder & Dan Wilson, producers; Jim Abbiss, Philip Allen, Beatriz Artola, Ian Dowling, Tom Elmhirst, Greg Fidelman, Dan Parry, Steve Price, Mark Rankin, Andrew Scheps, Fraser T. Smith & Ryan Tedder, engineers/mixers; Tom Coyne, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/138843004_adele.jpg?itok=REu3ZiUk
909	Bon Iver	Bon Iver		https://www.grammy.com/sites/com/files/styles/artist_circle/public/138863776_bon_iver.jpg?itok=1NPJveRY
910	Someone Like You	Adele	Adele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adele/Adele_1_1_1584090130.jpg?itok=xlwW6t3a
911	Body And Soul	Tony Bennett & Amy Winehouse	Tony Bennett & Amy Winehouse	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
912	The Road From Memphis	Booker T. Jones	Booker T. Jones, Rob Schnapf & Ahmir "?uestlove" Thompson, producers; Gabriel Roth & Rob Schnapf, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/gettyimages-697421460.png?itok=lnAwKitv
913	Scary Monsters And Nice Sprites	Skrillex	Skrillex, producer; Skrillex, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
914	Duets II	Tony Bennett & Various Artists	Dae Bennett & Phil Ramone, producers; Dae Bennett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
915	Walk	Foo Fighters	Foo Fighters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
916	White Limo	Foo Fighters	Foo Fighters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
917	Wasting Light	Foo Fighters	Butch Vig, producer; James Brown & Alan Moulder, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
918	Is This Love	Corinne Bailey Rae	Corinne Bailey Rae	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Corinne%2BBailey%2BRae/Corinne%2520Bailey%2520Rae_1_1_1575363636.jpg?itok=29hIK8yV
919	Fool For You	Cee Lo Green & Melanie Fiona	Cee Lo Green & Melanie Fiona	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ceelogreen-spotlight-695400132.png?itok=wjbuxmQ1
920	F.A.M.E.	Chris Brown	Brian Springer, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/chrisbrown-spotlight-514044766.png?itok=xc5pU0If
921	Otis	Jay-Z & Kanye West	Jay-Z & Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
922	All Of The Lights	Kanye West, Rihanna, Kid Cudi & Fergie	Kanye West, Rihanna, Kid Cudi & Fergie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
923	My Beautiful Dark Twisted Fantasy	Kanye West	Kanye West, producer; Andrew Dawson, Mike Dean, Noah Goldstein & Anthony Kilhoffer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
924	Mean	Taylor Swift	Taylor Swift	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
925	Barton Hollow	The Civil Wars	The Civil Wars	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BCivil%2BWars/The%2520Civil%2520Wars_1_1_1578385291.jpg?itok=m-YMTusi
926	Own The Night	Lady Antebellum	Lady Antebellum & Paul N. Worley, producers; L Clarke Schleicher, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BAntebellum/Lady%2520Antebellum_1_1_1594115440.jpg?itok=-wEv1ObZ
927	What's It All About	Pat Metheny	Pat Metheny, producer; Pete Karam, Pat Metheny & David Oakes, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
928	500 Miles High	Chick Corea, soloist	Chick Corea, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
929	The Mosaic Project	Terri Lyne Carrington & Various Artists	Terri Lyne Carrington, producer; Mike Marciano & Martin Walters, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terri%2BLyne%2BCarrington/Terri%2520Lyne%2520Carrington_1_1_1581553550.jpg?itok=fqlbhRm1
930	Forever	Corea, Clarke & White	Stanley Clarke, Chick Corea & Lenny White, producers; Bernie Kirsh, Buck Snow & Brian Vibberts, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stanley%2BClarke/Stanley%2520Clarke_1_1_1591113024.jpg?itok=8SErKjyY
931	The Good Feeling	Christian McBride Big Band	Joe Ferla, engineer/mixer	
932	Jesus	Le'Andria Johnson	Le'Andria Johnson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Le%2527Andria%2BJohnson/Le%2527Andria%2520Johnson_1_1_1588264827.jpg?itok=EmvT6FJS
1253	Kind Of Blue: 50th Anniversary Collector's Edition	Francis Davis, album notes writer (Miles Davis)	Francis Davis, album notes writer (Miles Davis)	
935	And If Our God Is For Us...	Chris Tomlin	Ed Cash, producer; Ed Cash, Jim Deneen & F. Reid Shippen, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BTomlin/Chris%2520Tomlin_1_1_1581554713.jpg?itok=-oRnaxZO
936	Drama Y Luz	Maná	Benny Faccone, Arturo "Tuti" Perales, Thom Russo, Fabián Serrano & Fernando Villín, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mana/Man%25C3%25A1_1_1_1581554575.jpg?itok=HOqh-KcC
937	Bicentenario	Pepe Aguilar	Norberto Islas, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pepe%2BAguilar/Pepe%2520Aguilar_1_1_1578385715.jpg?itok=DMy8l6hK
938	Los Tigres Del Norte And Friends	Los Tigres Del Norte	Gustavo Borner & Los Tigres Del Norte, producers; Nick Baxter, Gustavo Borner, Juan Pablo Fallucca & Justin Moshkevich, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
939	The Last Mambo	Cachao	Nelson Albareda, Daniel Palacio, Omer Pardillo-Cid & Christian Thomas, producers; Alex Arias & Waldy D., engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cachao/Cachao_1_1_1597166263.jpg?itok=mDUXzarN
940	Ramble At The Ryman	Levon Helm	Larry Campbell, Jed Hilly & Danny Petraitis, producers; Michael Davis & Justin Guip, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Levon%2BHelm/Levon%2520Helm_1_1_1581555751.jpg?itok=GOP_aP9I
941	Paper Airplane	Alison Krauss & Union Station	Alison Krauss & Union Station, producers; Neal Cappellino & Mike Shipley, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
942	Revelator	Tedeschi Trucks Band	Jim Scott, producer; Jim Scott & Bobby Tis, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tedeschi%2BTrucks%2BBand/Tedeschi%2520Trucks%2520Band_1_1_1575368441.jpg?itok=MB1iL1fy
943	Rebirth Of New Orleans	Rebirth Brass Band	Tracey Freeman, producer; Chris Finney, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rebirth%2BBrass%2BBand/Rebirth%2520Brass%2520Band_1_1_1581553390.jpg?itok=3icExOc0
944	Revelation Pt. 1: The Root Of Life	Stephen Marley	Paul Fakhourie & Stephen Marley, producers; Errol Brown, Marc Lee & Roland McDermot, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BMarley/Stephen%2520Marley_1_1_1576290546.jpg?itok=0510HhwF
945	Tassili	Tinariwen	Ian Brennan & Jean Paul Romann, producers; David Odlum & Jean Paul Romann, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tinariwen/Tinariwen_1_1_1584614820.jpg?itok=-xl9F3JG
946	All About Bullies... Big And Small	(Various Artists)	(Various Artists)	
947	If You Ask Me (And Of Course You Won't)	Betty White	Kevin Thomsen, producer; Pete Pantelis & Jeremy Wesley, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Betty%2BWhite/Betty%2520White_1_1_1581622610.jpg?itok=ZHwxgDAB
948	Hilarious	Louis C.K.	Michelle Caputo, Shannon Hartman & Jack Vaughn, producers; Jon D'Uva, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Louis%2BC.K./Louis%2520C.K._1_1_1597163920.jpg?itok=C8o_tP1T
949	The Book Of Mormon	Josh Gad & Andrew Rannells; Robert Lopez, Trey Parker & Matt Stone, composers/lyricists; Anne Garefino, Robert Lopez, Stephen Oremus, Trey Parker, Scott Rudin & Matt Stone, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast)	Josh Gad & Andrew Rannells; Robert Lopez, Trey Parker & Matt Stone, composers/lyricists; Anne Garefino, Robert Lopez, Stephen Oremus, Trey Parker, Scott Rudin & Matt Stone, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Josh%2BGad/Josh%2520Gad_1_1_1581614142.jpg?itok=A69rIVAe
950	Boardwalk Empire: Volume 1	(Various Artists)	Stewart Lerman, Randall Poster & Kevin Weaver, producers; Stewart Lerman, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stewart%2BLerman/Stewart%2520Lerman_1_1_1597170141.jpg?itok=wSHxD1U2
951	The King's Speech	Alexandre Desplat, composer; Alexandre Desplat, producer (Alexandre Desplat)	Alexandre Desplat, composer; Alexandre Desplat, producer (Alexandre Desplat)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alexandre%2BDesplat/Alexandre%2520Desplat_1_1_1581615260.jpg?itok=ZwlCDQaj
952	I See The Light (From Tangled)	Alan Menken & Glenn Slater, songwriters (Mandy Moore & Zachary Levi)	Alan Menken & Glenn Slater, songwriters (Mandy Moore & Zachary Levi)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
953	Life In Eleven	Béla Fleck & Howard Levy, composers (Béla Fleck & The Flecktones)	Béla Fleck & Howard Levy, composers (Béla Fleck & The Flecktones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
954	Rhapsody In Blue	Gordon L. Goodwin, arranger (Gordon Goodwin's Big Phat Band)	Gordon L. Goodwin, arranger (Gordon Goodwin's Big Phat Band)	
955	Who Can I Turn To (When Nobody Needs Me)	Jorge Calandrelli, arranger (Tony Bennett & Queen Latifah)	Jorge Calandrelli, arranger (Tony Bennett & Queen Latifah)	
956	Scenes From The Suburbs	Caroline Robert, art director (Arcade Fire)	Caroline Robert, art director (Arcade Fire)	
957	The Promise: The Darkness On The Edge Of Town Story	David Bett & Michelle Holme, art directors (Bruce Springsteen)	David Bett & Michelle Holme, art directors (Bruce Springsteen)	
958	Hear Me Howling!: Blues, Ballads & Beyond As Recorded By The San Francisco Bay By Chris Strachwitz In The 1960s	Adam Machado, album notes writer (Various Artists)	Adam Machado, album notes writer (Various Artists)	
959	Band On The Run (Paul McCartney Archive Collection - Deluxe Edition)	Paul McCartney, compilation producer; Sam Okell & Steve Rooke, mastering engineers (Paul McCartney & Wings)	Paul McCartney, compilation producer; Sam Okell & Steve Rooke, mastering engineers (Paul McCartney & Wings)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
960	Paul Epworth	Paul Epworth		
961	Cinema (Skrillex Remix)	Skrillex, remixer (Benny Benassi)	Skrillex, remixer (Benny Benassi)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Skrillex/Skrillex_1_1_1579166214.jpg?itok=SbT7rssq
984	Crazy Love	Michael Bublé	David Foster, producer; Humberto Gatica & Jochem van der Saag, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBubl%25C3%25A9/Michael%2520Bubl%25C3%25A9_1_1_1578385534.jpg?itok=QJp6bog2
962	Layla And Other Assorted Love Songs (Super Deluxe Edition)	Elliot Scheiner, surround mix engineer; Bob Ludwig, surround mastering engineer; Bill Levenson & Elliot Scheiner, surround producers (Derek & The Dominos)	Elliot Scheiner, surround mix engineer; Bob Ludwig, surround mastering engineer; Bill Levenson & Elliot Scheiner, surround producers (Derek & The Dominos)	
963	Aldridge: Elmer Gantry	Byeong-Joon Hwang & John Newton, engineers; Jesse Lewis, mastering engineer (William Boggs, Keith Phares, Patricia Risley, Vale Rideout, Frank Kelley, Heather Buck, Florentine Opera Chorus & Milwaukee Symphony Orchestra)	Byeong-Joon Hwang & John Newton, engineers; Jesse Lewis, mastering engineer (William Boggs, Keith Phares, Patricia Risley, Vale Rideout, Frank Kelley, Heather Buck, Florentine Opera Chorus & Milwaukee Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BNewton/John%2520Newton_1_1_1581631921.jpg?itok=7E-1ZB0f
964	Brahms: Symphony No. 4	Gustavo Dudamel, conductor; Chris Alder, producer; Fred Vogler, engineer/mixer (Los Angeles Philharmonic)	Gustavo Dudamel, conductor; Chris Alder, producer; Fred Vogler, engineer/mixer (Los Angeles Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gustavo%2BDudamel/Gustavo%2520Dudamel_1_1_1581553571.jpg?itok=Frl2ikst
965	Adams: Doctor Atomic	Alan Gilbert, conductor; Jay David Saks, producer; Meredith Arwady, Sasha Cooke, Richard Paul Fink, Gerald Finley, Thomas Glenn & Eric Owens, soloists (Metropolitan Opera Chorus; Metropolitan Opera Orchestra)	Alan Gilbert, conductor; Jay David Saks, producer; Meredith Arwady, Sasha Cooke, Richard Paul Fink, Gerald Finley, Thomas Glenn & Eric Owens, soloists (Metropolitan Opera Chorus; Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BGilbert/Alan%2520Gilbert_1_1_1581626242.jpg?itok=OFZqHFW4
966	Light & Gold	Eric Whitacre, conductor; Raphaël Mouterde, producer; Andrew Mellor, engineer/mixer (The King's Singers, Laudibus, Pavão Quartet & The Eric Whitacre Singers)	Eric Whitacre, conductor; Raphaël Mouterde, producer; Andrew Mellor, engineer/mixer (The King's Singers, Laudibus, Pavão Quartet & The Eric Whitacre Singers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BWhitacre/Eric%2520Whitacre_1_1_1581557788.jpg?itok=HV3LgukP
967	Mackey: Lonely Motel - Music From Slide	David Frost, producer; Eighth Blackbird (Matt Albert, Matthew Duvall, Lisa Kaplan, Michael J. Maccaferri, Tim Munro & Nicholas Photinos), ensembles; Tom Lazarus, Mat Lejeune, Bill Maylone & Jon Zacks, engineers/mixers	David Frost, producer; Eighth Blackbird (Matt Albert, Matthew Duvall, Lisa Kaplan, Michael J. Maccaferri, Tim Munro & Nicholas Photinos), ensembles; Tom Lazarus, Mat Lejeune, Bill Maylone & Jon Zacks, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFrost/David%2520Frost_1_1_1581561453.jpg?itok=SLeIAd03
968	Schwantner: Concerto For Percussion & Orchestra	Christopher Lamb; Giancarlo Guerrero, conductor (Nashville Symphony)	Christopher Lamb; Giancarlo Guerrero, conductor (Nashville Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giancarlo%2BGuerrero/Giancarlo%2520Guerrero_1_1_1581610466.jpg?itok=IwpSCWeW
969	Diva Divo	Joyce DiDonato, soloist; Daniel Zalay, producer (Kazushi Ono; Orchestre De L'Opéra National De Lyon)	Joyce DiDonato, soloist; Daniel Zalay, producer (Kazushi Ono; Orchestre De L'Opéra National De Lyon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joyce%2BDiDonato/Joyce%2520DiDonato_1_1_1581621554.jpg?itok=d96fn4ix
970	Aldridge, Robert: Elmer Gantry	Robert Aldridge & Herschel Garfein, composers	Robert Aldridge & Herschel Garfein, composers	
971	Foo Fighters: Back And Forth	Foo Fighters	James Moll, video director; James Moll & Nigel Sinclair, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
972	Need You Now	Lady Antebellum	Lady Antebellum (Dave Haywood, Charles Kelley & Hillary Scott) & Paul N. Worley, producers; L Clarke Schleicher, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/109066913_lady_antebellum.jpg?itok=iFnOLjld
973	The Suburbs	Arcade Fire	Arcade Fire (William Butler, Win Butler, Régine Chassagne, Jeremy Gara, Timothy Kingsbury, Sarah Neufeld & Richard Reed Parry) & Markus Dravs, producers; Arcade Fire (William Butler, Win Butler, Régine Chassagne, Jeremy Gara, Timothy Kingsbury, Sarah Neufeld & Richard Reed Parry), Markus Dravs, Mark Lawson & Craig Silvey, engineers/mixers; George Marino, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/109066166_arcade_fire.jpg?itok=xal86pVG
974	Esperanza Spalding	Esperanza Spalding		https://www.grammy.com/sites/com/files/styles/artist_circle/public/63472488_esperanza_spalding.jpg?itok=3rqneI_F
975	Bad Romance	Lady Gaga	Lady Gaga	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
976	Just The Way You Are	Bruno Mars	Bruno Mars	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruno%2BMars/Bruno%2520Mars_1_1_1578385368.jpg?itok=KhxnacRR
977	Hey, Soul Sister (Live)	Train	Train	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Train/Train_1_1_1578385231.jpg?itok=n6y8MVOi
978	Imagine	Herbie Hancock, Pink, India.Arie, Seal, Konono No 1, Jeff Beck & Oumou Sangare	Herbie Hancock, Pink, India.Arie, Seal, Konono No 1, Jeff Beck & Oumou Sangare	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
979	Nessun Dorma	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
980	Take Your Pick	Larry Carlton & Tak Matsumoto	Larry Carlton & Tak Matsumoto, producers; Hiroyuki Kobayashi & Nick Sparks, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nick%2BSparks/Nick%2520Sparks_1_1_1597163491.jpg?itok=CPofyxKm
981	The Fame Monster	Lady Gaga	Lady Gaga & RedOne, producers; Robert Orton, RedOne & Dave Russell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
982	Only Girl (In The World)	Rihanna	Kuk Harrell, Stargate (Mikkel Eriksen & Tor Hermansen) & Sandy Vee, producers; Philip Tan & Sandy Vee, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rihanna/Rihanna_1_1_1581552340.jpg?itok=0Uce4ss-
983	La Roux	La Roux	La Roux, producers; Serban Ghenea, John Hanes & Ian Sherwin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BRoux/La%2520Roux_1_1_1575364428.jpg?itok=6j99FI1C
985	Helter Skelter	Paul McCartney	Paul McCartney	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
986	Tighten Up	The Black Keys	The Black Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBlack%2BKeys/The%2520Black%2520Keys_1_1_1595949843.jpg?itok=Vg62uatp
987	New Fang	Them Crooked Vultures	Them Crooked Vultures	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Them%2BCrooked%2BVultures/Them%2520Crooked%2520Vultures_1_1_1575362997.jpg?itok=BtbFj2Mb
988	Hammerhead	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
989	Angry World	Neil Young, songwriter (Neil Young)	Neil Young, songwriter (Neil Young)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Neil%2BYoung/Neil%2520Young_1_1_1584104218.jpg?itok=OTYf-_5h
990	The Resistance	Muse	Muse, producers; Adrian Bushby & Mark Stent, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muse/Muse_1_1_1581551894.jpg?itok=YSjRgwU-
991	Brothers	Black Keys, The	The Black Keys & Mark Neill, producers; Tchad Blake & Mark Neill, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBlack%2BKeys/The%2520Black%2520Keys_1_1_1595949843.jpg?itok=Vg62uatp
992	Bittersweet	Fantasia	Fantasia	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fantasia/Fantasia_1_1_1597744318.jpg?itok=wNVgrG8K
993	There Goes My Baby	Usher	Usher	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
994	Soldier Of Love	Sade	Sade	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sade/Sade_1_1_1575368372.jpg?itok=hUCGfjaP
995	Hang On In There	John Legend & The Roots	John Legend & The Roots	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
996	Fuck You	Cee Lo Green	Cee Lo Green	
997	Shine	John Legend, songwriter (John Legend & The Roots)	John Legend, songwriter (John Legend & The Roots)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
998	Wake Up!	John Legend & The Roots	John Legend, producer; Jimmy Douglass & Alex Venguer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
999	Raymond V Raymond	Usher	Ian Cross, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1000	Not Afraid	Eminem	Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1001	On To The Next One	Jay-Z & Swizz Beatz	Jay-Z & Swizz Beatz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1002	Empire State Of Mind	Jay-Z & Alicia Keys	Jay-Z & Alicia Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1003	Recovery	Eminem	Eminem & Mike Strange, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1004	The House That Built Me	Miranda Lambert	Miranda Lambert	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miranda%2BLambert/Miranda%2520Lambert_1_1_1594893267.jpg?itok=7i4nOIkz
1005	'Til Summer Comes Around	Keith Urban	Keith Urban	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keith%2BUrban/Keith%2520Urban_1_1_1578385294.jpg?itok=gfvuBXWm
1006	As She's Walking Away	Zac Brown Band & Alan Jackson	Zac Brown Band & Alan Jackson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zac%2BBrown%2BBand/Zac%2520Brown%2520Band_1_1_1578385252.jpg?itok=AkNCKYRK
1007	Hummingbyrd	Marty Stuart	Marty Stuart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marty%2BStuart/Marty%2520Stuart_1_1_1581553419.jpg?itok=QdG26ctM
1008	Miho: Journey To The Mountain	Paul Winter Consort	Dixon Van Winkle, producer; Akira Kato & Dixon Van Winkle, engineers/mixers	
1009	The Stanley Clarke Band	The Stanley Clarke Band	Lenny White, producer; Gerry "The Gov" Brown & Dennis MacKay, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lenny%2BWhite/Lenny%2520White_1_1_1581552179.jpg?itok=OmExxb6j
1010	Eleanora Fagan (1915-1959): To Billie With Love From Dee Dee	Dee Dee Bridgewater	Dee Dee Bridgewater, producer; Al Schmitt, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dee%2BDee%2BBridgewater/Dee%2520Dee%2520Bridgewater_1_1_1575360127.jpg?itok=2gVd_jAa
1011	A Change Is Gonna Come	Herbie Hancock, soloist	Herbie Hancock, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
1012	Moody 4B	James Moody	Michael P. Patterson, producer; Jonathan Rosenberg, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BMoody/James%2520Moody_1_1_1581629033.jpg?itok=fwdRU6uE
1013	Mingus Big Band Live At Jazz Standard	Mingus Big Band	Seth Abramson, producer; Duke Markos & Tom Swift, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mingus%2BBig%2BBand/Mingus%2520Big%2520Band_1_1_1581554678.jpg?itok=TJjc0N5g
1014	Chucho's Steps	Chucho Valdés And The Afro-Cuban Messengers	Orestes Ávila, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chucho%2BVald%25C3%25A9s/Chucho%2520Valdes_1_1_1581560137.jpg?itok=jZ6vH_c6
1015	It's What I Do	Jerry Peters & Kirk Whalum, songwriters (Kirk Whalum & Lalah Hathaway)	Jerry Peters & Kirk Whalum, songwriters (Kirk Whalum & Lalah Hathaway)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BWhalum/Kirk%2520Whalum_1_1_1588264823.jpg?itok=hhaXGpDu
1016	Hello Hurricane	Switchfoot	Mike Elizondo & Switchfoot, producers; Adam Hawkins, Ryan Peterson, Alan Sanderson, Switchfoot, Darrell Thorp, Shane Wilson & Craig Zarkos, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Switchfoot/Switchfoot_1_1_1576322332.jpg?itok=Fp-YJwaW
1017	Love God. Love People.	Israel Houghton	Israel Houghton, Aaron Lindsey & Tommy Sims, producers; Danny Duncan, Tommy Sims & James Wadell, engineers/mixers	
1018	The Reason	Diamond Rio	Michael D. Clute & Diamond Rio, producers; Michael D. Clute, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Diamond%2BRio/Diamond%2520Rio_1_1_1584526831.jpg?itok=ALgaom9Y
1019	Downtown Church	Patty Griffin	Buddy Miller, producer; Buddy Miller & Mike Poole, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patty%2BGriffin/Patty%2520Griffin_1_1_1595299978.jpg?itok=eleI1Jhv
1020	Still	BeBe & CeCe Winans	Ron Gillyard, BeBe Winans & CeCe Winans, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
1021	Paraiso Express	Alejandro Sanz	Tomás Torres, producer; Bob Clearmountain, Mike Couzzi, Lee Levin, Andres Saavedra & Dan Warner, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alejandro%2BSanz/Alejandro%2520Sanz_1_1_1581342907.jpg?itok=0YVrY2Gd
1022	El Existential	Grupo Fantasma	Brendan Burke & Grupo Fantasma, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Grupo%2BFantasma/Grupo%2520Fantasma_1_1_1583142457.jpg?itok=4Lj3MFL-
1023	Viva La Tradición	Spanish Harlem Orchestra	Dave Kowalski, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BKowalski/Dave%2520Kowalski_1_1_1581612682.jpg?itok=FaBZYMZ8
1024	Recuerdos	Little Joe & La Familia	Gilbert Velasquez, engineer/mixer	
1025	Classic	Intocable	Ramón Ayala, producer; Edgar "Pilo" Cavazos, Chuy Flores, Marco Gamboa, Oscar "Welito" González & Alejandro Gulmar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramon%2BAyala/Ram%25C3%25B3n%2520Ayala_1_1_1596812549.jpg?itok=ymZYNI3N
1026	Enamórate De Mí	El Güero Y Su Banda Centanario	Ramon Gonzalez Mora, producer; Michael Esparza, Rafael Guevara & Abelardo Rivera, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Abelardo%2BRivera/Abelardo%2520Rivera_1_1_1581623829.jpg?itok=EEfy2a-C
1027	You Are Not Alone	Mavis Staples	Jeff Tweedy, producer; Tom Schick, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mavis%2BStaples/Mavis%2520Staples_1_1_1575368361.jpg?itok=P5iWm9I5
1028	Mountain Soul II	Patty Loveless	Emory L. Gordy, Jr., producer; Drew Bollman & George Massenburg, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patty%2BLoveless/Patty%2520Loveless_1_1_1581557212.jpg?itok=DvUqhmOz
1029	Joined At The Hip	Pinetop Perkins & Willie 'Big Eyes' Smith	Michael Freeman, producer; Blaise Barton & Michael Freeman, engineers/mixers	
1030	Living Proof	Buddy Guy	Tom Hambridge, producer; Ducky Carlisle, Tom Hambridge & Vance Powell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
1031	Genuine Negro Jig	Carolina Chocolate Drops	Joe Henry, producer; Ryan Freeland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carolina%2BChocolate%2BDrops/Carolina%2520Chocolate%2520Drops_1_1_1575363180.jpg?itok=5-dCqzQn
1032	God Willin' & The Creek Don't Rise	Ray LaMontagne And The Pariah Dogs	Ryan Freeland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BLaMontagne/Ray%2520LaMontagne_1_1_1575370819.jpg?itok=QssICehN
1033	Huana Ke Aloha	Tia Carrere	Daniel Ho & Amy Ku'uleialoha Stillman, producers; Daniel Ho, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tia%2BCarrere/Tia%2520Carrere_1_1_1581623924.jpg?itok=T_aOBhjV
1034	2010 Gathering Of Nations Pow Wow: A Spirit's Dance	(Various Artists)	Derek Mathews, Lita Mathews & Melonie Mathews, producers; Evren Göknar, engineer/mixer	
1035	Zydeco Junkie	Chubby Carrier And The Bayou Swamp Band	Ivan Klisanin, producer; Ivan Klisanin, engineer/mixer	
1036	Before The Dawn	Buju Banton	Buju Banton, producer; Austin Green, Linford Marshall & Jermaine Reid, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buju%2BBanton/Buju%2520Banton_1_1_1591089644.jpg?itok=8gH_ck1h
1037	Ali And Toumani	Ali Farka Touré & Toumani Diabaté	Nick Gold, producer; Jerry Boys, engineer/mixer	
1038	Throw Down Your Heart , Africa Sessions Part 2: Unreleased Tracks	Béla Fleck	Béla Fleck, producer; Wellington Bowler & Dave Sinko, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1039	Tomorrow's Children	Pete Seeger With The Rivertown Kids And Friends	David Bernz, Daniel Einbender & Travis Jeffrey, producers; Pete Seeger	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pete%2BSeeger/Pete%2520Seeger_1_1_1592492662.jpg?itok=a5mlzrMI
1040	Julie Andrews' Collection Of Poems, Songs, And Lullabies	Julie Andrews & Emma Walton Hamilton	Michele McGonigle, producer; John Colucci, Cynthia Daniels & Tommy Harron, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julie%2BAndrews/Julie%2520Andrews_1_1_1598611301.jpg?itok=wBBCYErV
1041	The Daily Show With Jon Stewart Presents Earth (The Audiobook)	Jon Stewart (With  Samantha Bee, Wyatt Cenac, Jason Jones, John Oliver & Sigourney Weaver)	Rory Albanese, Steve Bodow, David Javerbaum, Josh Lieb, John McElroy & Jon Stewart, producers; Charles de Montebello & Tim Lester, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rory%2BAlbanese/Rory%2520Albanese_1_1_1581553426.jpg?itok=Ev-JqFSD
1042	Stark Raving Black	Lewis Black	Benjamin Brewer, Jack Gulick & Jack Vaughn, producers; Tom Efinger, Eric Gitelson & Steve Ivanyi, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lewis%2BBlack/Lewis%2520Black_1_1_1581554695.jpg?itok=n1HH__D9
1043	American Idiot - Featuring Green Day	Billie Joe Armstrong, producer; Chris Dugan & Chris Lord-Alge, engineers/mixers (Original Broadway Cast With John Gallagher, Jr., Michael Esper & Others)	Billie Joe Armstrong, producer; Chris Dugan & Chris Lord-Alge, engineers/mixers (Original Broadway Cast With John Gallagher, Jr., Michael Esper & Others)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billie%2BJoe%2BArmstrong/Billie%2520Joe%2520Armstrong_1_1_1581629005.jpg?itok=4ecvtYhJ
1044	Crazy Heart	(Various Artists)	Stephen Bruton & T Bone Burnett, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/t_bone_burnett_spotlight_609763428.png?itok=_teXgyr1
1045	Toy Story 3	Randy Newman, composer; David Boucher, engineer/mixer (Randy Newman)	Randy Newman, composer; David Boucher, engineer/mixer (Randy Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
1046	The Weary Kind (From Crazy Heart)	Ryan Bingham & T Bone Burnett, songwriters (Ryan Bingham)	Ryan Bingham & T Bone Burnett, songwriters (Ryan Bingham)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ryan%2BBingham/Ryan%2520Bingham_1_1_1584457127.jpg?itok=7fDiMVbJ
1047	The Path Among The Trees	Billy Childs, composer (Billy Childs Ensemble)	Billy Childs, composer (Billy Childs Ensemble)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BChilds/Billy%2520Childs_1_1_1581647571.jpg?itok=fGAL4PEd
1048	Carlos	Vincent Mendoza, arranger (John Scofield, Vince Mendoza & Metropole Orkest)	Vincent Mendoza, arranger (John Scofield, Vince Mendoza & Metropole Orkest)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vincent%2BMendoza/Vince%2520Mendoza_1_1_1581562428.jpg?itok=3xtFsTEn
1049	Baba Yetu	Christopher Tin, arranger (Christopher Tin, Soweto Gospel Choir & Royal Philharmonic Orchestra)	Christopher Tin, arranger (Christopher Tin, Soweto Gospel Choir & Royal Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christopher%2BTin/Christopher%2520Tin_1_1_1581552377.jpg?itok=8I8cJFOr
1050	Under Great White Northern Lights (Limited Edition Box Set)	Rob Jones & Jack White, art directors (The White Stripes)	Rob Jones & Jack White, art directors (The White Stripes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BJones/Rob%2520Jones_1_1_1581559760.jpg?itok=gurxByz0
1051	Keep An Eye On The Sky	Robert Gordon, album notes writer (Big Star)	Robert Gordon, album notes writer (Big Star)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BGordon/Robert%2520Gordon_1_1_1597173899.jpg?itok=kuD1Awho
1052	The Beatles (The Original Studio Recordings)	Jeff Jones & Allan Rouse, compilation producers; Paul Hicks, Sean Magee, Guy Massey, Sam Okell & Steve Rooke, mastering engineers (The Beatles)	Jeff Jones & Allan Rouse, compilation producers; Paul Hicks, Sean Magee, Guy Massey, Sam Okell & Steve Rooke, mastering engineers (The Beatles)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BJones/Jeff%2520Jones_1_1_1597072026.jpg?itok=TZK-KgTH
1053	Battle Studies	Michael H. Brauer, Joe Ferla, Chad Franscoviak & Manny Marroquin, engineers (John Mayer)	Michael H. Brauer, Joe Ferla, Chad Franscoviak & Manny Marroquin, engineers (John Mayer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BH.%2BBrauer/Michael%2520H.%2520Brauer_1_1_1581558137.jpg?itok=PW0iXESC
1054	Danger Mouse	Danger Mouse		
1055	Revolver (David Guetta's One Love Club Remix)	Afrojack & David Guetta, remixers (Madonna)	Afrojack & David Guetta, remixers (Madonna)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Afrojack/Afrojack_1_1_1581551876.jpg?itok=b0P5eRul
1056	Britten's Orchestra	Keith O. Johnson, surround mix engineer; Keith O. Johnson, surround mastering engineer; David Frost, surround producer (Michael Stern & Kansas City Symphony)	Keith O. Johnson, surround mix engineer; Keith O. Johnson, surround mastering engineer; David Frost, surround producer (Michael Stern & Kansas City Symphony)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/keithojohnson.jpg?itok=FnHhykTp
1057	Daugherty: Metropolis Symphony; Deus Ex Machina	Mark Donahue, John Hill & Dirk Sobotka, engineers (Giancarlo Guerrero & Nashville Symphony Orchestra)	Mark Donahue, John Hill & Dirk Sobotka, engineers (Giancarlo Guerrero & Nashville Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_29.png?itok=_6P3lJhh
1058	Porter, Quincy: Complete Viola Works	Leslie Ann Jones, Kory Kruckenberg, Brandie Lane & David Sabee, engineers (Eliesha Nelson & John McLaughlin Williams)	Leslie Ann Jones, Kory Kruckenberg, Brandie Lane & David Sabee, engineers (Eliesha Nelson & John McLaughlin Williams)	
1059	Verdi: Requiem	Duain Wolfe, chorus master; Riccardo Muti, conductor; Christopher Alder, producer	Duain Wolfe, chorus master; Riccardo Muti, conductor; Christopher Alder, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Riccardo%2BMuti/Riccardo%2520Muti_1_1_1581565249.jpg?itok=2fOltn_t
1060	Saariaho: L'Amour De Loin	Kent Nagano, conductor; Martin Sauer, producer; Daniel Belcher, Ekaterina Lekhina & Marie-Ange Todorovitch, soloists; Tobias Lehmann, engineer/mixer (Rundfunkchor Berlin; Deutsches Symphonie-Orchester Berlin)	Kent Nagano, conductor; Martin Sauer, producer; Daniel Belcher, Ekaterina Lekhina & Marie-Ange Todorovitch, soloists; Tobias Lehmann, engineer/mixer (Rundfunkchor Berlin; Deutsches Symphonie-Orchester Berlin)	
1061	Mozart: Piano Concertos Nos. 23 & 24	Mitsuko Uchida; Everett Porter, producer; Brad Michel, engineer/mixer (The Cleveland Orchestra)	Mitsuko Uchida; Everett Porter, producer; Brad Michel, engineer/mixer (The Cleveland Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mitsuko%2BUchida/Mitsuko%2520Uchida_1_1_1597163718.jpg?itok=JNwaBO92
1062	Messiaen: Livre Du Saint-Sacrement	Paul Jacobs, soloist; Isabelle Demers & Daniel Sullivan, producers; Stephen Roessner, engineer/mixer	Paul Jacobs, soloist; Isabelle Demers & Daniel Sullivan, producers; Stephen Roessner, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BJacobs/Paul%2520Jacobs_1_1_1581629044.jpg?itok=azjbmszD
1063	Ligeti: String Quartets Nos. 1 & 2	Parker Quartet (Jessica Bodner, Daniel Chong, Karen Kim & Kee-Hyun Kim), ensembles; Norbert Kraft & Bonnie Silver, producers; Norbert Kraft, engineer/mixer	Parker Quartet (Jessica Bodner, Daniel Chong, Karen Kim & Kee-Hyun Kim), ensembles; Norbert Kraft & Bonnie Silver, producers; Norbert Kraft, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Parker%2BQuartet/Parker%2520Quartet_1_1_1581558625.jpg?itok=OEqdAwu1
1064	Dinastia Borja	Jordi Savall, conductor; Hesperion XXI & La Capella Reial de Catalunya, ensembles	Jordi Savall, conductor; Hesperion XXI & La Capella Reial de Catalunya, ensembles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jordi%2BSavall/Jordi%2520Savall_1_1_1581628716.jpg?itok=1JMM5tey
1065	Sacrificium	Cecilia Bartoli, soloist; Arend Prohmann, producer; Philip Siney, engineer/mixer (Giovanni Antonini; Il Giardino Armonico)	Cecilia Bartoli, soloist; Arend Prohmann, producer; Philip Siney, engineer/mixer (Giovanni Antonini; Il Giardino Armonico)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cecilia%2BBartoli/Cecilia%2520Bartoli_1_1_1581628660.jpg?itok=J4N8Q0wE
1066	Daugherty, Michael: Deus Ex Machina	Michael Daugherty, composer	Michael Daugherty, composer	
1067	Tin, Christopher: Calling All Dawns	Lucas Richman, Various Artists & The Royal Philharmonic Orchestra	Christopher Tin, producer; Bill Hare & John Kurlander, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Royal%2BPhilharmonic%2BOrchestra/Royal%2520Philharmonic%2520Orchestra_1_1_1596801221.jpg?itok=9M4Mz590
1068	When You're Strange	(The Doors)	Tom Dicillo, video director; John Beug, Jeff Jampol, Peter Jankowski & Dick Wolf, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dick%2BWolf/DICK%2520WOLF_1_1_1581556431.jpg?itok=fcJ2qjPI
1104	Prayer For Compassion	David Darling	David Darling & Mickey Houlihan, producers; David Darling & Mickey Houlihan, engineers/mixers	
1069	Use Somebody	Kings Of Leon	Jacquire King & Angelo Petraglia, producers; Jacquire King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/96337451_kings_of_leon.jpg?itok=mjt6_DjR
1070	Fearless	Taylor Swift	Colbie Caillat, featured artist; Nathan Chapman & Taylor Swift, producers; Chad Carlson, Nathan Chapman & Justin Niebank, engineers/mixers; Hank Williams, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/96324387_taylor_swift.jpg?itok=HhLIxlPS
1071	Single Ladies (Put A Ring On It)	Kuk Harrell, Beyoncé Knowles, Terius "Dream" Nash & Chris 'Tricky' Stewart, songwriters (Beyoncé)	Kuk Harrell, Beyoncé Knowles, Terius "Dream" Nash & Chris 'Tricky' Stewart, songwriters (Beyoncé)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/96309470_beyonce.jpg?itok=gTV_qUp7
1072	Zac Brown Band	Zac Brown Band		https://www.grammy.com/sites/com/files/styles/artist_circle/public/96310319_zac_brown_band.jpg?itok=WPDx1l6R
1073	Halo	Beyoncé	Beyoncé	
1074	Make It Mine	Jason Mraz	Jason Mraz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BMraz/Jason%2520Mraz_1_1_1591112884.jpg?itok=WSRa9F_F
1075	I Gotta Feeling	The Black Eyed Peas	The Black Eyed Peas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1076	Lucky	Jason Mraz & Colbie Caillat	Jason Mraz & Colbie Caillat	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BMraz/Jason%2520Mraz_1_1_1591112884.jpg?itok=WSRa9F_F
1077	Throw Down Your Heart	Béla Fleck	Béla Fleck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1078	Potato Hole	Booker T. Jones	Booker T. Jones & Rob Schnapf, producers; Doug Boehm & Rob Schnapf, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/gettyimages-697421460.png?itok=lnAwKitv
1079	The E.N.D.	The Black Eyed Peas	Dylan Dresdow & Padraic Kerin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1080	Poker Face	Lady Gaga	RedOne, producer; Robert Orton, RedOne & Dave Russell, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
1081	The Fame	Lady Gaga	Robert Orton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BGaga/Lady%2520Gaga_1_1_1594731362.jpg?itok=O8WmBmXy
1082	Michael Bublé Meets Madison Square Garden	Michael Bublé	Humberto Gatica, producer; Humberto Gatica, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBubl%25C3%25A9/Michael%2520Bubl%25C3%25A9_1_1_1578385534.jpg?itok=QJp6bog2
1083	Working On A Dream	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1084	War Machine	AC/DC	AC/DC	
1085	Dissident Aggressor	Judas Priest	Judas Priest	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Judas%2BPriest/Judas%2520Priest_1_1_1581551749.jpg?itok=UaovMLI_
1086	A Day In The Life	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
1087	21st Century Breakdown	Green Day	Green Day & Butch Vig, producers; Chris Dugan & Chris Lord-Alge, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Green%2BDay/Green%2520Day_1_1_1578385279.jpg?itok=wr16YloS
1088	Wolfgang Amadeus Phoenix	Phoenix	Philippe Zdar Cerboneschi & Phoenix, producers; Philippe Zdar Cerboneschi, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phoenix/Phoenix_1_1_1600095109Muzooka.jpg?itok=4Pcomb04
1089	Pretty Wings	Maxwell	Maxwell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maxwell/Maxwell_1_1_1581552176.jpg?itok=E4pcm551
1090	Blame It	Jamie Foxx & T-Pain	Jamie Foxx & T-Pain	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jamie%2BFoxx/Jamie%2520Foxx_1_1_1594995382.jpg?itok=E_JLLwnt
1091	At Last	Beyoncé	Beyoncé	
1092	Pearls	India.Arie & Dobet Gnahore	India.Arie & Dobet Gnahore	https://www.grammy.com/sites/com/files/styles/artist_circle/public/indiaarie-spotlight-107148703.png?itok=EhTaEZYR
1093	Blacksummers' Night	Maxwell	Hod David & Maxwell, producers; Hod David, Jesse Gladstone, Glen Marchese, Maxwell & Mike Pela, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maxwell/Maxwell_1_1_1581552176.jpg?itok=E4pcm551
1094	I Am... Sasha Fierce	Beyoncé	Beyoncé Knowles, producer; Jim Caruana & Mark Stent, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
1095	D.O.A. (Death Of Auto-Tune)	Jay-Z	Jay-Z	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1096	Crack A Bottle	Eminem, Dr. Dre & 50 Cent	Eminem, Dr. Dre & 50 Cent	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1097	Run This Town	Jay-Z, Rihanna & Kanye West	Jay-Z, Rihanna & Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1098	Relapse	Eminem	Andre Young, producer; Mauricio "Veto" Iragorri, Michael Strange & Andre Young, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1099	White Horse	Taylor Swift	Taylor Swift	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taylor%2BSwift/Taylor%2520Swift_1_1_1588259933.jpg?itok=faoR37HC
1100	Sweet Thing	Keith Urban	Keith Urban	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keith%2BUrban/Keith%2520Urban_1_1_1578385294.jpg?itok=gfvuBXWm
1101	I Run To You	Lady Antebellum	Lady Antebellum	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lady%2BAntebellum/Lady%2520Antebellum_1_1_1594115440.jpg?itok=-wEv1ObZ
1102	I Told You So	Carrie Underwood & Randy Travis	Carrie Underwood & Randy Travis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
1103	Producer's Medley	Steve Wariner	Steve Wariner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BWariner/Steve%2520Wariner_1_1_1581551716.jpg?itok=6DB8Dklr
1106	Dedicated To You: Kurt Elling Sings The Music Of Coltrane And Hartman	Kurt Elling	Kurt Elling & Laurence Hobgood, producers; Rob Macomber & Dave O'Donnell, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kurt%2BElling/Kurt%2520Elling_1_1_1581554463.jpg?itok=wBcuFIt_
1107	Dancin' 4 Chicken	Terence Blanchard, soloist	Terence Blanchard, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terence%2BBlanchard/Terence%2520Blanchard_1_1_1581553525.jpg?itok=gNLy5qGf
1108	Five Peace Band - Live	Chick Corea & John McLaughlin Five Peace Band	Sven Hoffman, Bernie Kirsh, Buck Snow & Brian Vibberts, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
1109	Book One	New Orleans Jazz Orchestra	Masanori Yura, engineer/mixer	
1110	Juntos Para Siempre	Bebo Valdés And Chucho Valdés	Nat Chediak & Fernando Trueba, producers; Javier Limón & José Loeches, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bebo%2BVald%25C3%25A9s/Bebo%2520Vald%25C3%25A9s_1_1_1597163263.jpg?itok=294gA-Ht
1111	Wait On The Lord	Donnie McClurkin Featuring Karen Clark Sheard	Donnie McClurkin Featuring Karen Clark Sheard	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donnie%2BMcClurkin/Donnie%2520McClurkin_1_1_1581563402.jpg?itok=qm3AMw3N
1112	God In Me	Erica Campbell, Trecina Campbell & Warryn "Baby Dubb" Campbell, songwriters (Mary Mary Featuring Kierra "KiKi" Sheard)	Erica Campbell, Trecina Campbell & Warryn "Baby Dubb" Campbell, songwriters (Mary Mary Featuring Kierra "KiKi" Sheard)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erica%2BCampbell/Erica%2520Campbell_1_1_1581554605.jpg?itok=dl6YQhvy
1113	Live Revelations	Third Day	Third Day, producers; Chris Biggs, David Jacques & Don McCollister, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Third%2BDay/Third%2520Day_1_1_1581551858.jpg?itok=vUbg7NPR
1114	The Power Of One	Israel Houghton	Israel Houghton, Aaron Lindsey & Tommy Sims, producers; Danny Duncan & Tommy Sims, engineers/mixers	
1115	Jason Crabb	Jason Crabb	Paul Corley & Ben Fowler, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BCrabb/Jason%2520Crabb_1_1_1581557998.jpg?itok=kXAxOT8q
1116	Oh Happy Day	(Various Artists)	(Various Artists)	
1117	Audience Of One	Heather Headley	Keith Thomas, producer; Jonathan Crone & Bill Whittington, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Heather%2BHeadley/Heather%2520Headley_1_1_1581553578.jpg?itok=ex84XVJO
1118	Sin Frenos	La Quinta Estación	Armando Avila, producer; Armando Avila, Juan Carlos Moguel & Pepe Ortega, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BQuinta%2BEstaci%25C3%25B3n/La%2520Quinta%2520Estaci%25C3%25B3n_1_1_1581628767.jpg?itok=Q66Yx-Ix
1119	Los De Atras Vienen Conmigo	Calle 13	Rafael Arcante & Calle 13, producers; Iván Gutiérrez, Ramon Martinez, Edgardo Matta & Carlos Velázquez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/calle13-spotlight-130489913.png?itok=J7RRDmDb
1120	Ciclos	Luis Enrique	Sergio George, producer; Carlos Alvarez, Juan Mario "Mayito" Aracil & Juan Cristobal Losada, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BEnrique/Luis%2520Enrique_1_1_1581552336.jpg?itok=NYAg6KyW
1121	Necesito De Ti	Vicente Fernández	Manuel Cázares, producer; Gustavo Borner, Oscar Iglesias, Manuel Salazar & Sabas Sánchez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vicente%2BFernandez/Vicente%2520Fernandez_1_1_1592222005.jpg?itok=D_3nB9FL
1122	Borders Y Bailes	Los Texmaniacs	Daniel Sheehy, producer; Pete Reiniger & Joe Treviño, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTexmaniacs/Los%2520Texmaniacs_1_1_1583146139.jpg?itok=PH8PwfBq
1123	Tu Noche Con...Los Tigres Del Norte	Los Tigres Del Norte	Los Tigres Del Norte, producers; Joseph Pope & Alfonso Rodenas, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
1124	Tu Esclavo Y Amo	Lupillo Rivera	Lupillo Rivera	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lupillo%2BRivera/Lupillo%2520Rivera_1_1_1581637016.jpg?itok=g-kvyuoB
1125	Electric Dirt	Levon Helm	Larry Campbell, producer; Justin Guip, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Levon%2BHelm/Levon%2520Helm_1_1_1581555751.jpg?itok=GOP_aP9I
1126	The Crow: New Songs For The Five-String Banjo	Steve Martin	John McEuen, producer; Dae Bennett & Nick Sevilla, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BMartin/Steve%2520Martin_1_1_1581553492.jpg?itok=JMNEF-0M
1127	A Stranger Here	Ramblin' Jack Elliott	Joe Henry, producer; Ryan Freeland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramblin%2527%2BJack%2BElliott/Ramblin%2527%2520Jack%2520Elliott_1_1_1581555054.jpg?itok=cdYxsyiu
1128	Already Free	The Derek Trucks Band	Chris Shaw, Bobby Tis & Marty Wall, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BShaw/Chris%2520Shaw_1_1_1597165514.jpg?itok=nnoP21EE
1129	High Wide & Handsome: The Charlie Poole Project	Loudon Wainwright III	Dick Connette, producer; Scott Lehrer & Alex Venguer, engineers/mixers	
1130	Townes	Steve Earle	Steve Earle, producer; Steve Christensen & Ray Kennedy, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BEarle/Steve%2520Earle_1_1_1581551765.jpg?itok=LmUVLYnM
1131	Masters Of Hawaiian Slack Key Guitar, Volume 2	(Various Artists)	Peter DeAquino, Daniel Ho & Sterling Seaton, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BDeAquino/Peter%2520deAquino_1_1_1581555811.jpg?itok=XZORHIcT
1132	Spirit Wind North	Bill Miller	Bill Miller & Mike von Muchow, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BMiller/Bill%2520Miller_1_1_1581553867.jpg?itok=3clmmR9T
1133	Lay Your Burden Down	Buckwheat Zydeco	Steven Maxwell Berlin, producer; David Farrell, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buckwheat%2BZydeco/Buckwheat%2520Zydeco_1_1_1575372905.jpg?itok=_w_dvuKD
1134	Mind Control - Acoustic	Stephen Marley	James "Bonzai" Caruso, Marc Lee & Greg Morris, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BMarley/Stephen%2520Marley_1_1_1576290546.jpg?itok=0510HhwF
1135	Douga Mansa	Mamadou Diabate	Mamadou Diabate, producer; Will Russell, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mamadou%2BDiabate/Mamadou%2520Diabate_1_1_1597173135.jpg?itok=v6ehhpDk
1136	Throw Down Your Heart: Tales From The Acoustic Planet, Vol. 3 - Africa Sessions	Béla Fleck	Béla Fleck, producer; Robert Battaglia, Wellington Bowler & Dave Sinko, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1137	Family Time	Ziggy Marley	Ziggy Marley & Don Was, producers; Ziggy Marley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
1138	Aaaaah! Spooky, Scary Stories & Songs	Buck Howdy	Buck Howdy, producer; Steve Wetherbee, engineer/mixer	
1139	Always Looking Up	Michael J. Fox	Paul Ruben, producer; Zane Birdwell & Lance Neal, engineers/mixers	
1140	A Colbert Christmas: The Greatest Gift Of All!	Stephen Colbert	Steven M. Gold, David Javerbaum & Adam Schlesinger, producers; Todd Kilponen & Geoff Sanoff, engineers/mixers	
1141	West Side Story	David Caddick & David Lai, producers; Todd Whitelock, engineer/mixer (New Broadway Cast with Matt Cavenaugh, Josefina Scaglione & Others)	David Caddick & David Lai, producers; Todd Whitelock, engineer/mixer (New Broadway Cast with Matt Cavenaugh, Josefina Scaglione & Others)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_25.png?itok=o0gq1NJ1
1142	Slumdog Millionaire	(Various Artists)	A.R. Rahman, producer; Vivianne Chaix, P A Deepak & H Sridhar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/A.R.%2BRahman/A.R.%2520Rahman_1_1_1581609411.jpg?itok=IIDIx3IT
1143	Up	Michael Giacchino, composer; Dan Wallin, engineer/mixer (Various Artists)	Michael Giacchino, composer; Dan Wallin, engineer/mixer (Various Artists)	
1144	Jai Ho (From Slumdog Millionaire)	Gulzar, A.R. Rahman & Tanvi Shah, songwriters (A.R. Rahman, Sukhvinder Singh, Tanvi Shah, Mahalaxmi Iyer & Vijay Prakash)	Gulzar, A.R. Rahman & Tanvi Shah, songwriters (A.R. Rahman, Sukhvinder Singh, Tanvi Shah, Mahalaxmi Iyer & Vijay Prakash)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/A.R.%2BRahman/A.R.%2520Rahman_1_1_1581609411.jpg?itok=IIDIx3IT
1145	Married Life	Michael Giacchino, composer (Michael Giacchino)	Michael Giacchino, composer (Michael Giacchino)	
1146	West Side Story Medley	Bill Cunliffe, arranger (Resonance Big Band)	Bill Cunliffe, arranger (Resonance Big Band)	
1147	Quiet Nights	Claus Ogerman, arranger (Diana Krall)	Claus Ogerman, arranger (Diana Krall)	
1148	Everything That Happens Will Happen Today	Stefan Sagmeister, art director (David Byrne & Brian Eno)	Stefan Sagmeister, art director (David Byrne & Brian Eno)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stefan%2BSagmeister/Stefan%2520Sagmeister_1_1_1581624665.jpg?itok=kyVo3IYq
1149	Neil Young Archives Vol. I (1963-1972)	Gary Burden, Jenice Heo & Neil Young, art directors (Neil Young)	Gary Burden, Jenice Heo & Neil Young, art directors (Neil Young)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Neil%2BYoung/Neil%2520Young_1_1_1584104218.jpg?itok=OTYf-_5h
1150	The Complete Louis Armstrong Decca Sessions (1935-1946)	Dan Morgenstern, album notes writer (Louis Armstrong)	Dan Morgenstern, album notes writer (Louis Armstrong)	
1151	The Complete Chess Masters (1950-1967)	Andy McKaie, compilation producer; Erick Labson, mastering engineer (Little Walter)	Andy McKaie, compilation producer; Erick Labson, mastering engineer (Little Walter)	
1152	Ellipse	Imogen Heap, engineer (Imogen Heap)	Imogen Heap, engineer (Imogen Heap)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Imogen%2BHeap/Imogen%2520Heap_1_1_1578385125.jpg?itok=Ec7F2w7F
1153	Brendan O'Brien	Brendan O'Brien		
1154	When Love Takes Over (Electro Extended Remix)	David Guetta, remixer (David Guetta Featuring Kelly Rowland)	David Guetta, remixer (David Guetta Featuring Kelly Rowland)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BGuetta/David%2520Guetta_1_1_1575364563.jpg?itok=B5yFuqa3
1155	Transmigration	Michael J. Bishop, surround mix engineer; Michael J. Bishop, surround mastering engineer; Elaine L. Martone, surround producer (Robert Spano, Atlanta Symphony Orchestra & Choruses)	Michael J. Bishop, surround mix engineer; Michael J. Bishop, surround mastering engineer; Elaine L. Martone, surround producer (Robert Spano, Atlanta Symphony Orchestra & Choruses)	
1156	Mahler: Symphony No. 8; Adagio From Symphony No. 10	Peter Laenger, engineer (Michael Tilson Thomas & San Francisco Symphony)	Peter Laenger, engineer (Michael Tilson Thomas & San Francisco Symphony)	
1157	Steven Epstein	Steven Epstein		
1158	Ravel: Daphnis Et Chloé	James Levine, conductor; Elizabeth Ostrow, producer; Jesse Lewis, John Newton & Dirk Sobotka, engineers/mixers; Mark Donahue, engineer (Boston Symphony Orchestra)	James Levine, conductor; Elizabeth Ostrow, producer; Jesse Lewis, John Newton & Dirk Sobotka, engineers/mixers; Mark Donahue, engineer (Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jesse%2BLewis/Jesse%2520Lewis_1_1_1581633813.jpg?itok=6K2b3BoZ
1159	Britten: Billy Budd	Daniel Harding, conductor; John Fraser, producer; Ian Bostridge, Neal Davies, Nathan Gunn, Jonathan Lemalu, Matthew Rose & Gidon Saks, soloists; Neil Hutchinson & Jonathan Stokes, engineers/mixers (Gentlemen Of The London Symphony Chorus; London Symphony Orchestra)	Daniel Harding, conductor; John Fraser, producer; Ian Bostridge, Neal Davies, Nathan Gunn, Jonathan Lemalu, Matthew Rose & Gidon Saks, soloists; Neil Hutchinson & Jonathan Stokes, engineers/mixers (Gentlemen Of The London Symphony Chorus; London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ian%2BBostridge/Ian%2520Bostridge_1_1_1581564595.jpg?itok=lJMXGOsM
1160	Prokofiev: Piano Concertos Nos. 2 & 3	Evgeny Kissin; Jay David Saks, producer; Arne Akselberg, Neil Hutchinson, Tim Martyn & Jonathan Stokes, engineers/mixers (Philharmonia Orchestra)	Evgeny Kissin; Jay David Saks, producer; Arne Akselberg, Neil Hutchinson, Tim Martyn & Jonathan Stokes, engineers/mixers (Philharmonia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Evgeny%2BKissin/Evgeny%2520Kissin_1_1_1581564216.jpg?itok=IgnAnZWm
1161	Journey To The New World	Sharon Isbin, soloist; David Frost, producer; Tom Lazarus & Tim Martyn, engineers/mixers	Sharon Isbin, soloist; David Frost, producer; Tom Lazarus & Tim Martyn, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sharon%2BIsbin/Sharon%2520Isbin_1_1_1581559530.jpg?itok=JJswqfRn
1342	The Audacity Of Hope: Thoughts On Reclaiming The American Dream	Barack Obama	Jacob Bronstein, producer	
1162	Intimate Letters	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), ensembles; Da-Hong Seetoo, producer; Da-Hong Seetoo, engineer/mixer	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), ensembles; Da-Hong Seetoo, producer; Da-Hong Seetoo, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
1163	Lang, David: The Little Match Girl Passion	Robina G. Young, producer; Paul Hillier, conductor; Ars Nova Copenhagen (Thomas Kiorbye) & Theatre Of Voices (Thomas Kiorbye), ensembles; Brad Michel, engineer/mixer	Robina G. Young, producer; Paul Hillier, conductor; Ars Nova Copenhagen (Thomas Kiorbye) & Theatre Of Voices (Thomas Kiorbye), ensembles; Brad Michel, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ars%2BNova%2BCopenhagen/Ars%2520Nova%2520Copenhagen_1_1_1581612950.jpg?itok=s3qDebaC
1164	Verismo Arias	Renée Fleming, soloist; David Frost, producer; Mike Hatch & Richard King, engineers/mixers (Marco Armiliato; Orchestra Sinfonica Di Milano Giuseppi Verdi)	Renée Fleming, soloist; David Frost, producer; Mike Hatch & Richard King, engineers/mixers (Marco Armiliato; Orchestra Sinfonica Di Milano Giuseppi Verdi)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Renee%2BFleming/Ren%25C3%25A9e%2520Fleming_1_1_1581553784.jpg?itok=YfPtYzYB
1165	Higdon, Jennifer: Percussion Concerto	Jennifer Higdon, composer	Jennifer Higdon, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHigdon/Jennifer%2520Higdon_1_1_1597169142.jpg?itok=KWYGxb6d
1166	Yo-Yo Ma & Friends: Songs Of Joy And Peace	Yo-Yo Ma & Various Artists	Steven Epstein, producer; Richard King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
1167	Boom Boom Pow	The Black Eyed Peas	Mathew Cullen & Mark Kudsi, video directors; Javier Jimenez, Anna Joseph & Patrick Nugent, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1168	The Beatles Love - All Together Now	(Various Artists)	Adrian Wills, video director; Martin Bolduc & Jonathan Clyde, video producers	
1169	Please Read The Letter	Robert Plant & Alison Krauss	T Bone Burnett, producer; Mike Piersante, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BPlant/Robert%2520Plant_1_1_1591112980.jpg?itok=6LLLbn4I
1170	Raising Sand	Robert Plant & Alison Krauss	T Bone Burnett, producer; Mike Piersante, engineer/mixer; Gavin Lurssen, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BPlant/Robert%2520Plant_1_1_1591112980.jpg?itok=6LLLbn4I
1171	Viva La Vida	Coldplay (Guy Berryman, Jon Buckland, Will Champion & Chris Martin), songwriters (Coldplay)	Coldplay (Guy Berryman, Jon Buckland, Will Champion & Chris Martin), songwriters (Coldplay)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1172	Adele	Adele		
1173	Chasing Pavements	Adele	Adele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adele/Adele_1_1_1584090130.jpg?itok=xlwW6t3a
1174	Say	John Mayer	John Mayer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMayer/John%2520Mayer_1_1_1578384892.jpg?itok=QM4MUEXo
1175	Rich Woman	Robert Plant & Alison Krauss	Robert Plant & Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BPlant/Robert%2520Plant_1_1_1591112980.jpg?itok=6LLLbn4I
1176	I Dreamed There Was No War	Eagles	Eagles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
1177	Jingle All The Way	Béla Fleck & The Flecktones	Béla Fleck & The Flecktones	
1178	Rockferry	Duffy	Duffy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Duffy/Duffy_1_1_1575367157.jpg?itok=SZax37Ty
1179	Harder Better Faster Stronger	Daft Punk	Thomas Bangalter & Guy-Manuel De Homem-Christo, producers; Thomas Bangalter & Guy-Manuel De Homem-Christo, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daft%2BPunk/Daft%2520Punk_1_1_1578385203.jpg?itok=hx6oiajd
1180	Alive 2007	Daft Punk	Daft Punk	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daft%2BPunk/Daft%2520Punk_1_1_1578385203.jpg?itok=hx6oiajd
1181	Still Unforgettable	Natalie Cole	Natalie Cole & Gail Deadrick, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
1182	Sex On Fire	Kings Of Leon	Kings Of Leon	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kings%2BOf%2BLeon/Kings%2520Of%2520Leon_1_1_1581551852.jpg?itok=O23kL1hd
1183	Wax Simulacra	The Mars Volta	The Mars Volta	
1184	My Apocalypse	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
1185	Peaches En Regalia	Zappa Plays Zappa Featuring Steve Vai & Napoleon Murphy Brock	Zappa Plays Zappa Featuring Steve Vai & Napoleon Murphy Brock	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BVai/Steve%2520Vai_1_1_1575363487.jpg?itok=vqfOH8tM
1186	Girls In Their Summer Clothes	Bruce Springsteen, songwriter (Bruce Springsteen)	Bruce Springsteen, songwriter (Bruce Springsteen)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1187	Viva La Vida Or Death And All His Friends	Coldplay	Markus Dravs, Brian Eno & Rik Simpson, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1188	In Rainbows	Radiohead	Nigel Godrich, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Radiohead/Radiohead_1_1_1591112885.jpg?itok=l2Pr-TrB
1189	Superwoman	Alicia Keys	Alicia Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1190	Miss Independent	Ne-Yo	Ne-Yo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ne-Yo/Ne-Yo_1_1_1578385363.jpg?itok=gNtECxOd
1191	Stay With Me (By The Sea)	Al Green Featuring John Legend	Al Green Featuring John Legend	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
1438	Blah Blah Blah: Stories About Clams, Swamp Monsters, Pirates & Dogs	Bill Harley	David Correia, engineer/mixer	
1192	You've Got The Love I Need	Al Green Featuring Anthony Hamilton	Al Green Featuring Anthony Hamilton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
1193	Be OK	Chrisette Michele Featuring will.i.am	Chrisette Michele Featuring will.i.am	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chrisette%2BMichele/Chrisette%2520Michele_1_1_1588264820.jpg?itok=8kEMdEEK
1194	Jennifer Hudson	Jennifer Hudson	Clive Davis & Larry Jackson, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHudson/Jennifer%2520Hudson_1_1_1581554832.jpg?itok=5KxEp7oS
1195	Growing Pains	Mary J. Blige	Chris "Tek" O'Ryan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BJ.%2BBlige/Mary%2520J.%2520Blige_1_1_1578385686.jpg?itok=8LNddY-k
1196	A Milli	Lil Wayne	Lil Wayne	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lil%2BWayne/Lil%2520Wayne_1_1_1591112963.jpg?itok=mBLj5AjP
1197	Swagga Like Us	Jay-Z & T.I. Featuring Kanye West & Lil Wayne	Jay-Z & T.I. Featuring Kanye West & Lil Wayne	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1198	American Boy	Estelle Featuring Kanye West	Estelle Featuring Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Estelle/Estelle_1_1_1581555020.jpg?itok=zhjNzz39
1199	Lollipop	Darius "Deezle" Harrison, Lil Wayne, James Scheffer, Static Major & Rex Zamor, songwriters (Lil Wayne Featuring Static Major)	Darius "Deezle" Harrison, Lil Wayne, James Scheffer, Static Major & Rex Zamor, songwriters (Lil Wayne Featuring Static Major)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lil%2BWayne/Lil%2520Wayne_1_1_1591112963.jpg?itok=mBLj5AjP
1200	Tha Carter III	Lil Wayne	Lil Wayne	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lil%2BWayne/Lil%2520Wayne_1_1_1591112963.jpg?itok=mBLj5AjP
1201	Last Name	Carrie Underwood	Carrie Underwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
1202	Letter To Me	Brad Paisley	Brad Paisley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brad%2BPaisley/Brad%2520Paisley_1_1_1588597264.jpg?itok=sxJrMhhM
1203	Stay	Sugarland	Sugarland	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sugarland/Sugarland_1_1_1578385175.jpg?itok=sayrO6rN
1204	Killing The Blues	Robert Plant & Alison Krauss	Robert Plant & Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BPlant/Robert%2520Plant_1_1_1591112980.jpg?itok=6LLLbn4I
1205	Cluster Pluck	Brad Paisley, James Burton, Vince Gill, John Jorgenson, Albert Lee, Brent Mason, Redd Volkaert & Steve Wariner	Brad Paisley, James Burton, Vince Gill, John Jorgenson, Albert Lee, Brent Mason, Redd Volkaert & Steve Wariner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brad%2BPaisley/Brad%2520Paisley_1_1_1588597264.jpg?itok=sxJrMhhM
1206	Troubadour	George Strait	Tony Brown & George Strait, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BStrait/George%2520Strait_1_1_1575360424.jpg?itok=bnxtediV
1207	Honoring The Fathers Of Bluegrass: Tribute To 1946 And 1947	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs & Kentucky Thunder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
1208	Peace Time	Jack DeJohnette	Pablo Ben Surman & Jack DeJohnette, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BDeJohnette/Jack%2520DeJohnette_1_1_1581553554.jpg?itok=53hn1SWY
1209	Randy In Brasil	Randy Brecker	Ruriá Duprat, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BBrecker/Randy%2520Brecker_1_1_1575373868.jpg?itok=9QxyBydg
1210	Loverly	Cassandra Wilson	Cassandra Wilson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cassandra%2BWilson/Cassandra%2520Wilson_1_1_1581619641.jpg?itok=Q2Q4RQd0
1211	Be-Bop	Terence Blanchard, soloist	Terence Blanchard, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terence%2BBlanchard/Terence%2520Blanchard_1_1_1581553525.jpg?itok=gNLy5qGf
1212	The New Crystal Silence	Chick Corea & Gary Burton	Gary Burton & Chick Corea, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
1213	Monday Night Live At The Village Vanguard	The Vanguard Jazz Orchestra	The Vanguard Jazz Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vanguard%2BJazz%2BOrchestra/Vanguard%2520Jazz%2520Orchestra_1_1_1581553758.jpg?itok=4V2R7eb6
1214	Song For Chico	Arturo O'Farrill & The Afro-Latin Jazz Orchestra	Arturo O'Farrill & The Afro-Latin Jazz Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Arturo%2BO%2527Farrill%2B%2526%2BThe%2BAfro%2BLatin%2BJazz%2BOrchestra/Arturo%2520O%2527Farrill%2520%2526%2520the%2520Afro%2520Latin%2520Jazz%2520Orchestra_1_1_1581554698.jpg?itok=z1qt4IDc
1215	Get Up	Mary Mary	Mary Mary	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BMary/Mary%2520Mary_1_1_1581552175.jpg?itok=Z9q62Tcg
1216	Help Me Believe	Kirk Franklin, songwriter (Kirk Franklin)	Kirk Franklin, songwriter (Kirk Franklin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
1217	Alive And Transported	TobyMac	Tobymac & Dave Wyatt, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TobyMac/TobyMac_1_1_1598306051.jpg?itok=SpVwnS-G
1218	Thy Kingdom Come	CeCe Winans	Danny Duncan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
1219	Lovin' Life	Gaither Vocal Band	The Gaither Vocal Band, producers; Chad Evans & Pete Greene, engineers/mixers	
1220	Down In New Orleans	The Blind Boys Of Alabama	Chris Goldsmith, producer; Jimmy Hoyson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blind%2BBoys%2Bof%2BAlabama/Blind%2520Boys%2520of%2520Alabama_1_1_1575366367.jpg?itok=qYvCJB6l
1221	The Fight Of My Life	Kirk Franklin	Kirk Franklin & Harold Martin, producers; Chris Godbey, John Jaszcz, Ryan Moys & Tre Nagella, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
1223	45	Jaguares	Howard Willing, producer; Eduardo del Aguila, David Thoener & Howard Willing, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eduardo%2Bdel%2BAguila/Eduardo%2520del%2520Aguila_1_1_1581657327.jpg?itok=it3Y5Bbo
1224	Los Extraterrestres	Wisin y Yandel	Victor Martinez & Ernesto Padilla, producers; Mario So, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wisin%2By%2BYandel/wisin%2520y%2520yandel_1_1_1581560935.jpg?itok=FSq-f57u
1225	Señor Bachata	José Feliciano	Marco Hernández, producer; Carlos Alvarez, Marc Lee, Nelson Reyneri, Jr., Dichens Salcedo & Javier Valverde, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BAlvarez/Carlos%2520Alvarez_1_1_1575374313.jpg?itok=OOAvTeWU
1226	Amor, Dolor Y Lágrimas: Música Ranchera	Mariachi Los Camperos de Nati Cano	Daniel Sheehy, producer; Salvador Sandoval, engineer	
1227	Canciones De Amor	Mariachi Divas	Alberto Jimenez Maeda, producer; Alberto Jimenez Maeda & Gilberto Morales, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mariachi%2BDivas%2BDe%2BCindy%2BShea/Mariachi%2520Divas%2520de%2520Cindy%2520Shea_1_1_1581557400.jpg?itok=wsySZtbw
1228	Viva La Revolucion	Ruben Ramos & The Mexican Revolution	Randy Caballero & Gilbert Velasquez, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BCaballero/Randy%2520Caballero_1_1_1581651502.jpg?itok=5wrc2bTr
1229	Raíces	Los Tigres Del Norte	Los Tigres Del Norte, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
1230	No Es De Madera	Joan Sebástian	Joan Sebastian, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joan%2BSebastian/Joan%2520Sebastian_1_1_1575363475.jpg?itok=t94zHm_l
1231	One Kind Favor	B.B. King	T Bone Burnett, producer; Mike Piersante, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1232	City That Care Forgot	Dr. John And The Lower 911	Jeff Jones "The Jedi Master", producer; Chris Finney, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BJohn/Dr.%2520John_1_1_1578385151.jpg?itok=crgtmith
1233	At 89	Pete Seeger	David Bernz, Jim Musselman & Pete Seeger, producers; Jonathon Dickau, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pete%2BSeeger/Pete%2520Seeger_1_1_1592492662.jpg?itok=a5mlzrMI
1234	Come To Me Great Mystery - Native American Healing Songs	(Various Artists)	Thomas A. Wasinger, producer; Thomas A. Wasinger, engineer	
1235	Ikena	Tia Carrere & Daniel Ho	Daniel Ho & Amy Ku'uleialoha Stillman, producers; Daniel Ho, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tia%2BCarrere/Tia%2520Carrere_1_1_1581623924.jpg?itok=T_aOBhjV
1236	Live At The 2008 New Orleans Jazz & Heritage Festival	BeauSoleil & Michael Doucet	Woods Drinkwater & Eli Kelly, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BDoucet/Michael%2520Doucet_1_1_1597164949.jpg?itok=N16lwGtn
1237	Jah Is Real	Burning Spear	Burning Spear	
1238	Ilembe: Honoring Shaka Zulu	Ladysmith Black Mambazo	Ladysmith Black Mambazo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ladysmith%2BBlack%2BMambazo/Ladysmith%2520Black%2520Mambazo_1_1_1585147865.jpg?itok=GRzbQUPR
1239	Global Drum Project	Mickey Hart, Zakir Hussain, Sikiru Adepoju & Giovanni Hidalgo	Mickey Hart & Zakir Hussain, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mickey%2BHart/Mickey%2520Hart_1_1_1581555448.jpg?itok=Ry7qjabP
1240	Let The Whole World Sing	Jimmy Sturr And His Orchestra	Joseph Donofrio, Kenneth R. Irwin & Tom Pick, producers; Joseph Donofrio, Kenneth R. Irwin, Dave Kowalski & Tom Pick, engineers; Mark Capps, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BKowalski/Dave%2520Kowalski_1_1_1581612682.jpg?itok=FaBZYMZ8
1241	Here Come The 123s	They Might Be Giants	Pat Dillett & They Might Be Giants, producers; They Might Be Giants (Marty Beller, John Flansburgh, John Linnell, Dan Miller & Daniel Weinkauf)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/They%2BMight%2BBe%2BGiants/They%2520Might%2520Be%2520Giants_1_1_1594669699.jpg?itok=Q9qBWA5t
1242	Yes To Running! Bill Harley Live	Bill Harley	Daniel P. Dauterive & Bill Harley, producers	
1243	An Inconvenient Truth (Al Gore)	Beau Bridges, Cynthia Nixon & Blair Underwood	Elisa Shokoff, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blair%2BUnderwood/Blair%2520Underwood_1_1_1581635889.jpg?itok=75yN-UyH
1244	It's Bad For Ya	George Carlin	George Carlin, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BCarlin/George%2520Carlin_1_1_1581556826.jpg?itok=nNDxviTK
1245	In The Heights	Lin-Manuel Miranda, composer & lyricist; Kurt Deutsch, Alex Lacamoire, Andres Levin, Lin-Manuel Miranda, Joel W. Moss & Bill Sherman, producers; Tim Latham & Joel W. Moss, engineers (Original Broadway Cast With Lin-Manuel Miranda And Others)	Lin-Manuel Miranda, composer & lyricist; Kurt Deutsch, Alex Lacamoire, Andres Levin, Lin-Manuel Miranda, Joel W. Moss & Bill Sherman, producers; Tim Latham & Joel W. Moss, engineers (Original Broadway Cast With Lin-Manuel Miranda And Others)	
1246	Juno	(Various Artists)	Peter Afterman, Jason Reitman & Margaret Yen, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jason%2BReitman/Jason%2520Reitman_1_1_1597178890.jpg?itok=DiK1P1i5
1247	The Dark Knight	James Newton Howard & Hans Zimmer, composers; Lorne Balfe, Alex Gibson, James Newton Howard & Hans Zimmer, producers (Hans Zimmer & James Newton Howard)	James Newton Howard & Hans Zimmer, composers; Lorne Balfe, Alex Gibson, James Newton Howard & Hans Zimmer, producers (Hans Zimmer & James Newton Howard)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BNewton%2BHoward/James%2520Newton%2520Howard_1_1_1597163052.jpg?itok=Cq1aYC-F
1248	Down To Earth (From Wall-E)	Peter Gabriel & Thomas Newman, songwriters (Peter Gabriel)	Peter Gabriel & Thomas Newman, songwriters (Peter Gabriel)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
1249	The Adventures Of Mutt	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
1250	Define Dancing	Peter Gabriel & Thomas Newman, arrangers (Thomas Newman)	Peter Gabriel & Thomas Newman, arrangers (Thomas Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
1254	Art Of Field Recording Volume I: Fifty Years Of Traditional American Music Documented By Art Rosenbaum	Steven Ledbetter & Art Rosenbaum, compilation producers; Michael Graves, mastering engineer (Various Artists)	Steven Ledbetter & Art Rosenbaum, compilation producers; Michael Graves, mastering engineer (Various Artists)	
1255	Consolers Of The Lonely	Joseph Chiccarelli, Vance Powell & Jack White, engineers (The Raconteurs)	Joseph Chiccarelli, Vance Powell & Jack White, engineers (The Raconteurs)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
1256	Rick Rubin	Rick Rubin		
1257	Electric Feel (Justice Remix)	Justice, remixers (MGMT)	Justice, remixers (MGMT)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Justice/Justice_1_1_1575363094.jpg?itok=NoZFQoef
1258	Mussorgsky: Pictures At An Exhibition; Night On Bald Mountain; Prelude To Khovanshchina	Michael J. Bishop, surround mix engineer; Michael J. Bishop, surround mastering engineer; Robert Woods, surround producer (Paavo Järvi & Cincinnati Symphony Orchestra)	Michael J. Bishop, surround mix engineer; Michael J. Bishop, surround mastering engineer; Robert Woods, surround producer (Paavo Järvi & Cincinnati Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/robert_woods_spotlight_2240326.png?itok=L6ELbWWF
1259	Traditions And Transformations: Sounds Of Silk Road Chicago	David Frost, Tom Lazarus & Christopher Willis, engineers (Miguel Harth-Bedoya, Alan Gilbert, Silk Road Ensemble, Wu Man, Yo-Yo Ma & Chicago Symphony Orchestra)	David Frost, Tom Lazarus & Christopher Willis, engineers (Miguel Harth-Bedoya, Alan Gilbert, Silk Road Ensemble, Wu Man, Yo-Yo Ma & Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFrost/David%2520Frost_1_1_1581561453.jpg?itok=SLeIAd03
1260	Weill: Rise And Fall Of The City Of Mahagonny	James Conlon, conductor; Anthony Dean Griffey, Patti LuPone & Audra McDonald, artists; Fred Vogler, producer	James Conlon, conductor; Anthony Dean Griffey, Patti LuPone & Audra McDonald, artists; Fred Vogler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BConlon/James%2520Conlon_1_1_1581619598.jpg?itok=I9ryTRFc
1261	Shostakovich: Symphony No. 4	Bernard Haitink, conductor; James Mallinson, producer; Christopher Willis, engineer (Chicago Symphony Orchestra)	Bernard Haitink, conductor; James Mallinson, producer; Christopher Willis, engineer (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bernard%2BHaitink/Bernard%2520Haitink_1_1_1581558203.jpg?itok=byprycUu
1262	Symphony Of Psalms	Simon Halsey, chorus master; Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Rundfunkchor Berlin; Berliner Philharmoniker)	Simon Halsey, chorus master; Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Rundfunkchor Berlin; Berliner Philharmoniker)	
1263	Schoenberg/Sibelius: Violin Concertos	Hilary Hahn; Sid McLauchlan & Arend Prohmann, producers; Stephan Flock, engineer/mixer (Swedish Radio Symphony Orchestra)	Hilary Hahn; Sid McLauchlan & Arend Prohmann, producers; Stephan Flock, engineer/mixer (Swedish Radio Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hilary%2BHahn/Hilary%2520Hahn_1_1_1581554020.jpg?itok=M3S8uHN7
1264	Piano Music Of Salonen, Stucky, And Lutoslawski	Gloria Cheng, soloist; Judith Sherman, producer; Judith Sherman, engineer	Gloria Cheng, soloist; Judith Sherman, producer; Judith Sherman, engineer	
1265	Carter, Elliott: String Quartets Nos. 1 And 5	Pacifica Quartet (Sibbi Bernhardsson, Simin Ganatra, Masumi Per Rostad & Brandon Vamos), ensembles; Judith Sherman, producer; William Mayhone, engineer/mixer	Pacifica Quartet (Sibbi Bernhardsson, Simin Ganatra, Masumi Per Rostad & Brandon Vamos), ensembles; Judith Sherman, producer; William Mayhone, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pacifica%2BQuartet/Pacifica%2520Quartet_1_1_1581553820.jpg?itok=ZhPSMnjw
1266	Spotless Rose: Hymns To The Virgin Mary	Blanton Alspaugh, producer; Charles Bruffy, conductor; Phoenix Chorale, ensembles; John Newton, engineer/mixer	Blanton Alspaugh, producer; Charles Bruffy, conductor; Phoenix Chorale, ensembles; John Newton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/blantonalspaugh-spotlight-138818063.png?itok=vaeY5L2L
1267	Corigliano: Mr. Tambourine Man: Seven Poems Of Bob Dylan	Hila Plitmann, soloist; John Corigliano & Tim Handley, producers; John Corigliano, Tim Handley & Tom Lazarus, engineers (JoAnn Falletta; Buffalo Philharmonic Orchestra)	Hila Plitmann, soloist; John Corigliano & Tim Handley, producers; John Corigliano, Tim Handley & Tom Lazarus, engineers (JoAnn Falletta; Buffalo Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hila%2BPlitmann/Hila%2520Plitmann_1_1_1581625579.jpg?itok=8ai2gcyz
1268	Mr. Tambourine Man: Seven Poems Of Bob Dylan	John Corigliano, composer	John Corigliano, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BCorigliano/John%2520Corigliano_1_1_1581556241.jpg?itok=Y4enPIF4
1269	Simple Gifts	The King's Singers	The King's Singers, producer; Gregg Jackman, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BKing%2527s%2BSingers/The%2520King%2527s%2520Singers_1_1_1581560853.jpg?itok=EAUr4A0N
1270	Pork And Beans	Weezer	Mathew Cullen, video director; Bernard Rahill, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Weezer/Weezer_1_1_1595613286.jpg?itok=ckz1FlN6
1271	Runnin' Down A Dream	Tom Petty & The Heartbreakers	Peter Bogdanovich, video director; Skot Bright, Tony Dimitriades & George Drakoulias, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/tom_petty_spotlight_634661788.png?itok=gRB8hMEG
1272	Rehab	Amy Winehouse	Mark Ronson, producer; Tom Elmhirst, Samuel "Vaughan" Merrick, Dom Morley, Mark Ronson & Gabriel Roth, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BWinehouse/Amy%2520Winehouse_1_1_1578384847.jpg?itok=E0x96uqF
1273	River: The Joni Letters	Herbie Hancock	Leonard Cohen, Norah Jones, Joni Mitchell, Corinne Bailey Rae, Luciana Souza & Tina Turner, featured artists; Herbie Hancock & Larry Klein, producers; Helik Hadar, engineer/mixer; Bernie Grundman, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
1274	Amy Winehouse	Amy Winehouse		
1275	What Goes Around...Comes Around	Justin Timberlake	Justin Timberlake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1276	Makes Me Wonder	Maroon 5	Maroon 5	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maroon%2B5/Maroon%25205_1_1_1596058027.jpg?itok=qbK5x3qs
1277	Gone Gone Gone (Done Moved On)	Robert Plant & Alison Krauss	Robert Plant & Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BPlant/Robert%2520Plant_1_1_1591112980.jpg?itok=6LLLbn4I
1278	One Week Last Summer	Joni Mitchell	Joni Mitchell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
1279	The Mix-Up	Beastie Boys	Michael Diamond, Adam Horovitz & Adam Yauch, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beastie%2BBoys/Beastie%2520Boys_1_1_1575359161.jpg?itok=w3Sud-IR
1280	Back To Black	Amy Winehouse	Mark Ronson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BWinehouse/Amy%2520Winehouse_1_1_1578384847.jpg?itok=E0x96uqF
1281	LoveStoned/I Think She Knows	Justin Timberlake	Nate (Danja) Hills, Tim Mosley & Justin Timberlake, producers; Jimmy Douglass & Tim Mosley, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1282	We Are The Night	The Chemical Brothers	Tom Rowlands & Ed Simons, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
1283	Call Me Irresponsible	Michael Bublé	David Foster & Humberto Gatica, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBubl%25C3%25A9/Michael%2520Bubl%25C3%25A9_1_1_1578385534.jpg?itok=QJp6bog2
1284	Radio Nowhere	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1285	Icky Thump	The White Stripes	The White Stripes	
1286	The Pretender	Foo Fighters	Foo Fighters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
1287	Final Six	Slayer	Slayer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Slayer/Slayer_1_1_1579193703.jpg?itok=XHIRItU4
1288	Once Upon A Time In The West	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1289	Echoes, Silence, Patience & Grace	Foo Fighters	Gil Norton, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
1290	No One	Alicia Keys	Alicia Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1291	Future Baby Mama	Prince	Prince	https://www.grammy.com/sites/com/files/styles/artist_circle/public/prince_042020_0.jpg?itok=eQ9ByZQU
1292	Disrespectful	Chaka Khan Featuring Mary J. Blige	Chaka Khan Featuring Mary J. Blige	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
1293	In My Songs	Gerald Levert	Gerald Levert	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gerald%2BLevert/Gerald%2520Levert_1_1_1581628925.jpg?itok=HHK2nTyS
1294	Daydreamin'	Lupe Fiasco Featuring Jill Scott	Lupe Fiasco Featuring Jill Scott	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lupe%2BFiasco/Lupe%2520Fiasco_1_1_1579701199.jpg?itok=aWydfbfn
1295	Funk This	Chaka Khan	Bobby Ross Avila, Issiah J. Avila, James Harris III, Terry Lewis & James "Big Jim" Wright, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
1296	Because Of You	Ne-Yo	Ne-Yo, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ne-Yo/Ne-Yo_1_1_1578385363.jpg?itok=gNtECxOd
1297	Southside	Common Featuring Kanye West	Common Featuring Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Common/Common_1_1_1598532469.jpg?itok=HGe5yznm
1298	Umbrella	Rihanna Featuring Jay-Z	Rihanna Featuring Jay-Z	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rihanna/Rihanna_1_1_1581552340.jpg?itok=0Uce4ss-
1299	Good Life	Aldrin Davis, Mike Dean, Faheem Najm & Kanye West, songwriters (Kanye West Featuring T-Pain)	Aldrin Davis, Mike Dean, Faheem Najm & Kanye West, songwriters (Kanye West Featuring T-Pain)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mike%2BDean/Mike%2520Dean_1_1_1596101711.jpg?itok=yVyXxhuC
1300	Graduation	Kanye West	Kanye West, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
1301	Before He Cheats	Carrie Underwood	Carrie Underwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
1302	Stupid Boy	Keith Urban	Keith Urban	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keith%2BUrban/Keith%2520Urban_1_1_1578385294.jpg?itok=gfvuBXWm
1303	How Long	Eagles	Eagles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
1304	Lost Highway	Willie Nelson & Ray Price	Willie Nelson & Ray Price	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
1305	Throttleneck	Brad Paisley	Brad Paisley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brad%2BPaisley/Brad%2520Paisley_1_1_1588597264.jpg?itok=sxJrMhhM
1306	These Days	Vince Gill	Vince Gill, John N. Hobbs & Justin Niebank, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
1307	The Bluegrass Diaries	Jim Lauderdale	Randy Kohrs, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BLauderdale/Jim%2520Lauderdale_1_1_1575362745.jpg?itok=tuRkXjEB
1308	Crestone	Paul Winter Consort	Paul Winter Consort	
1309	Avant Gershwin	Patti Austin	Michael Abene, Patti Austin & Lucas Schmid, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BAbene/Michael%2520Abene_1_1_1581565534.jpg?itok=w_PNoJlS
1310	Anagram	Michael Brecker, soloist	Michael Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
1439	Our Endangered Values: America's Moral Crisis	Jimmy Carter	Elisa Shokoff, producer; John P. St. Denis & Steven Strassman, engineers/mixers	
1311	Pilgrimage	Michael Brecker	Michael Brecker, Gil Goldstein, Pat Metheny & Steven Rodby, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
1312	A Tale Of God's Will (A Requiem For Katrina)	Terence Blanchard	Terence Blanchard, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terence%2BBlanchard/Terence%2520Blanchard_1_1_1581553525.jpg?itok=gNLy5qGf
1313	Funk Tango	Paquito D'Rivera Quintet?	Brenda Feliciano, producer	
1314	Blessed & Highly Favored	The Clark Sisters	The Clark Sisters	
1315	Never Gonna Break My Faith	Aretha Franklin & Mary J. Blige (Featuring The Harlem Boys Choir)	Aretha Franklin & Mary J. Blige (Featuring The Harlem Boys Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
1316	Before The Daylight's Shot	Ashley Cleveland	Ashley Cleveland & Kenny Greenberg, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BGreenberg/Kenny%2520Greenberg_1_1_1581658602.jpg?itok=sEsZ0XCy
1317	A Deeper Level	Israel And New Breed	Aaron Lindsey, producer	
1318	Salt Of The Earth	Ricky Skaggs & The Whites	Ricky Skaggs, Buck White, Cheryl White & Sharon White-Skaggs, producers; Brent King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
1319	Live - One Last Time	The Clark Sisters	Donald Lawrence, producer; James Auwarter, Craig Bauer, Todd Fairall, David Habegger, John Jaszcz, Darius Lawrence, Donald Lawrence, Joseph Logsdson, Nelson Robinson & Raymond Rogers, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donald%2BLawrence/Donald%2520Lawrence_1_1_1594739006.jpg?itok=sLgm8I99
1320	Free To Worship	Fred Hammond	Fred Hammond, producer; Fred Hammond & Ray Hammond, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fred%2BHammond/Fred%2520Hammond_1_1_1594734471.jpg?itok=vfwX2luA
1321	El Tren De Los Momentos	Alejandro Sanz	Lulo Perez & Alejandro Sanz, producers; Carlos Alvarez, Lulo Perez, Thom Russo, Alejandro Sanz, Rafa Sardina & Pepo Sherman, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alejandro%2BSanz/Alejandro%2520Sanz_1_1_1581342907.jpg?itok=0YVrY2Gd
1322	No Hay Espacio	Black:Guayaba	Gabriel Calero, Carlos Colon, Gustavo Gonzalez Lugo, Javier A. Morales Negron & Carlos Ortiz, producers; Seth Atkins Horan, Paolo Capeles, Antonio Fornaris & Bob St. John, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BCol%25C3%25B3n-Izquierdo/Carlos%2520Col%25C3%25B3n-Izquierdo_1_1_1578518311.jpg?itok=8sC8-Xft
1323	Residente O Visitante	Calle 13	Iván Gutiéttrz, Ramon Martinez, Edgardo Matta & Carlos Velázquez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/calle13-spotlight-130489913.png?itok=J7RRDmDb
1324	La Llave De Mi Corazón	Juan Luis Guerra	Juan Luis Guerra, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juan%2BLuis%2BGuerra/Juan%2520Luis%2520Guerra_1_1_1581552062.jpg?itok=nyuSb_-7
1325	100% Mexicano	Pepe Aguilar	Pepe Aguilar, producer; Pepe Aguilar, Norberto Islas & Enrique Mendivil, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pepe%2BAguilar/Pepe%2520Aguilar_1_1_1578385715.jpg?itok=DMy8l6hK
1326	Before The Next Teardrop Falls	Little Joe & La Familia	Gilbert Velasquez, engineer	
1327	Detalles Y Emociones	Los Tigres Del Norte	Oscar Lara Angulo, Eduardo Hernandez, Hernan Hernandez, Jorge Hernandez & Luis Hernandez, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
1328	Te Va A Gustar	El Chapo	El Chapo, producer	
1329	Last Of The Great Mississippi Delta Bluesmen: Live In Dallas	Henry James Townsend, Joe Willie "Pinetop" Perkins, Robert Lockwood, Jr. & David "Honeyboy" Edwards	Jeffry Dyson, Michael Dyson & Scott Shuman, producers; Paul Grupp & Scott Shuman, engineers	
1330	The Road To Escondido	JJ Cale & Eric Clapton	JJ Cale, Eric Clapton & Simon Climie, producers; Alan Douglas & Mick Guzauski, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/JJ%2BCale/JJ%2520Cale_1_1_1581560584.jpg?itok=nv2gfhRs
1331	Dirt Farmer	Levon Helm	Larry Campbell & Amy Helm, producers; Justin Guip, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Levon%2BHelm/Levon%2520Helm_1_1_1581555751.jpg?itok=GOP_aP9I
1332	Washington Square Serenade	Steve Earle	John King, producer; Tom Camuso, John King & Josh Wilbur, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BEarle/Steve%2520Earle_1_1_1581551765.jpg?itok=LmUVLYnM
1333	Totemic Flute Chants	Johnny Whitehorse	Larry Mitchell, producer; Larry Mitchell, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larry%2BMitchell/Larry%2520Mitchell_1_1_1581555658.jpg?itok=0PpJiOTT
1334	Treasures Of Hawaiian Slack Key Guitar	(Various Artists)	Peter Deaquino, Daniel Ho & Sterling Seaton, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BDeAquino/Peter%2520deAquino_1_1_1581555811.jpg?itok=XZORHIcT
1335	Live! Worldwide	Terrance Simien & The Zydeco Experience	Joshua Murrell, producer; Joshua Murrell, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Terrance%2BSimien%2B%2526%2BThe%2BZydeco%2BExperience/Terrance%2520Simien%2520%2526%2520The%2520Zydeco%2520Experience_1_1_1581628613.jpg?itok=qSRlT1x4
1336	Mind Control	Stephen Marley	Stephen Marley, producer; Greg Morris, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BMarley/Stephen%2520Marley_1_1_1576290546.jpg?itok=0510HhwF
1337	African Spirit	Soweto Gospel Choir	Robin Hogarth, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soweto%2BGospel%2BChoir/Soweto%2520Gospel%2520Choir_1_1_1581629382.jpg?itok=kUiaTG4e
1338	Djin Djin	Angelique Kidjo	Tony Visconti, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ang%25C3%25A9lique%2BKidjo/Ang%25C3%25A9lique%2520Kidjo_1_1_1598366948.jpg?itok=wGfBf5NX
1339	Come Share The Wine	Jimmy Sturr And His Orchestra	Joseph Donofrio, Kenneth R. Irwin & Tom Pick, producers; Mark Capps, Joseph Donofrio, Kenneth R. Irwin & Tom Pick, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
1340	A Green And Red Christmas	The Muppets	The Muppets	
1341	Harry Potter And The Deathly Hallows	Jim Dale	Orli Moscowitz & David Rapkin, producers	
1343	The Distant Future	Flight Of The Conchords	Jemaine Clement, Bret McKenzie & Mickey Petralia, producers; Matt Shane, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flight%2BOf%2BThe%2BConchords/Flight%2520of%2520the%2520Conchords_1_1_1581551889.jpg?itok=i0qAmEOx
1344	Spring Awakening	Duncan Sheik, composer; Steven Sater, lyricist; Duncan Sheik, producer; Michael Tudor, engineer (Original Broadway Cast With Jonathan Groff, Lea Michele & Others)	Duncan Sheik, composer; Steven Sater, lyricist; Duncan Sheik, producer; Michael Tudor, engineer (Original Broadway Cast With Jonathan Groff, Lea Michele & Others)	
1345	Love	(The Beatles)	George Martin & Giles Martin, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgemartin-spotlight-514811100.png?itok=b-Se_ovM
1346	Ratatouille	Michael Giacchino, composer (Various Artists)	Michael Giacchino, composer (Various Artists)	
1347	Love You I Do (From Dreamgirls)	Siedah Garrett & Henry Krieger, songwriters (Jennifer Hudson)	Siedah Garrett & Henry Krieger, songwriters (Jennifer Hudson)	
1348	Cerulean Skies	Maria Schneider, composer (Maria Schneider Orchestra)	Maria Schneider, composer (Maria Schneider Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maria%2BSchneider/Maria%2520Schneider_1_1_1581646132.jpg?itok=jf9f6nh5
1349	In A Silent Way	Vince Mendoza, arranger (Joe Zawinul)	Vince Mendoza, arranger (Joe Zawinul)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vincent%2BMendoza/Vince%2520Mendoza_1_1_1581562428.jpg?itok=3xtFsTEn
1350	I'm Gonna Live Till I Die	John Clayton, arranger (Queen Latifah)	John Clayton, arranger (Queen Latifah)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BClayton/John%2520Clayton_1_1_1581556883.jpg?itok=56xeCZ8U
1351	Cassadaga	Zachary Nipper, art director (Bright Eyes)	Zachary Nipper, art director (Bright Eyes)	
1352	What It Is!: Funky Soul And Rare Grooves (1967-1977)	Masaki Koike, art director (Various Artists)	Masaki Koike, art director (Various Artists)	
1353	John Work, III: Recording Black Culture	Bruce Nemerov, album notes writer (Various Artists)	Bruce Nemerov, album notes writer (Various Artists)	
1354	The Live Wire - Woody Guthrie In Performance 1949	Nora Guthrie & Jorge Arévalo Mateus, compilation producers; Jamie Howarth, Steve Rosenthal, Warren Russell-Smith & Kevin Short, mastering engineers (Woody Guthrie)	Nora Guthrie & Jorge Arévalo Mateus, compilation producers; Jamie Howarth, Steve Rosenthal, Warren Russell-Smith & Kevin Short, mastering engineers (Woody Guthrie)	
1355	Beauty & Crime	Tchad Blake, Cameron Craig, Emery Dobyns & Jimmy Hogarth, engineers (Suzanne Vega)	Tchad Blake, Cameron Craig, Emery Dobyns & Jimmy Hogarth, engineers (Suzanne Vega)	
1356	Mark Ronson	Mark Ronson		
1357	Bring The Noise (Benny Benassi Sfaction Remix)	Benny Benassi, remixer (Public Enemy)	Benny Benassi, remixer (Public Enemy)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Benny%2BBenassi/Benny%2520Benassi_1_1_1576322806.jpg?itok=15zwhztV
1358	Grechaninov: Passion Week	John Newton, engineer (Charles Bruffy, Phoenix Bach Choir & Kansas City Chorale)	John Newton, engineer (Charles Bruffy, Phoenix Bach Choir & Kansas City Chorale)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BNewton/John%2520Newton_1_1_1581631921.jpg?itok=7E-1ZB0f
1359	Tower: Made In America	Leonard Slatkin, conductor; Tim Handley, producer	Leonard Slatkin, conductor; Tim Handley, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BSlatkin/Leonard%2520Slatkin_1_1_1581623003.jpg?itok=g58yYZbQ
1360	Humperdinck: Hansel & Gretel	Charles Mackerras, conductor; Brian Couzens, producer; Rebecca Evans, Jane Henschel & Jennifer Larmore, soloists; Ralph Couzens, engineer (New London Children's Choir; Philharmonia Orchestra)	Charles Mackerras, conductor; Brian Couzens, producer; Rebecca Evans, Jane Henschel & Jennifer Larmore, soloists; Ralph Couzens, engineer (New London Children's Choir; Philharmonia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BLarmore/Jennifer%2520Larmore_1_1_1597167405.jpg?itok=Yeahe4Be
1361	Brahms: Ein Deutsches Requiem	Simon Halsey, chorus master; Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Thomas Quasthoff & Dorothea Röschmann; Rundfunkchor Berlin; Berliner Philharmoniker)	Simon Halsey, chorus master; Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Thomas Quasthoff & Dorothea Röschmann; Rundfunkchor Berlin; Berliner Philharmoniker)	
1362	Barber/Korngold/Walton: Violin Concertos	James Ehnes; Denise Ball, producer; Don Harder, engineer (Vancouver Symphony Orchestra)	James Ehnes; Denise Ball, producer; Don Harder, engineer (Vancouver Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BEhnes/James%2520Ehnes_1_1_1591955923.jpg?itok=w7lFhh0Y
1363	Beethoven Sonatas, Vol. 3	Garrick Ohlsson, soloist; Adam Abeshouse, producer; Adam Abeshouse, engineer	Garrick Ohlsson, soloist; Adam Abeshouse, producer; Adam Abeshouse, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Garrick%2BOhlsson/Garrick%2520Ohlsson_1_1_1581561412.jpg?itok=mW5xxynU
1364	Strange Imaginary Animals	Eighth Blackbird (Matt Albert, Molly Alicia Barth, Matthew Duvall, Lisa Kaplan, Michael Maccaferri & Nicholas Photinos), ensembles; Judith Sherman, producer; Judith Sherman, engineer	Eighth Blackbird (Matt Albert, Molly Alicia Barth, Matthew Duvall, Lisa Kaplan, Michael Maccaferri & Nicholas Photinos), ensembles; Judith Sherman, producer; Judith Sherman, engineer	
1365	Stravinsky: Apollo, Concerto In D; Prokofiev: 20 Visions Fugitives	Philipp Nedel, producer; Yuri Bashmet, conductor; Moscow Soloists, ensembles; Michael Brammann, engineer	Philipp Nedel, producer; Yuri Bashmet, conductor; Moscow Soloists, ensembles; Michael Brammann, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yuri%2BBashmet/Yuri%2520Bashmet_1_1_1581613730.jpg?itok=8cNaTmWP
1366	Lorraine Hunt Lieberson Sings Peter Lieberson: Neruda Songs	Lorraine Hunt Lieberson, soloist; Dirk Sobotka, producer; Mark Donahue & John Newton, engineers (James Levine; Boston Symphony Orchestra)	Lorraine Hunt Lieberson, soloist; Dirk Sobotka, producer; Mark Donahue & John Newton, engineers (James Levine; Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lorraine%2BHunt%2BLieberson/Lorraine%2520Hunt%2520Lieberson_1_1_1581558890.jpg?itok=vWH7UWVi
1367	Made In America	Joan Tower, composer	Joan Tower, composer	
1368	A Love Supreme: The Legacy Of John Coltrane	Turtle Island Quartet	Thomas C. Moore, producer; Michael J. Bishop, engineer	
1369	God's Gonna Cut You Down	Johnny Cash	Tony Kaye, video director; Rachel Curl, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
1370	The Confessions Tour	Madonna	Jonas Akerlund, video director; Sara Martin & David May, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madonna/Madonna_1_1_1578385371.jpg?itok=LkjJTTOf
1371	Not Ready To Make Nice	Dixie Chicks	Rick Rubin, producer; Richard Dodd, Jim Scott & Chris Testa, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
1372	Taking The Long Way	Dixie Chicks	Rick Rubin, producer; Richard Dodd, Jim Scott & Chris Testa, engineers/mixers; Richard Dodd, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
1373	Carrie Underwood	Carrie Underwood		
1374	Ain't No Other Man	Christina Aguilera	Christina Aguilera	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christina%2BAguilera/Christina%2520Aguilera_1_1_1578385663.jpg?itok=Txdy_9Pq
1375	Waiting On The World To Change	John Mayer	John Mayer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMayer/John%2520Mayer_1_1_1578384892.jpg?itok=QM4MUEXo
1376	My Humps	The Black Eyed Peas	The Black Eyed Peas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1377	For Once In My Life	Tony Bennett & Stevie Wonder	Tony Bennett & Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
1378	Mornin'	George Benson (& Al Jarreau)	George Benson (& Al Jarreau)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
1379	Continuum	John Mayer	Steve Jordan, producer; Michael H. Brauer, Joe Ferla & Chad Franscoviak, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMayer/John%2520Mayer_1_1_1578384892.jpg?itok=QM4MUEXo
1380	Sexy Back	Justin Timberlake & Timbaland	Nate (Danja) Hills, Timbaland & Justin Timberlake, producers; Jimmy Douglass, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1381	Confessions On A Dance Floor	Madonna	Stuart Price, producer; Mark Stent, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madonna/Madonna_1_1_1578385371.jpg?itok=LkjJTTOf
1382	Duets:  An American Classic	Tony Bennett	Phil Ramone, producer; Dae Bennett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
1383	Someday Baby	Bob Dylan	Bob Dylan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
1384	Dani California	Red Hot Chili Peppers	Red Hot Chili Peppers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Red%2BHot%2BChili%2BPeppers/Red%2520Hot%2520Chili%2520Peppers_1_1_1581551756.jpg?itok=IbT8gggV
1385	Eyes Of The Insane	Slayer	Slayer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Slayer/Slayer_1_1_1579193703.jpg?itok=XHIRItU4
1386	The Wizard Turns On...	The Flaming Lips	The Flaming Lips	
1387	Stadium Arcadium	Red Hot Chili Peppers	Rick Rubin, producer; Ryan Hewitt, Mark Linett & Andrew Scheps, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Red%2BHot%2BChili%2BPeppers/Red%2520Hot%2520Chili%2520Peppers_1_1_1581551756.jpg?itok=IbT8gggV
1388	St. Elsewhere	Gnarls Barkley	Ben Allen & Kennie Takahashi, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gnarls%2BBarkley/Gnarls%2520Barkley_1_1_1581360966.jpg?itok=50Ayt31D
1389	Be Without You	Mary J. Blige	Mary J. Blige	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BJ.%2BBlige/Mary%2520J.%2520Blige_1_1_1578385686.jpg?itok=8LNddY-k
1390	Heaven	John Legend	John Legend	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
1391	Family Affair	(Sly & The Family Stone), John Legend, Joss Stone With Van Hunt	(Sly & The Family Stone), John Legend, Joss Stone With Van Hunt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
1392	God Bless The Child	George Benson & Al Jarreau Featuring Jill Scott	George Benson & Al Jarreau Featuring Jill Scott	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
1393	Crazy	Gnarls Barkley	Gnarls Barkley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gnarls%2BBarkley/Gnarls%2520Barkley_1_1_1581360966.jpg?itok=50Ayt31D
1394	The Breakthrough	Mary J. Blige	Patrick Dillett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BJ.%2BBlige/Mary%2520J.%2520Blige_1_1_1578385686.jpg?itok=8LNddY-k
1395	B'Day	Beyoncé	Jim Caruana & Jason Goldstein, engineers/mixers	
1396	What You Know	T.I.	T.I.	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/T.I./T.I._1_1_1581551761.jpg?itok=PhMZulxm
1397	Ridin	Chamillionaire Featuring Krayzie Bone	Chamillionaire Featuring Krayzie Bone	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chamillionaire/Chamillionaire_1_1_1575373463.jpg?itok=jAI6QOJ6
1398	My Love	Justin Timberlake Featuring T.I.	Justin Timberlake Featuring T.I.	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1399	Money Maker	Ludacris & Pharrell Williams, songwriters (Ludacris Featuring Pharrell)	Ludacris & Pharrell Williams, songwriters (Ludacris Featuring Pharrell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ludacris/Ludacris_1_1_1576262428.jpg?itok=69XMQ2Ad
1400	Release Therapy	Ludacris	Joshua Monroy & Phil Tan, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ludacris/Ludacris_1_1_1576262428.jpg?itok=69XMQ2Ad
1401	Jesus, Take The Wheel	Carrie Underwood	Carrie Underwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carrie%2BUnderwood/Carrie%2520Underwood_1_1_1578385088.jpg?itok=xMPMyQhX
1402	The Reason Why	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
1403	Who Says You Can't Go Home	Bon Jovi & Jennifer Nettles	Bon Jovi & Jennifer Nettles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bon%2BJovi/Bon%2520Jovi_1_1_1581609469.jpg?itok=NASyH-Yl
1404	Whiskey Before Breakfast	Bryan Sutton & Doc Watson	Bryan Sutton & Doc Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bryan%2BSutton/Bryan%2520Sutton_1_1_1575366597.jpg?itok=ZegXuLpC
1405	Instrumentals	Ricky Skaggs And Kentucky Thunder	Lee Groitzsch & Brent King, engineers/mixers	
1406	Amarantine	Enya	Nicky Ryan, producer; Nicky Ryan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Enya/Enya_1_1_1581558707.jpg?itok=E89V1itS
1407	The Hidden Land	Béla Fleck & The Flecktones	Richard Battaglia & Robert Battaglia, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1408	Turned To Blue	Nancy Wilson	Jay Ashby & Martin J. Ashby, producers; Jay Dudt, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_15.png?itok=9iY7Y3e0
1409	Some Skunk Funk	Michael Brecker, soloist	Michael Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
1410	The Ultimate Adventure	Chick Corea	Bernie Kirsh, Al Schmitt & Buck Snow, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
1411	Simpático	The Brian Lynch/Eddie Palmieri Project	Dave Darlington, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BLynch/Brian%2520Lynch_1_1_1581624871.jpg?itok=mSQPKfUl
1412	Victory	Yolanda Adams	Yolanda Adams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yolanda%2BAdams/Yolanda%2520Adams_1_1_1581559847.jpg?itok=zk1UUbFK
1413	Imagine Me	Kirk Franklin, songwriter (Kirk Franklin)	Kirk Franklin, songwriter (Kirk Franklin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
1414	Turn Around	Jonny Lang	Drew Ramsey & Shannon Sanders, producers; Matt Hyde & F. Reid Shippen, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jonny%2BLang/Jonny%2520Lang_1_1_1581552157.jpg?itok=ufGM01Qf
1415	Wherever You Are	Third Day	Brown Bannister, producer; Steve Bishir, Karl Egsieker & F. Reid Shippen, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Third%2BDay/Third%2520Day_1_1_1581551858.jpg?itok=vUbg7NPR
1416	Glory Train	Randy Travis	Kyle Lehning, producer; Kyle Lehning & Casey R. Wood, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BTravis/Randy%2520Travis_1_1_1575366507.jpg?itok=U4bp_0pX
1417	Alive In South Africa	Israel & New Breed	Aaron Lindsey, producer; Danny Duncan & Salvo, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Israel%2B%2526%2BNew%2BBreed/Israel%2520%2526%2520New%2520Breed_1_1_1597750205.jpg?itok=boSpwjL6
1418	Hero	Kirk Franklin	Chris Godbey & Shaun Martin, producers; Chris Godbey, Eric Hartman & John Jaszcz, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
1419	Adentro	Arjona	Ben Wisch, engineer/mixer	
1420	Limón Y Sal	Julieta Venegas	Cachorro López, producer; Juan Blas Caballero, Demian Nava, Sebastián Schon, Cesar Sogbe, Coti Sorokin & Matías Sorokin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julieta%2BVenegas/Julieta%2520Venegas_1_1_1575359265.jpg?itok=l9hL5ftw
1421	Amar Es Combatir	Maná	Thom Russo, engineer/mixer	
1422	Directo Al Corazón	Gilberto Santa Rosa	Jose Lugo, producer; Rolando Alejandro, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BLugo/Jose%2520Lugo_1_1_1597180907.jpg?itok=wFL5AI88
1423	Historias De Mi Tierra	Pepe Aguilar	Norberto Islas, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pepe%2BAguilar/Pepe%2520Aguilar_1_1_1578385715.jpg?itok=DMy8l6hK
1424	Sigue El Taconazo	Chente Barrera y Taconazo	Gilberto Velasquez, producer	
1425	Historias Que Contar	Los Tigres Del Norte	Eduardo Hernandez, Joseph Pope & Walter Romero, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
1426	Más Allá Del Sol	Joan Sebástian	José Ángel Cabrera, Ismael Gomez, Dennis Parker & Daniel Estevez San Angel, engineers/mixers	
1427	Risin' With The Blues	Ike Turner	Ike Turner, Jr., producer; Alexander Track, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ike%2BTurner/Ike%2520Turner_1_1_1597163837.jpg?itok=6awSl7oe
1428	After The Rain	Irma Thomas	Scott Billington, producer; David Farrell, Paul Q. Kolderie, Steve Reynolds & Adam Taylor, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Adam%2BTaylor/Adam%2520Taylor_1_1_1588846736.jpg?itok=wlMDx5RV
1429	We Shall Overcome - The Seeger Sessions	Bruce Springsteen	Bob Clearmountain & Toby Scott, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1430	Modern Times	Bob Dylan	Chris Shaw, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
1431	Dance With The Wind	Mary Youngblood	Tom Wasinger, producer; Tom Wasinger, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BYoungblood/Mary%2520Youngblood_1_1_1597163228.jpg?itok=rQMsl9sD
1432	Legends Of Hawaiian Slack Key Guitar - Live From Maui	(Various Artists)	(Various Artists)	
1433	Love Is My Religion	Ziggy Marley	Marc Moreau & Dave Way, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
1434	Blessed	Soweto Gospel Choir	Robin Hogarth, producer; Fernando Perdigao, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soweto%2BGospel%2BChoir/Soweto%2520Gospel%2520Choir_1_1_1581629382.jpg?itok=kUiaTG4e
1435	Wonder Wheel - Lyrics By Woody Guthrie	The Klezmatics	Danny Blume, producer; Danny Blume, Gus Oberg & Steve Rosenthal, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BKlezmatics/The%2520Klezmatics_1_1_1581561467.jpg?itok=xJz9hSLi
1436	Polka In Paradise	Jimmy Sturr & His Orchestra	Joe Donofrio, Ken Irwin & Tom Pick, producers; Mark Capps, Joe Donofrio, Ken Irwin & Tom Pick, engineers/mixers	
1437	Catch That Train!	Dan Zanes And Friends	Daniel Zanes	
1440	With Ossie And Ruby:  In This Life Together	Ossie Davis & Ruby Dee	Taro Meyer, producer; Peter Pantelis & Steven Strassman, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ruby%2BDee/Ruby%2520Dee_1_1_1597174343.jpg?itok=UqVi88ue
1441	The Carnegie Hall Performance	Lewis Black	Dan Schlissel, producer; Scott Jacoby, Ian Stearns & Leszek Maria Wojcik, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lewis%2BBlack/Lewis%2520Black_1_1_1581554695.jpg?itok=n1HH__D9
1442	Jersey Boys	Robert Gaudio, producer; Pete Karam, engineer/mixer (Original Broadway Cast With Christian Hoff, Daniel Reichard, J. Robert Spencer, John Lloyd Young & Others)	Robert Gaudio, producer; Pete Karam, engineer/mixer (Original Broadway Cast With Christian Hoff, Daniel Reichard, J. Robert Spencer, John Lloyd Young & Others)	
1443	Walk The Line	Joaquin Phoenix & Various Artists	T Bone Burnett, producer; Mike Piersante, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/t_bone_burnett_spotlight_609763428.png?itok=_teXgyr1
1444	Memoirs Of A Geisha	John Williams, composer; Shawn Murphy, engineer/mixer (Itzhak Perlman, Yo-Yo Ma & John Williams)	John Williams, composer; Shawn Murphy, engineer/mixer (Itzhak Perlman, Yo-Yo Ma & John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
1445	Our Town (From Cars)	Randy Newman, songwriter (James Taylor)	Randy Newman, songwriter (James Taylor)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
1446	A Prayer For Peace	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
1447	Three Ghouls	Chick Corea, arranger (Chick Corea)	Chick Corea, arranger (Chick Corea)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
1448	10,000 Days	Adam Jones, art director (Tool)	Adam Jones, art director (Tool)	
1449	If You Got To Ask, You Ain't Got It!	Dan Morgenstern, album notes writer (Fats Waller)	Dan Morgenstern, album notes writer (Fats Waller)	
1450	Lost Sounds: Blacks And The Birth Of The Recording Industry 1891-1922	Meagan Hennessey & Richard Martin, compilation producers; Tim Brooks, David Giovannoni & Richard Martin, mastering engineers (Various Artists)	Meagan Hennessey & Richard Martin, compilation producers; Tim Brooks, David Giovannoni & Richard Martin, mastering engineers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BMartin/Richard%2520Martin_1_1_1581630474.jpg?itok=NqjGxCWr
1451	At War With The Mystics	Dave Fridmann & The Flaming Lips (Wayne Coyne, Steven Drozd & Michael Ivins), engineers (The Flaming Lips)	Dave Fridmann & The Flaming Lips (Wayne Coyne, Steven Drozd & Michael Ivins), engineers (The Flaming Lips)	
1452	Talk (Thin White Duke Mix)	Jacques Lu Cont, remixer (Coldplay)	Jacques Lu Cont, remixer (Coldplay)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jacques%2BLu%2BCont/Jacques%2520Lu%2520Cont_1_1_1575370380.jpg?itok=sgTv-Tf3
1453	Morph The Cat	Elliot Scheiner, surround mix engineer; Darcy Proper, surround mastering engineer; Donald Fagen, surround producer (Donald Fagen)	Elliot Scheiner, surround mix engineer; Darcy Proper, surround mastering engineer; Donald Fagen, surround producer (Donald Fagen)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donald%2BFagen/Donald%2520Fagen_1_1_1575359943.jpg?itok=0SyfTRpC
1454	Elgar: Enigma Variations; Britten: The Young Person's Guide To The Orchestra, Four Sea Interludes	Michael J. Bishop, engineer (Paavo Järvi & Cincinnati Symphony Orchestra)	Michael J. Bishop, engineer (Paavo Järvi & Cincinnati Symphony Orchestra)	
1455	Elaine Martone	Elaine Martone		
1456	Mahler: Symphony No. 7	Michael Tilson Thomas, conductor; Andreas Neubronner, producer	Michael Tilson Thomas, conductor; Andreas Neubronner, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BTilson%2BThomas/Michael%2520Tilson%2520Thomas_1_1_1575368818.jpg?itok=he1ja-mb
1457	Golijov: Ainadamar: Fountain Of Tears	Robert Spano, conductor; Valerie Gross & Sid McLauchlan, producers; Kelley O'Connor, Jessica Rivera & Dawn Upshaw, soloists; Stephan Flock & Wolf-Dieter Karwatky, engineers (Women Of The Atlanta Symphony Orchestra Chorus; Atlanta Symphony Orchestra)	Robert Spano, conductor; Valerie Gross & Sid McLauchlan, producers; Kelley O'Connor, Jessica Rivera & Dawn Upshaw, soloists; Stephan Flock & Wolf-Dieter Karwatky, engineers (Women Of The Atlanta Symphony Orchestra Chorus; Atlanta Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BSpano/Robert%2520Spano_1_1_1581624999.jpg?itok=iI86-V-V
1458	Pärt: Da Pacem	Paul Hillier, conductor; Brad Michel & Robina G. Young, producers; Brad Michel, engineer/mixer (Estonian Philharmonic Chamber Choir)	Paul Hillier, conductor; Brad Michel & Robina G. Young, producers; Brad Michel, engineer/mixer (Estonian Philharmonic Chamber Choir)	
1459	Messiaen: Oiseaux Exotiques (Exotic Birds)	Angelin Chang (Cleveland Chamber Symphony)	Angelin Chang (Cleveland Chamber Symphony)	
1460	Chopin: Nocturnes	Maurizio Pollini, soloist; Christopher Alder, producer; Klaus Hiemann & Oliver Rogalla Von Heyden, engineers	Maurizio Pollini, soloist; Christopher Alder, producer; Klaus Hiemann & Oliver Rogalla Von Heyden, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maurizio%2BPollini/Maurizio%2520Pollini_1_1_1597164830.jpg?itok=Y_g2PN3H
1461	Intimate Voices	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), ensembles; Da-Hong Seetoo, producer	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), ensembles; Da-Hong Seetoo, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
1462	Padilla: Sun Of Justice	Fred Vogler, producer; Peter Rutenberg, conductor; Los Angeles Chamber Singers' Capella (Corey Carleton), ensembles; Fred Vogler, engineer	Fred Vogler, producer; Peter Rutenberg, conductor; Los Angeles Chamber Singers' Capella (Corey Carleton), ensembles; Fred Vogler, engineer	
1463	Rilke Songs	Lorraine Hunt Lieberson, soloist	Lorraine Hunt Lieberson, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lorraine%2BHunt%2BLieberson/Lorraine%2520Hunt%2520Lieberson_1_1_1581558890.jpg?itok=vWH7UWVi
1496	Diamonds From Sierra Leone	DeVon Harris & Kanye West, songwriters (Kanye West)	DeVon Harris & Kanye West, songwriters (Kanye West)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
1464	Here It Goes Again	OK Go	Dan Konopka, Damian Kulash, Jr., Timothy Nordwind, Andy Ross & Trish Sie, video directors; Dan Konopka, Damian Kulash, Jr., Timothy Nordwind, Andy Ross & Trish Sie, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OK%2BGo/OK%2520Go_1_1_1581552336.jpg?itok=35nTsN1g
1465	Wings For Wheels: The Making Of Born To Run	Bruce Springsteen	Thom Zimny, video director; Thom Zimny, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1466	Boulevard Of Broken Dreams	Green Day	Rob Cavallo & Green Day, producers; Chris Lord-Alge & Doug McKean, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Green%2BDay/Green%2520Day_1_1_1578385279.jpg?itok=wr16YloS
1467	How To Dismantle An Atomic Bomb	U2	Brian Eno, Flood, Daniel Lanois, Jacknife Lee, Steve Lillywhite & Chris Thomas, producers; Greg Collins, Flood, Carl Glanville, Simon Gogerly, Nellee Hooper, Jacknife Lee & Steve Lillywhite, engineers/mixers; Arnie Acosta, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1468	Sometimes You Can't Make It On Your Own	U2 (Bono, Adam Clayton, Edge & Larry Mullen Jr.), songwriters (U2)	U2 (Bono, Adam Clayton, Edge & Larry Mullen Jr.), songwriters (U2)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1469	John Legend	John Legend		
1470	Since U Been Gone	Kelly Clarkson	Kelly Clarkson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kelly%2BClarkson/Kelly%2520Clarkson_1_1_1594057028.jpg?itok=mEUBzOGC
1471	From The Bottom Of My Heart	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
1472	This Love	Maroon 5	Maroon 5	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maroon%2B5/Maroon%25205_1_1_1596058027.jpg?itok=qbK5x3qs
1473	Feel Good Inc.	Gorillaz Featuring De La Soul	Gorillaz Featuring De La Soul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gorillaz/Gorillaz_1_1_1578385070.jpg?itok=dhbUpMtS
1474	Caravan	Les Paul	Les Paul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Les%2BPaul/Les%2520Paul_1_1_1581566246.jpg?itok=BGwZYUwQ
1475	At This Time	Burt Bacharach	Burt Bacharach, producer; Allen Sides, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burt%2BBacharach/Burt%2520Bacharach_1_1_1591113039.jpg?itok=N0i73S23
1476	Breakaway	Kelly Clarkson	Clive Davis, producer; Serban Ghenea, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kelly%2BClarkson/Kelly%2520Clarkson_1_1_1594057028.jpg?itok=mEUBzOGC
1477	Galvanize	The Chemical Brothers Featuring Q-Tip	The Chemical Brothers, producers; The Chemical Brothers (Tom Rowlands & Ed Simons) & Steve Dub, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
1478	Push The Button	The Chemical Brothers	The Chemical Brothers, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
1479	The Art Of Romance	Tony Bennett	Phil Ramone, producer; Dae Bennett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
1480	Devils & Dust	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1481	B.Y.O.B.	System Of A Down	System Of A Down	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/System%2BOf%2BA%2BDown/System%2520of%2520a%2520Down_1_1_1595604701.jpg?itok=bF-WsBMA
1482	Before I Forget	Slipknot	Slipknot	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Slipknot/Slipknot_1_1_1578385178.jpg?itok=Sdt38W1z
1483	69 Freedom Special	Les Paul & Friends	Les Paul & Friends	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Les%2BPaul/Les%2520Paul_1_1_1581566246.jpg?itok=BGwZYUwQ
1484	City Of Blinding Lights	U2 (Bono, Adam Clayton, Edge & Larry Mullen Jr.), songwriters (U2)	U2 (Bono, Adam Clayton, Edge & Larry Mullen Jr.), songwriters (U2)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1485	Get Behind Me Satan	The White Stripes	Jack White, producer; John P. Hampton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
1486	We Belong Together	Mariah Carey	Mariah Carey	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_20.png?itok=44psZoZr
1487	Ordinary People	John Legend	John Legend	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
1488	So Amazing	Beyoncé & Stevie Wonder	Beyoncé & Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
1489	A House Is Not A Home	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
1490	Welcome To Jamrock	Damian Marley	Damian Marley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Damian%2BMarley/Damian%2520Marley_1_1_1591265412.jpg?itok=Mm5lmYZ8
1491	Get Lifted	John Legend	John Legend, producer; Manny Marroquin, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLegend/John%2520Legend_1_1_1579170047.jpg?itok=pD4-OfrQ
1492	The Emancipation Of Mimi	Mariah Carey	Mariah Carey, producer; Philip Tan, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_20.png?itok=44psZoZr
1493	Gold Digger	Kanye West	Kanye West	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
1494	Don't Phunk With My Heart	The Black Eyed Peas	The Black Eyed Peas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1495	Numb/Encore	Jay-Z Featuring Linkin Park	Jay-Z Featuring Linkin Park	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1497	Late Registration	Kanye West	Jon Brion & Kanye West, producers; Mike Dean, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
1498	The Connection	Emmylou Harris	Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
1499	You'll Think Of Me	Keith Urban	Keith Urban	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keith%2BUrban/Keith%2520Urban_1_1_1578385294.jpg?itok=gfvuBXWm
1500	Restless	Alison Krauss And Union Station	Alison Krauss And Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
1501	Like We Never Loved At All	Faith Hill & Tim McGraw	Faith Hill & Tim McGraw	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Faith%2BHill/Faith%2520Hill_1_1_1581554831.jpg?itok=byNQrGei
1502	Unionhouse Branch	Alison Krauss And Union Station	Alison Krauss And Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
1503	Bless The Broken Road	Bobby Boyd, Jeff Hanna & Marcus Hummon, songwriters (Rascal Flatts)	Bobby Boyd, Jeff Hanna & Marcus Hummon, songwriters (Rascal Flatts)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BBoyd/Bobby%2520Boyd_1_1_1581612448.jpg?itok=6joV8Apq
1504	Lonely Runs Both Ways	Alison Krauss And Union Station	Alison Krauss + Union Station, producers; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
1505	The Company We Keep	The Del McCoury Band	Del McCoury & Ronnie McCoury, producers; Neal Cappellino, engineer/mixer	
1506	Silver Solstice	Paul Winter Consort	Dixon Van Winkle & Paul Winter, producers; Dixon Van Winkle, engineer/mixer	
1507	The Way Up	Pat Metheny Group	Lyle Mays, Pat Metheny & Steve Rodby, producers; Rob Eaton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
1508	Good Night, And Good Luck.	Dianne Reeves	Allen J. Sviridoff, producer; Leslie Ann Jones & Charles Paakkari, engineers/mixers	
1509	Why Was I Born?	Sonny Rollins, soloist	Sonny Rollins, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sonny%2BRollins/Sonny%2520Rollins_1_1_1581559379.jpg?itok=aQtIeKz0
1510	Beyond The Sound Barrier	Wayne Shorter Quartet	Wayne Shorter, producer; Rob Griffin, engineer/mixer	
1511	Overtime	Dave Holland Big Band	Dave Holland & Louise Holland, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BHolland/Dave%2520Holland_1_1_1575366094.jpg?itok=quzY-xff
1512	Listen Here!	Eddie Palmieri	Eddie Palmieri, Sr. & Richard J. Seidel, producers; Jon Fausty, engineer/mixer	
1513	Pray	CeCe Winans	CeCe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
1514	Be Blessed	Yolanda Adams, James Harris III, Terry Lewis & James Q. "Big Jim" Wright, songwriters (Yolanda Adams)	Yolanda Adams, James Harris III, Terry Lewis & James Q. "Big Jim" Wright, songwriters (Yolanda Adams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yolanda%2BAdams/Yolanda%2520Adams_1_1_1581559847.jpg?itok=zk1UUbFK
1515	Until My Heart Caves In	Audio Adrenaline	Jay Joyce, producer; David Leonard, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Audio%2BAdrenaline/Audio%2520Adrenaline_1_1_1596799500.jpg?itok=CmuUexCr
1516	Lifesong	Casting Crowns	Mark Miller, producer; Sam Hewitt, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Casting%2BCrowns/Casting%2520Crowns_1_1_1595967307.jpg?itok=-PNWYUFZ
1517	Rock Of Ages...Hymns & Faith	Amy Grant	Brown Bannister & Vince Gill, producers; Steve Bishir, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
1518	Psalms, Hymns & Spiritual Songs	Donnie McClurkin	Kevin Bond & Donnie McClurkin, producers; Kevin Bond, Ralph Cacciurri & Greg Hartman, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donnie%2BMcClurkin/Donnie%2520McClurkin_1_1_1581563402.jpg?itok=qm3AMw3N
1519	Purified	CeCe Winans	Keith Thomas, producer; Bill Whittington, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
1520	One Voice	Gladys Knight, choir director; Gladys Knight, producer; Elliot Peters, engineer/mixer (Gladys Knight & The Saints Unified Voices)	Gladys Knight, choir director; Gladys Knight, producer; Elliot Peters, engineer/mixer (Gladys Knight & The Saints Unified Voices)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gladys%2BKnight/Gladys%2520Knight_1_1_1575359715.jpg?itok=5ulEHeck
1521	Escucha	Laura Pausini	Dado Parisini & Laura Pausini, producers; Jon Jacobs, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Laura%2BPausini/Laura%2520Pausini_1_1_1575369953.jpg?itok=zam1d9HQ
1522	Fijación Oral Vol. 1	Shakira	Lester Mendez & Shakira, producers; Rob Jacobs, engineer/mixer; Kevin Killen, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shakira/Shakira_1_1_1594207397.jpg?itok=X_hiC5-c
1523	Bebo De Cuba	Bebo Valdés	Nat Chediak & Fernando Trueba, producers; Jim Anderson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bebo%2BVald%25C3%25A9s/Bebo%2520Vald%25C3%25A9s_1_1_1597163263.jpg?itok=294gA-Ht
1524	Son Del Alma	Willy Chirino	Willy Chirino & Luis J. Márquez, producers; Willy Chirino & Cornell "Doc" Wily, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willy%2BChirino/Willy%2520Chirino_1_1_1581553668.jpg?itok=3HU0B-a2
1525	México En La Piel	Luis Miguel	Luis Miguel, producer; David Reitzas & Rafa Sardina, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
1526	Chicanisimo	Little Joe Y La Familia	Bob Gallarza, producer; Bob Gallarza & Ernie Wells, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Little%2BJoe%2By%2BLa%2BFamilia/Little%2520Joe%2520y%2520La%2520Familia_1_1_1575368569.jpg?itok=bKg3LF-D
1527	80	B.B. King & Friends	Nathaniel Kunkel, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1528	Cost Of Living	Delbert McClinton	Delbert McClinton & Gary Nicholson, producers; Ray Kennedy, engineer/mixer; Matthew P. Andrews, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Delbert%2BMcClinton/Delbert%2520McClinton_1_1_1581554726.jpg?itok=j-MdZE80
1529	Fiddler's Green	Tim O'Brien	Tim O'Brien, producer; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tim%2BO%2527Brien/Tim%2520O%2527Brien_1_1_1581554966.jpg?itok=GVaH39TT
1530	Fair & Square	John Prine	Gary Paczosa & John Prine, producers; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BPrine/John%2520Prine_1_1_1584548203.jpg?itok=1soRAxYi
1531	Sacred Ground - A Tribute To Mother Earth	(Various Artists)	Jim Wilson, producer; Walker Barnard, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Walker%2BBarnard/Walker%2520Barnard_1_1_1597162621.jpg?itok=D4XxHyZ1
1532	Masters Of Hawaiian Slack Key Guitar - Vol. 1	(Various Artists)	(Various Artists)	
1533	In The Heart Of The Moon	Ali Farka Touré & Toumani Diabaté	Nick Gold, producer; Jerry Boys, engineer/mixer	
1534	Eletracústico	Gilberto Gil	Liminha, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gilberto%2BGil/Gilberto%2520Gil_1_1_1588264811.jpg?itok=Wx9mMrgL
1535	Shake, Rattle And Polka!	Jimmy Sturr And His Orchestra	Joe Donofrio, Kenneth R. Irwin & Tom Pick, producers; Mark Capps, engineer; Joe Donofrio, Kenneth R. Irwin, Tom Pick & Jimmy Sturr, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
1536	Songs From The Neighborhood - The Music Of Mister Rogers	(Various Artists)	(Various Artists)	
1537	Marlo Thomas & Friends: Thanks & Giving All Year Long	(Various Artists)	(Various Artists)	
1538	Dreams From My Father (Senator Barack Obama)	Senator Barack Obama	Senator Barack Obama	
1539	Never Scared	Chris Rock	Prince Paul, producer; Scott Harding, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BRock/Chris%2520Rock_1_1_1584097154.jpg?itok=tJCJsTxT
1540	Monty Python's Spamalot	Eric Idle, composer & lyricist; John Du Prez, composer; John Du Prez & Eric Idle, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast Including David Hyde Pierce, Tim Curry, Hank Azaria & Sara Ramirez)	Eric Idle, composer & lyricist; John Du Prez, composer; John Du Prez & Eric Idle, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast Including David Hyde Pierce, Tim Curry, Hank Azaria & Sara Ramirez)	
1541	Ray	Ray Charles	James Austin, Stuart Benjamin & Taylor Hackford, compilation producers	
1542	Believe (From The Polar Express)	Glen Ballard & Alan Silvestri, songwriters (Josh Groban)	Glen Ballard & Alan Silvestri, songwriters (Josh Groban)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glen%2BBallard/Glen%2520Ballard_1_1_1581553661.jpg?itok=yDYT4HTS
1543	Into The Light	Billy Childs, composer (Billy Childs Ensemble)	Billy Childs, composer (Billy Childs Ensemble)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BChilds/Billy%2520Childs_1_1_1581647571.jpg?itok=fGAL4PEd
1544	The Incredits	Gordon L. Goodwin, arranger (Various Artists)	Gordon L. Goodwin, arranger (Various Artists)	
1545	What Are You Doing The Rest Of Your Life?	Billy Childs, Gil Goldstein & Heitor Pereira, arrangers (Chris Botti & Sting)	Billy Childs, Gil Goldstein & Heitor Pereira, arrangers (Chris Botti & Sting)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BChilds/Billy%2520Childs_1_1_1581647571.jpg?itok=fGAL4PEd
1546	The Forgotten Arm	Aimee Mann & Gail Marowitz, art directors (Aimee Mann)	Aimee Mann & Gail Marowitz, art directors (Aimee Mann)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aimee%2BMann/Aimee%2520Mann_1_1_1575371225.jpg?itok=vY8vJDZ0
1547	The Legend	Ian Cuttler, art director (Johnny Cash)	Ian Cuttler, art director (Johnny Cash)	
1548	The Complete Library Of Congress Recordings By Alan Lomax	John Szwed, album notes writer (Jelly Roll Morton)	John Szwed, album notes writer (Jelly Roll Morton)	
1549	Back Home	Alan Douglas & Mick Guzauski, engineers (Eric Clapton)	Alan Douglas & Mick Guzauski, engineers (Eric Clapton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BDouglas/Alan%2520Douglas_1_1_1581558210.jpg?itok=c9MADWf0
1550	Steve Lillywhite	Steve Lillywhite		
1551	Superfly (Louie Vega EOL Mix)	Louie Vega, remixer (Curtis Mayfield)	Louie Vega, remixer (Curtis Mayfield)	
1552	Brothers In Arms - 20th Anniversary Edition	Chuck Ainlay, surround mix engineer; Bob Ludwig, surround mastering engineer; Chuck Ainlay & Mark Knopfler, surround producers (Dire Straits)	Chuck Ainlay, surround mix engineer; Bob Ludwig, surround mastering engineer; Chuck Ainlay & Mark Knopfler, surround producers (Dire Straits)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chuck%2BAinlay/Chuck%2520Ainlay_1_1_1581619507.jpg?itok=ND3jwoKe
1553	Mendelssohn: The Complete String Quartets	Da-Hong Seetoo, engineer (Emerson String Quartet)	Da-Hong Seetoo, engineer (Emerson String Quartet)	
1554	Tim Handley	Tim Handley		
1555	Bolcom: Songs Of Innocence And Of Experience	Leonard Slatkin, conductor; Tim Handley, producer	Leonard Slatkin, conductor; Tim Handley, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BSlatkin/Leonard%2520Slatkin_1_1_1581623003.jpg?itok=g58yYZbQ
1556	Shostakovich: Sym. No. 13	Mariss Jansons, conductor; Wilhelm Meister, producer; Wolfgang Karreth, engineer (Symphonieorchester Des Bayerischen Rundfunks)	Mariss Jansons, conductor; Wilhelm Meister, producer; Wolfgang Karreth, engineer (Symphonieorchester Des Bayerischen Rundfunks)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mariss%2BJansons/Mariss%2520Jansons_1_1_1597163788.jpg?itok=Qr5rTN6-
1557	Verdi: Falstaff	Colin Davis, conductor; James Mallinson, producer; Carlos Alvarez, Bulent Bezduz, Marina Domashenko, Jane Henschel, Ana Ibarra, Maria José Moreno & Michele Pertusi, soloists; Neil Hutchinson & Jonathan Stokes, engineers (London Symphony Chorus; London Symphony Orchestra)	Colin Davis, conductor; James Mallinson, producer; Carlos Alvarez, Bulent Bezduz, Marina Domashenko, Jane Henschel, Ana Ibarra, Maria José Moreno & Michele Pertusi, soloists; Neil Hutchinson & Jonathan Stokes, engineers (London Symphony Chorus; London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BAlvarez/Carlos%2520Alvarez_1_1_1597177266.jpg?itok=lNs3NZWV
1589	99 Problems	Jay-Z	Jay-Z	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
1558	Beethoven: Piano Cons. Nos. 2 & 3	Martha Argerich; Christopher Alder & Elfride Foroni, producers; Marco Galli, Wolf-Dieter Karwatky & Ulrich Vette, engineers (Mahler Chamber Orchestra)	Martha Argerich; Christopher Alder & Elfride Foroni, producers; Marco Galli, Wolf-Dieter Karwatky & Ulrich Vette, engineers (Mahler Chamber Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Martha%2BArgerich/Martha%2520Argerich_1_1_1581558099.jpg?itok=6qolqQJH
1559	Scriabin, Medtner, Stravinsky	Evgeny Kissin, soloist; Jay David Saks, producer; Tony Faulkner, engineer	Evgeny Kissin, soloist; Jay David Saks, producer; Tony Faulkner, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Evgeny%2BKissin/Evgeny%2520Kissin_1_1_1581564216.jpg?itok=IgnAnZWm
1560	Boulez: Le Marteau Sans Maître, Dérive 1 & 2	Helmut Burk, producer; Pierre Boulez, conductor; Ensemble InterContemporain (Odile Auboin, Vincent Bauer, Michel Cerutti, Samuel Favre, Marie-Therese Ghirardi & Emmanuelle Ophèle), ensembles; Stephan Flock & Wolf-Dieter Karwatky, engineers	Helmut Burk, producer; Pierre Boulez, conductor; Ensemble InterContemporain (Odile Auboin, Vincent Bauer, Michel Cerutti, Samuel Favre, Marie-Therese Ghirardi & Emmanuelle Ophèle), ensembles; Stephan Flock & Wolf-Dieter Karwatky, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
1561	Bach: Cantatas	Thomas Quasthoff, soloist; Christopher Alder, producer; Jürgen Bulgrin & Rainer Maillard, engineers (Rainer Kussmaul; Berlin Baroque Soloists)	Thomas Quasthoff, soloist; Christopher Alder, producer; Jürgen Bulgrin & Rainer Maillard, engineers (Rainer Kussmaul; Berlin Baroque Soloists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thomas%2BQuasthoff/Thomas%2520Quasthoff_1_1_1597163977.jpg?itok=JqYTPoI-
1562	4 + Four	Turtle Island String Quartet With Ying Quartet	Thomas C. Moore, producer; Jack Renner, engineer	
1563	Lose Control	Missy Elliott Featuring Ciara & Fat Man Scoop	Missy Elliott & Dave Meyers, video directors; Joseph Sasson, video producer	
1564	No Direction Home	Bob Dylan	Martin Scorsese, video director; Margaret Bodde, Susan Lacy, Jeff Rosen, Martin Scorsese, Nigel Sinclair & Anthony Wall, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Martin%2BScorsese/Martin%2520Scorsese_1_1_1589803148.jpg?itok=CE7CJuvw
1565	Here We Go Again	Ray Charles & Norah Jones	John R. Burk, producer; Mark Fleming, Terry Howard & Al Schmitt, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
1566	Genius Loves Company	Ray Charles & Various Artists	John R. Burk, Terry Howard, Don Mizell, Phil Ramone & Herbert Waltl, producers; Robert Fernandez, Mark Fleming, John Harris, Terry Howard, Pete Karam, Joel W. Moss, Seth Presant, Al Schmitt & Ed Thacker, engineers/mixers; Robert Hadley & Doug Sax, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
1567	Daughters	John Mayer, songwriter (John Mayer)	John Mayer, songwriter (John Mayer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMayer/John%2520Mayer_1_1_1578384892.jpg?itok=QM4MUEXo
1568	Maroon 5	Maroon 5		
1569	Sunrise	Norah Jones	Norah Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Norah%2BJones/Norah%2520Jones_1_1_1588264654.jpg?itok=tpWJ31fa
1570	11th Commandment	Ben Harper	Ben Harper	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ben%2BHarper/Ben%2520Harper_1_1_1578385482.jpg?itok=KpbF7evm
1571	Henry Mancini: Pink Guitar	(Various Artists)	(Various Artists)	
1572	Toxic	Britney Spears	Avant (a.k.a. Pontus Winnberg) & Bloodshy, producers; Niklas Flyckt, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Britney%2BSpears/Britney%2520Spears_1_1_1591112944.jpg?itok=nza7SzW0
1573	Kish Kash	Basement Jaxx	Basement Jaxx, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Basement%2BJaxx/Basement%2520Jaxx_1_1_1588264649.jpg?itok=eNZkx4Yd
1574	Stardust...The Great American Songbook Volume III	Rod Stewart	Steve Tyrell, producer; Andy Zulla, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rod%2BStewart/Rod%2520Stewart_1_1_1597047926.jpg?itok=EiY-IHxP
1575	Code Of Silence	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1576	Vertigo	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1577	Slither	Velvet Revolver	Velvet Revolver	
1578	Whiplash	Motörhead	Motörhead	
1579	Mrs. O'Leary's Cow	Brian Wilson	Brian Wilson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BWilson/Brian%2520Wilson_1_1_1596792375.jpg?itok=slERUDud
1580	American Idiot	Green Day	Rob Cavallo & Green Day, producers; Chris Lord-Alge & Doug McKean, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Green%2BDay/Green%2520Day_1_1_1578385279.jpg?itok=wr16YloS
1581	A Ghost Is Born	Wilco	Jim O'Rourke & Wilco, producers; Jim O'Rourke & Chris Shaw, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wilco/Wilco_1_1_1594669718.jpg?itok=50w8wrlG
1582	If I Ain't Got You	Alicia Keys	Alicia Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1583	My Boo	Usher & Alicia Keys	Usher & Alicia Keys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1584	Musicology	Prince	Prince	https://www.grammy.com/sites/com/files/styles/artist_circle/public/prince_042020_0.jpg?itok=eQ9ByZQU
1585	Cross My Mind	Jill Scott	Jill Scott	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jill%2BScott/Jill%2520Scott_1_1_1592255086.jpg?itok=vd5CHkvO
1586	You Don't Know My Name	Alicia Keys, Harold Lilly & Kanye West, songwriters (Alicia Keys)	Alicia Keys, Harold Lilly & Kanye West, songwriters (Alicia Keys)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1587	The Diary Of Alicia Keys	Alicia Keys	Alicia Keys, producer; Anthony Duino, Manny Marroquin & Ann Mincieli, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1588	Confessions	Usher	Usher	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1590	Let's Get It Started	The Black Eyed Peas	The Black Eyed Peas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEyed%2BPeas/Black%2520Eyed%2520Peas_1_1_1594058090.jpg?itok=VWncfxay
1591	Yeah!	Usher Featuring Lil Jon & Ludacris	Usher Featuring Lil Jon & Ludacris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1592	Jesus Walks	Miri Ben Ari, Che Smith & Kanye West, songwriters (Kanye West)	Miri Ben Ari, Che Smith & Kanye West, songwriters (Kanye West)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Che%2BSmith/Rhymefest_1_1_1581555678.jpg?itok=BcM8x3WH
1593	The College Dropout	Kanye West	Kanye West, producer; Manny Marroquin, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kanye%2BWest/Kanye%2520West_1_1_1589915429.jpg?itok=mofE9sC1
1594	Redneck Woman	Gretchen Wilson	Gretchen Wilson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gretchen%2BWilson/Gretchen%2520Wilson_1_1_1575360299.jpg?itok=oZoM9u0X
1595	Live Like You Were Dying	Tim McGraw	Tim McGraw	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tim%2BMcGraw/Tim%2520McGraw_1_1_1594887947.jpg?itok=3JS3OjqT
1596	Top Of The World	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
1597	Portland Oregon	Loretta Lynn & Jack White	Loretta Lynn & Jack White	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lorettalynn-spotlight-622594348.png?itok=6doLRowl
1598	Earl's Breakdown	Nitty Gritty Dirt Band Featuring Earl Scruggs, Randy Scruggs, Vassar Clements & Jerry Douglas	Nitty Gritty Dirt Band Featuring Earl Scruggs, Randy Scruggs, Vassar Clements & Jerry Douglas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nitty%2BGritty%2BDirt%2BBand/Nitty%2520Gritty%2520Dirt%2520Band_1_1_1581551913.jpg?itok=P7PuPqUN
1599	Van Lear Rose	Loretta Lynn	Jack White, producer; Eric McConnell & Stuart Sikes, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lorettalynn-spotlight-622594348.png?itok=6doLRowl
1600	Brand New Strings	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs, producer; Brent King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
1601	Returning	Will Ackerman	Will Ackerman & Corin Nelsen, producers; Corin Nelsen, engineer/mixer	
1602	Unspeakable	Bill Frisell	Hal Willner, producer; Eric Liljestrand, engineer/mixer	
1603	R.S.V.P. (Rare Songs, Very Personal)	Nancy Wilson	Jay Ashby & Martin J. Ashby, producers; Jay Ashby & Jay Dudt, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_15.png?itok=9iY7Y3e0
1604	Speak Like A Child	Herbie Hancock, soloist	Herbie Hancock, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
1605	Illuminations	McCoy Tyner With Gary Bartz, Terence Blanchard, Christian McBride & Lewis Nash	Elaine L. Martone, producer; Jack Renner, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/McCoy%2BTyner/McCoy%2520Tyner_1_1_1581555954.jpg?itok=oB3CFrUA
1606	Concert In The Garden	Maria Schneider Orchestra	Maria Schneider, producer; David Baker, Peter Carini & Maria Schneider, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maria%2BSchneider/Maria%2520Schneider_1_1_1581646132.jpg?itok=jf9f6nh5
1607	Land Of The Sun	Charlie Haden	Ruth Cameron, Charlie Haden & Gonzalo Rubalcaba, producers; Mario Garcia & Jay Newland, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BHaden/Charlie%2520Haden_1_1_1581553559.jpg?itok=fCFluGHd
1608	Heaven Help Us All	Ray Charles & Gladys Knight	Ray Charles & Gladys Knight	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
1609	Wire	Third Day	T. Paul Ebersold, producer; Skidd Mills & Brendan O'Brien, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Third%2BDay/Third%2520Day_1_1_1581551858.jpg?itok=vUbg7NPR
1610	All Things New	Steven Curtis Chapman	Brown Bannister & Steven Curtis Chapman, producers; Steve Bishir, Ryan Castle, Danny Duncan, Chris Lord-Alge, Jack Joseph Puig & Trina Shoemaker, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BCurtis%2BChapman/Steven%2520Curtis%2520Chapman_1_1_1595957925.jpg?itok=qj-xFTeX
1611	Worship & Faith	Randy Travis	Kyle Lehning, producer; Jason Lehning, Kyle Lehning & Casey R. Wood, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BTravis/Randy%2520Travis_1_1_1575366507.jpg?itok=U4bp_0pX
1612	There Will Be A Light	Ben Harper & The Blind Boys Of Alabama	Ben Harper, producer; Jimmy Hoyson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ben%2BHarper/Ben%2520Harper_1_1_1578385482.jpg?itok=KpbF7evm
1613	Nothing Without You	Smokie Norful	Smokie Norful	https://www.grammy.com/sites/com/files/styles/artist_circle/public/smokie_norful_spotlight_463020002.png?itok=E52zQaiJ
1614	Live...This is Your House	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	
1615	Amar Sin Mentiras	Marc Anthony	Estefano, producer; Julio Reyes Copello, Gustavo "Pichon" Dal Pont & Sebastian Krys, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BAnthony/Marc%2520Anthony_1_1_1597235686.jpg?itok=R1zcxTbN
1616	Street Signs	Ozomatli	Ozomatli & T-Ray, producers; Robert Carranza, Serban Ghenea & Anton Pukshansky, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ozomatli/Ozomatli_1_1_1581551826.jpg?itok=5p20dZYJ
1617	¡Ahora Sí!	Israel López "Cachao"	Andy Garcia, producer; Eric Schilling, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Israel%2BLopez/Israel%2520Lopez_1_1_1581615064.jpg?itok=ZNaQ7sh5
1618	Across 110th Street	Spanish Harlem Orchestra Featuring Rubén Blades	Oscar Hernandez & Aaron Luis Levinson, producers; Oscar Hernandez, Dave Kowalski, Aaron Luis Levinson & Phil Nicolo, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
1619	Intimamente	Intocable	René Martinez, producer; Malcolm Harper, Jr. & Jack Saenz, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ren%25C3%25A9%2BMartinez/Ren%25C3%25A9%2520Martinez_1_1_1578517784.jpg?itok=DY_loPHn
1621	Blues To The Bone	Etta James	Donto James, Etta James, Sametto James & Josh Sklair, producers; Donto James & David Z, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Etta%2BJames/Etta%2520James_1_1_1581553580.jpg?itok=Be8EV9Zw
1622	Keep It Simple	Keb' Mo'	Keb' Mo', producer; Mark Johnson & Keb' Mo', engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keb%2527Mo%2527/Keb%2520Mo_1_1_1581609755.jpg?itok=E1mi2WjB
1623	Beautiful Dreamer - The Songs Of Stephen Foster	(Various Artists)	(Various Artists)	
1624	The Revolution Starts...Now	Steve Earle	Steve Earle & Ray Kennedy, producers; Ray Kennedy, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BEarle/Steve%2520Earle_1_1_1581551765.jpg?itok=LmUVLYnM
1625	Cedar Dream Songs	Bill Miller	Bill Miller, producer; Emily R. Johnson, Adam Polanowski & Mike von Muchow, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BMiller/Bill%2520Miller_1_1_1581553867.jpg?itok=3clmmR9T
1626	Slack Key Guitar Volume 2	(Various Artists)	(Various Artists)	
1627	True Love	Toots & The Maytals	Richard S. Feldman, producer; Richard S. Feldman, Rudolph Valentino & Tom Weir, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rudolph%2BValentino/Rudolph%2520Valentino_1_1_1597179727.jpg?itok=1crmfsES
1628	Raise Your Spirit Higher	Ladysmith Black Mambazo	Joseph Shabalala, producer; John Lindemann, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ladysmith%2BBlack%2BMambazo/Ladysmith%2520Black%2520Mambazo_1_1_1585147865.jpg?itok=GRzbQUPR
1629	Egypt	Youssou N'Dour	Youssou N'Dour & Fathy Salama, producers; Philippe Brun, Alaa El-Kashif, Ndiaga N'Dour, Segui Niang & Khalid Ra'ouf, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fathy%2BSalama/Fathy%2520Salama_1_1_1581627467.jpg?itok=Qxm61tMw
1630	Let's Kiss: 25th Anniversary Album	Brave Combo	Carl Finch, producer; Matt Barnhart, Eric Delegard, Matt Stenson & Dave Willingham, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brave%2BCombo/Brave%2520Combo_1_1_1581553394.jpg?itok=-ctch2Hy
1631	cELLAbration! A Tribute To Ella Jenkins	(Various Artists)	(Various Artists)	
1632	The Train They Call The City Of New Orleans	Tom Chapin	Arnold Cardillo, producer; Rory Young, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BChapin/Tom%2520Chapin_1_1_1581554573.jpg?itok=5-VGlTNZ
1633	My Life	Bill Clinton	Jacob Bronstein & Daniel Zitt, producers; Scott Cresswell, engineer/mixer	
1634	The Daily Show With Jon Stewart Presents...America: A Citizen's Guide To Democracy Inaction	Jon Stewart And The Cast Of The Daily Show	Charles de Montebello, engineer/mixer	
1635	Wicked	Stephen Schwartz, composer & lyricist; Stephen Schwartz, producer; Frank Filipetti, engineer/mixer (Original Broadway Cast Recording With Kristin Chenoweth & Idina Menzel)	Stephen Schwartz, composer & lyricist; Stephen Schwartz, producer; Frank Filipetti, engineer/mixer (Original Broadway Cast Recording With Kristin Chenoweth & Idina Menzel)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BSchwartz/Stephen%2520Schwartz_1_1_1581564186.jpg?itok=AR2hk_XA
1636	Garden State	(Various Artists)	Zach Braff, compilation producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Zach%2BBraff/Zach%2520Braff_1_1_1581609806.jpg?itok=2F7uro2z
1637	The Lord Of The Rings - The Return Of The King	Howard Shore, composer; Howard Shore, producer; John J. Kurlander, engineer/mixer (Howard Shore)	Howard Shore, composer; Howard Shore, producer; John J. Kurlander, engineer/mixer (Howard Shore)	
1638	Into The West (From The Lord Of The Rings - The Return Of The King)	Annie Lennox, Howard Shore & Fran Walsh, songwriters (Annie Lennox)	Annie Lennox, Howard Shore & Fran Walsh, songwriters (Annie Lennox)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Annie%2BLennox/Annie%2520Lennox_1_1_1578385103.jpg?itok=LtI_1KuJ
1639	Merengue	Paquito D'Rivera, composer (Yo-Yo Ma)	Paquito D'Rivera, composer (Yo-Yo Ma)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paquito%2BD%2527Rivera/Paquito%2520D%2527Rivera_1_1_1581554599.jpg?itok=QYgXlw4P
1640	Past Present & Future	Slide Hampton, arranger (The Vanguard Jazz Orchestra)	Slide Hampton, arranger (The Vanguard Jazz Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Slide%2BHampton/Slide%2520Hampton_1_1_1581563685.jpg?itok=3Bndmf7X
1641	Once In A Lifetime	Stefan Sagmeister, art director (Talking Heads)	Stefan Sagmeister, art director (Talking Heads)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stefan%2BSagmeister/Stefan%2520Sagmeister_1_1_1581624665.jpg?itok=kyVo3IYq
1642	The Complete Columbia Recordings Of Woody Herman And His Orchestra & Woodchoppers (1945-1947)	Loren Schoenberg, album notes writer (Woody Herman & His Orchestra)	Loren Schoenberg, album notes writer (Woody Herman & His Orchestra)	
1643	Night Train To Nashville: Music City Rhythm & Blues, 1945-1970	Daniel Cooper & Michael D. Gray, compilation producers; Joseph M. Palmaccio & Alan Stoker, mastering engineers (Various Artists)	Daniel Cooper & Michael D. Gray, compilation producers; Joseph M. Palmaccio & Alan Stoker, mastering engineers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BCooper/Daniel%2520Cooper_1_1_1581627833.jpg?itok=dNe5TPX7
1644	John Shanks	John Shanks		
1645	It's My Life (Jacques Lu Cont's Thin White Duke Mix)	Jacques Lu Cont, remixer (No Doubt)	Jacques Lu Cont, remixer (No Doubt)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jacques%2BLu%2BCont/Jacques%2520Lu%2520Cont_1_1_1575370380.jpg?itok=sgTv-Tf3
1646	Higdon: City Scape; Concerto For Orchestra	Jack Renner, engineer (Robert Spano)	Jack Renner, engineer (Robert Spano)	
1647	Adams: On The Transmigration Of Souls	Lorin Maazel, conductor; John Adams & Lawrence L. Rock, producers	Lorin Maazel, conductor; John Adams & Lawrence L. Rock, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lorin%2BMaazel/Lorin%2520Maazel_1_1_1581553561.jpg?itok=LMgOk7mC
1648	Mozart: Le Nozze Di Figaro	René Jacobs, conductor; Martin Sauer, producer; Patrizia Ciofi, Véronique Gens, Simon Keenlyside, Angelika Kirchschlager & Lorenzo Regazzo, soloists; Reiner Kühl & Sebastian Roth, engineers/mixers (Concerto Köln)	René Jacobs, conductor; Martin Sauer, producer; Patrizia Ciofi, Véronique Gens, Simon Keenlyside, Angelika Kirchschlager & Lorenzo Regazzo, soloists; Reiner Kühl & Sebastian Roth, engineers/mixers (Concerto Köln)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ren%25C3%25A9%2BJacobs/Ren%25C3%25A9%2520Jacobs_1_1_1581621388.jpg?itok=N6NgCIbs
1649	Berlioz: Requiem	Robert Spano, conductor; Elaine L. Martone, producer; Michael J. Bishop & Jack Renner, engineers/mixers (Frank Lopardo; Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	Robert Spano, conductor; Elaine L. Martone, producer; Michael J. Bishop & Jack Renner, engineers/mixers (Frank Lopardo; Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BSpano/Robert%2520Spano_1_1_1581624999.jpg?itok=iI86-V-V
1650	Previn: Violin Concerto "Anne-Sophie"/Bernstein: Serenade	Anne-Sophie Mutter; Mark Buecker & Reinhild Schmidt, producers; Jürgen Bulgrin, Wolf-Dieter Karwatky, Reinhard Lagemann & Ulrich Vette, engineers/mixers (Boston Symphony Orchestra & London Symphony Orchestra)	Anne-Sophie Mutter; Mark Buecker & Reinhild Schmidt, producers; Jürgen Bulgrin, Wolf-Dieter Karwatky, Reinhard Lagemann & Ulrich Vette, engineers/mixers (Boston Symphony Orchestra & London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne-Sophie%2BMutter/Anne-Sophie%2520Mutter_1_1_1575370509.jpg?itok=ovUzRZx6
1651	Aire Latino (Morel, Villa-Lobos, Ponce, Etc.)	David Russell, soloist; Rosalind Ilett, producer; Thomas Knab, engineer/mixer	David Russell, soloist; Rosalind Ilett, producer; Thomas Knab, engineer/mixer	
1652	Prokofiev (Arr. Pletnev): Cinderella - Suite For Two Pianos/Ravel: Ma Mère L'Oye	Christian Gansch, producer; Rainer Maillard, engineer/mixer	Christian Gansch, producer; Rainer Maillard, engineer/mixer	
1653	Carlos Chávez - Complete Chamber Music, Vol. 2	Jan Karlin, producer; Jeff Von Der Schmidt, conductor; Matthew Snyder, engineer/mixer	Jan Karlin, producer; Jeff Von Der Schmidt, conductor; Matthew Snyder, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jan%2BKarlin/Jan%2520Karlin_1_1_1597176491.jpg?itok=PdTEFobJ
1654	Ives: Songs (The Things Our Fathers Loved; The Housatonic At Stockbridge, Etc.)	Susan Graham, soloist	Susan Graham, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Susan%2BGraham/Susan%2520Graham_1_1_1581558273.jpg?itok=rpaX0Mqn
1655	LAGQ's Guitar Heroes	Los Angeles Guitar Quartet	Robert Woods, producer; Robert J. Friedrich, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/robert_woods_spotlight_2240326.png?itok=L6ELbWWF
1656	Concert For George	(Various Artists)	David Leland, video director; Ray Cooper, Olivia Harrison & Jon Kamen, video producers	
1657	Clocks	Coldplay	Coldplay & Ken Nelson, producers; Coldplay (Guy Berryman, Jon Buckland, Will Champion, Phil Harvey & Chris Martin), Ken Nelson & Mark Phythian, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1658	Speakerboxxx/The Love Below	OutKast	André 3000, Big Boi & Carl Mo, producers; Vincent Alexander, Chris Carmouche, Terrence Cash, Kevin Davis, Reggie Dozier, John Frye, Robert Hannon, Padraic Kernin, Moka Nagatani, Pete Novak, Brian Paturalski, Neal H. Pogue, Dexter Simmons, Matt Still & Darrell Thorp, engineers/mixers; Brian "Big Bass" Gardner & Bernie Grundman, mastering engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OutKast/Outkast_1_1_1595810284.jpg?itok=U50l3oRY
1659	Dance With My Father	Richard Marx & Luther Vandross, songwriters (Luther Vandross)	Richard Marx & Luther Vandross, songwriters (Luther Vandross)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BMarx/Richard%2520Marx_1_1_1581371595.jpg?itok=9MJ-bpjr
1660	Evanescence	Evanescence		
1661	Beautiful	Christina Aguilera	Christina Aguilera	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christina%2BAguilera/Christina%2520Aguilera_1_1_1578385663.jpg?itok=Txdy_9Pq
1662	Cry Me A River	Justin Timberlake	Justin Timberlake	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1663	Underneath It All	No Doubt	No Doubt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/No%2BDoubt/No%2520Doubt_1_1_1575363074.jpg?itok=TcnJ030_
1664	Whenever I Say Your Name	Sting & Mary J. Blige	Sting & Mary J. Blige	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
1665	Marwa Blues	George Harrison	George Harrison	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BHarrison/George%2520Harrison_1_1_1578385501.jpg?itok=e1pFJtVR
1666	Mambo Sinuendo	Ry Cooder & Manuel Galbán	Ry Cooder, producer; Jerry Boys, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ry%2BCooder/Ry%2520Cooder_1_1_1597165966.jpg?itok=lh9JRMfR
1667	Justified	Justin Timberlake	Chad Hugo & Pharrell Williams, producers; Serban Ghenea, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_21.png?itok=nLQjmfit
1668	Come Into My World	Kylie Minogue	Rob Davis & Cathy Dennis, producers; Rob Davis, Cathy Dennis, Bruce Elliott-Smith & Phil Larsen, mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kylie%2BMinogue/Kylie%2520Minogue_1_1_1575362788.jpg?itok=Ia8zA5to
1669	A Wonderful World	Tony Bennett & k.d. lang	T Bone Burnett, producer; Dae Bennett, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
1670	Trouble	Pink	Pink	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/P%2521nk/P%2521nk_1_1_1581371528.jpg?itok=O7KfsGbO
1671	Gravedigger	Dave Matthews	Dave Matthews	
1672	Disorder In The House	Warren Zevon & Bruce Springsteen	Warren Zevon & Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Warren%2BZevon/Warren%2520Zevon_1_1_1581612439.jpg?itok=TtV1Ofik
1673	Bring Me To Life	Evanescence Featuring Paul McCoy	Evanescence Featuring Paul McCoy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Evanescence/Evanescence_1_1_1576261783.jpg?itok=tXklMi0z
1674	St. Anger	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
1675	Plan B	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
1676	Seven Nation Army	Jack White, songwriter (The White Stripes)	Jack White, songwriter (The White Stripes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
1677	One By One	Foo Fighters	David Grohl, Taylor Hawkins, Nate Mendel, Nick Raskulinecz & Chris Shiflett, producers; Jim Scott, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
1678	Elephant	The White Stripes	Jack White, producer; Liam Watson & Jack White, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BWhite/Jack%2520White_1_1_1578384853.jpg?itok=cFBueuG3
1679	Dangerously In Love 2	Beyoncé	Beyoncé	
1680	The Closer I Get To You	Beyoncé & Luther Vandross	Beyoncé & Luther Vandross	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luther%2BVandross/Luther%2520Vandross_1_1_1575369222.jpg?itok=GBSXYN7T
1681	Wonderful	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
1682	Hey Ya!	OutKast	OutKast	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OutKast/Outkast_1_1_1595810284.jpg?itok=U50l3oRY
1683	Crazy In Love	Rich Harrison, Jay-Z & Beyoncé Knowles, songwriters (Beyoncé Featuring Jay-Z)	Rich Harrison, Jay-Z & Beyoncé Knowles, songwriters (Beyoncé Featuring Jay-Z)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rich%2BHarrison/Rich%2520Harrison_1_1_1581629387.jpg?itok=-tvmANEq
1684	Dangerously In Love	Beyoncé	Beyoncé Knowles, producer; Tony Maserati, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beyonc%25C3%25A9%2BKnowles/Beyonc%25C3%25A9_1_1_1597674429.jpg?itok=1jKGWBfF
1685	Work It	Missy Elliott	Missy Elliott	
1686	Lose Yourself	Eminem	Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1687	Shake Ya Tailfeather	Nelly, P. Diddy & Murphy Lee	Nelly, P. Diddy & Murphy Lee	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelly/Nelly_1_1_1584092298.jpg?itok=NgHWxIFH
1688	Keep On The Sunny Side	June Carter Cash	June Carter Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/June%2BCarter%2BCash/June%2520Carter%2520Cash_1_1_1581565077.jpg?itok=D_8k84jR
1689	Next Big Thing	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
1690	A Simple Life	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs & Kentucky Thunder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
1691	How's The World Treating You	James Taylor & Alison Krauss	James Taylor & Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BTaylor/James%2520Taylor_1_1_1584111744.jpg?itok=Jb0Mb8r0
1692	Cluck Old Hen	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
1693	It's Five O'Clock Somewhere	Jim Brown & Don Rollins, songwriters (Alan Jackson & Jimmy Buffett)	Jim Brown & Don Rollins, songwriters (Alan Jackson & Jimmy Buffett)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BRollins/Don%2520Rollins_1_1_1581556908.jpg?itok=_5hJqkm-
1694	Livin', Lovin',  Losin' - Songs Of The Louvin Brothers	(Various Artists)	(Various Artists)	
1695	Live	Alison Krauss & Union Station	Barry Bales, Ron Block, Jerry Douglas, Alison Krauss & Dan Tyminski, producers; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
1696	One Quiet Night	Pat Metheny	Pat Metheny & Steve Rodby, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
1697	34th N Lex	Randy Brecker	Randy Brecker & George Whitty, producers; George Whitty, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BBrecker/Randy%2520Brecker_1_1_1575373868.jpg?itok=9QxyBydg
1698	A Little Moonlight	Dianne Reeves	Arif Mardin, producer	
1699	Matrix	Chick Corea, soloist	Chick Corea, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
1700	Alegría	Wayne Shorter	Robert Sadin, producer; Dave Darlington & Robert Sadin, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
1701	Wide Angles	Michael Brecker Quindectet	Michael Brecker & Gil Goldstein, producers; Jay Newland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gil%2BGoldstein/Gil%2520Goldstein_1_1_1597164797.jpg?itok=OD6j6fbj
1702	Live At The Blue Note	Michel Camilo With Charles Flores & Horacio "El Negro" Hernandez	Michel Camilo, producer; Robert J. Friedrich, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Horacio%2B%2522El%2BNegro%2522%2BHernandez/Horacio%2520%2522El%2520Negro%2522%2520Hernandez_1_1_1581559994.jpg?itok=n24Q-WeN
1703	Worldwide	Audio Adrenaline	Jason Burkum, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Audio%2BAdrenaline/Audio%2520Adrenaline_1_1_1596799500.jpg?itok=CmuUexCr
1704	Worship Again	Michael W. Smith	Michael W. Smith, producer; Ronnie Brookshire, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BW.%2BSmith/Michael%2520W.%2520Smith_1_1_1581371564.jpg?itok=4xsPS22I
1705	Rise And Shine	Randy Travis	Kyle Lehning, producer; Jason Lehning, Kyle Lehning & Steve Tillisch, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BTravis/Randy%2520Travis_1_1_1575366507.jpg?itok=U4bp_0pX
1706	Go Tell It On The Mountain	The Blind Boys Of Alabama	John Chelew, producer; Jimmy Hoyson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blind%2BBoys%2Bof%2BAlabama/Blind%2520Boys%2520of%2520Alabama_1_1_1575366367.jpg?itok=qYvCJB6l
1707	...Again	Donnie McClurkin	Donnie McClurkin, producer; Charles Alexander, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donnie%2BMcClurkin/Donnie%2520McClurkin_1_1_1581563402.jpg?itok=qm3AMw3N
1708	A Wing And A Prayer	T.D. Jakes, choir director; Kevin Bond & Steve Lawrence, producers; Kevin Bond, Ralph Cacciurri, Gerard Hairston & Malcolm Harper Jr., engineers/mixers (Bishop T.D. Jakes & The Potter's House Mass Choir)	T.D. Jakes, choir director; Kevin Bond & Steve Lawrence, producers; Kevin Bond, Ralph Cacciurri, Gerard Hairston & Malcolm Harper Jr., engineers/mixers (Bishop T.D. Jakes & The Potter's House Mass Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kevin%2BBond/Kevin%2520Bond_1_1_1575370841.jpg?itok=t1F97Msa
1709	No Es Lo Mismo	Alejandro Sanz	Lulo Perez & Alejandro Sanz, producers; Mick Guzauski, engineer/mixer; Rafa Sardina & Pepo Sherman, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alejandro%2BSanz/Alejandro%2520Sanz_1_1_1581342907.jpg?itok=0YVrY2Gd
1710	Cuatro Caminos	Café Tacuba	Elfego Buendia, Emmanuel Del Real, Jose "Joselo" Rangel, Quique Rangel & Gustavo Santaolalla, producers; Joseph Chiccarelli & Anibal Kerpel, engineers	
1711	Buenos Hermanos	Ibrahim Ferrer	Ry Cooder, producer; Jerry Boys, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ibrahim%2BFerrer/Ibrahim%2520Ferrer_1_1_1581563035.jpg?itok=hRb_r_Hy
1712	Regalo Del Alma	Celia Cruz	Sergio George & Oscar Gómez, producers; Jorge G. Garcia & Oscar Gómez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celia%2BCruz/Celia%2520Cruz_1_1_1581560505.jpg?itok=5KYlZzO6
1713	Afortunado	Joan Sebastian	Joan Sebastian, producer; Daniel Estevez T., engineer/mixer; Jose Angel Cabrera, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joan%2BSebastian/Joan%2520Sebastian_1_1_1575363475.jpg?itok=t94zHm_l
1714	Si Me Faltas Tu	Jimmy Gonzalez y El Grupo Mazz	Jimmy Gonzalez, producer; Edward Perez & Ramiro Serna, engineers	
1715	Blues Singer	Buddy Guy	Dennis Herring, producer; Ed Cherney, engineer/mixer; Jacquire King, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
1716	Let's Roll	Etta James	Donto James, Etta James, Sametto James & Josh Sklair, producers; Donto James, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Etta%2BJames/Etta%2520James_1_1_1581553580.jpg?itok=Be8EV9Zw
1717	Wildwood Flower	June Carter Cash	John Carter Cash, producer; Chuck Turner, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/June%2BCarter%2BCash/June%2520Carter%2520Cash_1_1_1581565077.jpg?itok=D_8k84jR
1718	The Wind	Warren Zevon	Jorge Calderón, Noah Scott Snyder & Warren Zevon, producers; Noah Scott Snyder, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Warren%2BZevon/Warren%2520Zevon_1_1_1581612439.jpg?itok=TtV1Ofik
1719	Flying Free	Black Eagle	Tom Bee, producer; J. Douglas Geist, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BEagle/Black%2520Eagle_1_1_1581556290.jpg?itok=_N57AuxP
1720	Dutty Rock	Sean Paul	Sean Paul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sean%2BPaul/Sean%2520Paul_1_1_1578385351.jpg?itok=NSnsEdiu
1721	Sacred Tibetan Chant	The Monks Of Sherab Ling Monastery	Jon Mark, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jon%2BMark/Jon%2520Mark_1_1_1581629370.jpg?itok=Bi-eO_xy
1722	Voz D'Amor	Cesaria Evora	José da Silva, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cesaria%2BEvora/Cesaria%2520Evora_1_1_1598196676.jpg?itok=cR70pO45
1723	Let's Polka 'Round	Jimmy Sturr	Joe Donofrio, Kenneth R. Irwin, Tom Pick & Jimmy Sturr, producers; Tom Pick, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
1724	Bon Appétit!	Cathy Fink And Marcy Marxer	Cathy Fink & Marcy Marxer, producers; Cathy Fink & Marcy Marxer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marcy%2BMarxer/Marcy%2520Marxer_1_1_1581628712.jpg?itok=ycHrSM9n
1725	Prokofiev: Peter And The Wolf/Beintus: Wolf Tracks	Bill Clinton, Mikhail Gorbachev & Sophia Loren (Kent Nagano; Russian National Orchestra)	Wilhelm Hellweg, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sophia%2BLoren/Sophia%2520Loren_1_1_1581557957.jpg?itok=BNwPhQyI
1726	Lies And The Lying Liars Who Tell Them: A Fair And Balanced Look At The Right (Al Franken)	Al Franken	Paul Ruben, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BFranken/Al%2520Franken_1_1_1581654100.jpg?itok=ZnYLSKDa
1727	Poodle Hat	Weird Al Yankovic	Weird Al Yankovic, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/weird_al_yankovic_spotlight_510334176.png?itok=u7SwDHr0
1728	Gypsy	Jay David Saks, producer; Ken Hahn, Tom Lazarus, Jay David Saks & Todd Whitelock, engineers/mixers (New Broadway Cast With Bernadette Peters, Tammy Blanchard, John Dossett & Others)	Jay David Saks, producer; Ken Hahn, Tom Lazarus, Jay David Saks & Todd Whitelock, engineers/mixers (New Broadway Cast With Bernadette Peters, Tammy Blanchard, John Dossett & Others)	
1729	Chicago	(Various Artists)	Randy Spendlove & Ric Wake, compilation producers; Dan Hetzel, engineer/mixer	
1730	The Lord Of The Rings - The Two Towers	Howard Shore, composer; Howard Shore, producer; Peter Cobbin, engineer/mixer (Howard Shore)	Howard Shore, composer; Howard Shore, producer; Peter Cobbin, engineer/mixer (Howard Shore)	
1731	A Mighty Wind (From A Mighty Wind)	Christopher Guest, Eugene Levy & Michael McKean, songwriters (The Folksmen, Mitch & Mickey, And The New Main Street Singers)	Christopher Guest, Eugene Levy & Michael McKean, songwriters (The Folksmen, Mitch & Mickey, And The New Main Street Singers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BMcKean/Michael%2520McKean_1_1_1581557452.jpg?itok=OOMM-CGD
1732	Sacajawea	Wayne Shorter, composer (Wayne Shorter)	Wayne Shorter, composer (Wayne Shorter)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
1733	Timbuktu	Michael Brecker & Gil Goldstein, arrangers (Michael Brecker Quindectet)	Michael Brecker & Gil Goldstein, arrangers (Michael Brecker Quindectet)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
1734	Woodstock	Vincent Mendoza, arranger (Joni Mitchell)	Vincent Mendoza, arranger (Joni Mitchell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vincent%2BMendoza/Vince%2520Mendoza_1_1_1581562428.jpg?itok=3xtFsTEn
1735	Evolve	Ani DiFranco & Brian Grunert, art directors (Ani DiFranco)	Ani DiFranco & Brian Grunert, art directors (Ani DiFranco)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ani%2BDiFranco/Ani%2520DiFranco_1_1_1575372970.jpg?itok=u4oJhd65
1736	The Complete Jack Johnson Sessions	Julian Alexander, Howard Fritzson & Seth Rothstein, art directors (Miles Davis)	Julian Alexander, Howard Fritzson & Seth Rothstein, art directors (Miles Davis)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BAlexander/Julian%2520Alexander_1_1_1581551835.jpg?itok=BN8cjy4O
1737	Martin Scorsese Presents The Blues: A Musical Journey	Tom Piazza, album notes writer (Various Artists)	Tom Piazza, album notes writer (Various Artists)	
1738	Hail To The Thief	Nigel Godrich & Darrell Thorp, engineers (Radiohead)	Nigel Godrich & Darrell Thorp, engineers (Radiohead)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nigel%2BGodrich/Nigel%2520Godrich_1_1_1581552203.jpg?itok=kAZN1-1v
1739	The Neptunes	The Neptunes		
1740	Crazy In Love (Maurice's Soul Mix)	Maurice Joshua, remixer (Beyoncé Featuring Jay-Z)	Maurice Joshua, remixer (Beyoncé Featuring Jay-Z)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maurice%2BJoshua/Maurice%2520Joshua_1_1_1581558866.jpg?itok=92MG56Ix
1741	Obrigado Brazil	Richard King & Todd Whitelock, engineers (Yo-Yo Ma)	Richard King & Todd Whitelock, engineers (Yo-Yo Ma)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BKing/Richard%2520King_1_1_1581628234.jpg?itok=U79xL8RR
1742	Mahler: Symphony No. 3; Kindertotenlieder	Michael Tilson Thomas, conductor; Michelle DeYoung, artist; Andreas Neubronner, producer	Michael Tilson Thomas, conductor; Michelle DeYoung, artist; Andreas Neubronner, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BTilson%2BThomas/Michael%2520Tilson%2520Thomas_1_1_1575368818.jpg?itok=he1ja-mb
1743	Mahler: Symphony No. 3	Pierre Boulez, conductor; Christian Gansch, producer; Wolf-Dieter Karwatky & Rainer Maillard, engineers (Vienna Philharmonic)	Pierre Boulez, conductor; Christian Gansch, producer; Wolf-Dieter Karwatky & Rainer Maillard, engineers (Vienna Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
1744	Janácek: Jenufa	Bernard Haitink, conductor; Wolfram Graul, producer; Jerry Hadley, Karita Mattila, Eva Randová, Anja Silja & Jorma Silvasti, soloists; Jean Chatauret, engineer (Chorus of the Royal Opera House, Covent Garden; Orchestra of the Royal Opera House, Covent Garden)	Bernard Haitink, conductor; Wolfram Graul, producer; Jerry Hadley, Karita Mattila, Eva Randová, Anja Silja & Jorma Silvasti, soloists; Jean Chatauret, engineer (Chorus of the Royal Opera House, Covent Garden; Orchestra of the Royal Opera House, Covent Garden)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bernard%2BHaitink/Bernard%2520Haitink_1_1_1581558203.jpg?itok=byprycUu
1745	Sibelius: Cantatas	Tiia-Ester Loitme & Ants Soots, chorus masters; Paavo Järvi, conductor; Maido Maadik, producer; Maido Maadik, engineer (Ellerhein Girls' Choir & Estonian National Male Choir; Estonian National Symphony Orchestra)	Tiia-Ester Loitme & Ants Soots, chorus masters; Paavo Järvi, conductor; Maido Maadik, producer; Maido Maadik, engineer (Ellerhein Girls' Choir & Estonian National Male Choir; Estonian National Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paavo%2BJ%25C3%25A4rvi/Paavo%2520J%25C3%25A4rvi_1_1_1581564693.jpg?itok=_tLODEuP
1746	Britten: Violin Concerto/Walton: Viola Concerto	Maxim Vengerov; John Fraser, producer; Arne Akselberg, engineer (London Symphony Orchestra)	Maxim Vengerov; John Fraser, producer; Arne Akselberg, engineer (London Symphony Orchestra)	
1747	Haydn: Piano Sonatas Nos. 29, 31, 34, 35 & 49	Emanuel Ax, soloist; Grace Row, producer; Charles Harbutt, engineer	Emanuel Ax, soloist; Grace Row, producer; Charles Harbutt, engineer	
1748	Berg: Lyric Suite	Kronos Quartet (Jennifer Culp, Hank Dutt, David Harrington & John Sherba) & Dawn Upshaw, artists; Judith Sherman, producer; Leslie Ann Jones, engineer	Kronos Quartet (Jennifer Culp, Hank Dutt, David Harrington & John Sherba) & Dawn Upshaw, artists; Judith Sherman, producer; Leslie Ann Jones, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dawn%2BUpshaw/Dawn%2520Upshaw_1_1_1597163735.jpg?itok=q4tGX9v-
1749	Chávez: Suite For Double Quartet	Jeff Von Der Schmidt, conductor; Southwest Chamber Music, ensembles	Jeff Von Der Schmidt, conductor; Southwest Chamber Music, ensembles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Southwest%2BChamber%2BMusic/Southwest%2520Chamber%2520Music_1_1_1581553865.jpg?itok=DIN1aPAZ
1750	Schubert: Lieder With Orchestra	Thomas Quasthoff & Anne Sofie von Otter, soloists; Christopher Alder, producer; Jürgen Bulgrin & Oliver Rogalla Von Heyden, engineers (Claudio Abbado; Chamber Orchestra of Europe)	Thomas Quasthoff & Anne Sofie von Otter, soloists; Christopher Alder, producer; Jürgen Bulgrin & Oliver Rogalla Von Heyden, engineers (Claudio Abbado; Chamber Orchestra of Europe)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thomas%2BQuasthoff/Thomas%2520Quasthoff_1_1_1597163977.jpg?itok=JqYTPoI-
1751	Argento: Casa Guidi	Dominick Argento, composer	Dominick Argento, composer	
1752	Hurt	Johnny Cash	Mark Romanek, video director; Aris McGarry, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
1753	Legend	(Sam Cooke)	Mick Gochanour, Robin Klein & Mary Wharton, video producers	
1754	Don't Know Why	Norah Jones	Norah Jones, Arif Mardin & Jay Newland, producers; Jay Newland, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Norah%2BJones/Norah%2520Jones_1_1_1588264654.jpg?itok=tpWJ31fa
1755	Come Away With Me	Norah Jones	Norah Jones, Arif Mardin, Jay Newland & Craig Street, producers; S. Husky Höskulds & Jay Newland, engineers/mixers; Ted Jensen, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Norah%2BJones/Norah%2520Jones_1_1_1588264654.jpg?itok=tpWJ31fa
1756	Norah Jones	Norah Jones		
1757	Your Body Is A Wonderland	John Mayer	John Mayer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMayer/John%2520Mayer_1_1_1578384892.jpg?itok=QM4MUEXo
1758	Hey Baby	No Doubt	No Doubt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/No%2BDoubt/No%2520Doubt_1_1_1575363074.jpg?itok=TcnJ030_
1759	The Game Of Love	Santana & Michelle Branch	Santana & Michelle Branch	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michelle%2BBranch/Michelle%2520Branch_1_1_1575373795.jpg?itok=eAsSlpIf
1760	Auld Lang Syne	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1761	Just Chillin'	Norman Brown	Paul Brown, producer; Paul Brown, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Norman%2BBrown/Norman%2520Brown_1_1_1594646524.jpg?itok=5ex6lRAi
1762	Days Go By	Dirty Vegas	Ben Harris, Paul Harris & Steve Smith, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dirty%2BVegas/Dirty%2520Vegas_1_1_1581551848.jpg?itok=9rBDiGRK
1763	Playin' With My Friends - Bennett Sings The Blues	Tony Bennett	Phil Ramone, producer; Joel Moss & Tom Young, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
1764	Steve McQueen	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
1765	The Rising	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
1766	In My Place	Coldplay	Coldplay	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1767	All My Life	Foo Fighters	Foo Fighters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
1768	Here To Stay	Korn	Korn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Korn/Korn_1_1_1595602668.jpg?itok=cHMNtTSN
1769	Approaching Pavonis Mons By Balloon (Utopia Planitia)	The Flaming Lips	The Flaming Lips	
1770	A Rush Of Blood To The Head	Coldplay	Coldplay & Ken Nelson, producers; Coldplay, Ken Nelson & Mark Phythian, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1771	He Think I Don't Know	Mary J. Blige	Mary J. Blige	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BJ.%2BBlige/Mary%2520J.%2520Blige_1_1_1578385686.jpg?itok=8LNddY-k
1772	U Don't Have To Call	Usher	Usher	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1773	Love's In Need Of Love Today	Stevie Wonder & Take 6	Stevie Wonder & Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
1774	What's Going On	Chaka Khan & The Funk Brothers	Chaka Khan & The Funk Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
1775	Little Things	India.Arie	India.Arie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/indiaarie-spotlight-107148703.png?itok=EhTaEZYR
1776	Love Of My Life (An Ode To Hip Hop)	Erykah Badu, Madukwu Chinwah, Rashid Lonnie Lynn, Robert Ozuna, James Poyser, Raphael Saadiq & Glenn Standridge, songwriters (Erykah Badu Featuring Common)	Erykah Badu, Madukwu Chinwah, Rashid Lonnie Lynn, Robert Ozuna, James Poyser, Raphael Saadiq & Glenn Standridge, songwriters (Erykah Badu Featuring Common)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erykah%2BBadu/Erykah%2520Badu_1_1_1584457124.jpg?itok=xNIhqJu7
1777	Voyage To India	India.Arie	India.Arie & Shannon Sanders, producers; Alvin Speights, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/indiaarie-spotlight-107148703.png?itok=EhTaEZYR
1778	Ashanti	Ashanti	7 Aurelius & Irv Gotti, producers; 7 Aurelius, Milwaukee Buck & Brian Springer, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ashanti/Ashanti_1_1_1585059863.jpg?itok=7_G3RLYL
1779	Scream a.k.a. Itchin'	Missy Elliott	Missy Elliott	
1780	Hot In Herre	Nelly	Nelly	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelly/Nelly_1_1_1584092298.jpg?itok=NgHWxIFH
1781	The Whole World	OutKast Featuring Killer Mike	OutKast Featuring Killer Mike	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OutKast/Outkast_1_1_1595810284.jpg?itok=U50l3oRY
1782	Dilemma	Nelly Featuring Kelly Rowland	Nelly Featuring Kelly Rowland	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelly/Nelly_1_1_1584092298.jpg?itok=NgHWxIFH
1783	The Eminem Show	Eminem	Eminem, producer; Steve King, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1784	Cry	Faith Hill	Faith Hill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Faith%2BHill/Faith%2520Hill_1_1_1581554831.jpg?itok=byNQrGei
1785	Give My Love To Rose	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
1786	Long Time Gone	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
1787	Mendocino County Line	Willie Nelson & Lee Ann Womack	Willie Nelson & Lee Ann Womack	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
1788	Lil' Jack Slade	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
1789	Where Were You (When The World Stopped Turning)	Alan Jackson, songwriter (Alan Jackson)	Alan Jackson, songwriter (Alan Jackson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BJackson/Alan%2520Jackson_1_1_1575371177.jpg?itok=TWsObT39
1790	Lost In The Lonesome Pines	Jim Lauderdale, Ralph Stanley & The Clinch Mountain Boys	Jim Lauderdale, producer; David Castle, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jim%2BLauderdale/Jim%2520Lauderdale_1_1_1575362745.jpg?itok=tuRkXjEB
1791	Acoustic Garden	Eric Tingstad & Nancy Rumbel	Nancy Rumbel & Eric Tingstad, producers; Les Kahn & Eric Tingstad, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BTingstad/Eric%2520Tingstad_1_1_1581628693.jpg?itok=Ef5K35-T
1792	Speaking Of Now	Pat Metheny Group	Lyle Mays, Pat Metheny & Steve Rodby, producers; Rob Eaton, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
1793	Live In Paris	Diana Krall	Tommy LiPuma, producer; Al Schmitt, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Diana%2BKrall/Diana%2520Krall_1_1_1589273612.jpg?itok=TEF_xptn
1794	My Ship	Herbie Hancock, soloist	Herbie Hancock, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
1795	Directions In Music	Herbie Hancock, Michael Brecker & Roy Hargrove	Michael Brecker & Jason Olaine, producers; Doug Doctor, Rob Griffin & Jay Newland, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
1796	What Goes Around	Dave Holland Big Band	Dave Holland & Louise Holland, producers; James Farber, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BHolland/Dave%2520Holland_1_1_1575366094.jpg?itok=quzY-xff
1797	The Gathering	Caribbean Jazz Project	Dave Samuels, producer; Phil Magnotti, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Caribbean%2BJazz%2BProject/Caribbean%2520Jazz%2520Project_1_1_1597168413.jpg?itok=EKOKpab7
1798	Come Together	Third Day	Monroe Jones, producer; James J Dineen III, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Third%2BDay/Third%2520Day_1_1_1581551858.jpg?itok=vUbg7NPR
1799	The Eleventh Hour	Jars Of Clay	Jars Of Clay, producers; Vance Powell & Jack Joseph Puig, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jars%2BOf%2BClay/Jars%2520Of%2520Clay_1_1_1575368205.jpg?itok=KH3XivHB
1800	We Called Him Mr. Gospel Music - The James Blackwood Tribute Album	The Jordanaires, Larry Ford & The Light Crust Doughboys	Art Greenhaw, producer; Tim Cooper, Chuck Ebert, Art Greenhaw, Adrian Payne, Robb Tripp & Philip W. York, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larry%2BFord/Larry%2520Ford_1_1_1581610333.jpg?itok=AuA9lW2s
1801	Higher Ground	The Blind Boys Of Alabama	John Chelew, producer; Jimmy Hoyson, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blind%2BBoys%2Bof%2BAlabama/Blind%2520Boys%2520of%2520Alabama_1_1_1575366367.jpg?itok=qYvCJB6l
1802	Sidebars	Eartha	Glaurys Ariass, Helsa Ariass & Eartha, producers; Glaurys Ariass, Helsa Ariass & Chris Puram, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eartha/EARTHA_1_1_1581561922.jpg?itok=SfraIebZ
1803	Be Glad	Carol Cymbala, choir director; Carol Cymbala, producer; B.J. Goss, engineer/mixer (The Brooklyn Tabernacle Choir)	Carol Cymbala, choir director; Carol Cymbala, producer; B.J. Goss, engineer/mixer (The Brooklyn Tabernacle Choir)	
1804	Caraluna	Bacilos	Bacilos, Luis Ochoa & Gonzalo Vasquez, producers; Gustavo Afont, Jon Fausty, Iker Gastraminsa, Jaime Lagueruela, Eric Schilling, Bob St. John & Gonzalo Vasquez, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BOchoa/Luis%2520Ochoa_1_1_1581631746.jpg?itok=wb8OdK7Y
1805	Revolución De Amor	Maná	Alex González & Fher Olvera, producers; Benny Faccone, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alex%2BGonzalez/Alex%2520Gonzalez_1_1_1581642715.jpg?itok=eWGtXxCE
1806	El Arte Del Sabor	Bebo Valdés Trio With Israel López "Cachao" & Carlos "Patato" Valdés	Nat Chediak, producer; Catherine Miller, engineer/mixer	
1807	La Negra Tiene Tumbao	Celia Cruz	Sergio George, producer; Maria DeJesus & Jon Fausty, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celia%2BCruz/Celia%2520Cruz_1_1_1581560505.jpg?itok=5KYlZzO6
1808	Latino	Grupo Mania	Jose Lugo, producer; Rolando Alejandro, Raphael Peña & Manuel Antonio Tejada Tabar, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Grupo%2BMania/Grupo%2520Mania_1_1_1581629272.jpg?itok=GtGQReoa
1809	Lo Dijo El Corazón	Joan Sebastian	Joan Sebastian, producer; Benny Faccone, Franco Giordani & John Karpowich, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joan%2BSebastian/Joan%2520Sebastian_1_1_1575363475.jpg?itok=t94zHm_l
1810	Acuérdate	Emilio Navaira	Manuel Herrera Maldonado, producer; Gustavo Alphonso Miranda, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manuel%2BHerrera%2BMaldonado/Manuel%2520Herrera%2520Maldonado_1_1_1581658609.jpg?itok=xDM1LCwi
1811	A Christmas Celebration Of Hope	B.B. King	B.B. King, producer; Anthony Daigle & John Holbrock, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1812	Don't Give Up On Me	Solomon Burke	Joe Henry, producer; S. Husky Höskulds, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Solomon%2BBurke/Solomon%2520Burke_1_1_1591113064.jpg?itok=MASL1gM9
1813	Legacy	Doc Watson & David Holt	Steven Heller & David Holt, producers; Steven Heller, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
1814	This Side	Nickel Creek	Alison Krauss, producer; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nickel%2BCreek/Nickel%2520Creek_1_1_1581555342.jpg?itok=5q7iPPSl
1815	Beneath The Raven Moon	Mary Youngblood	Thomas A. Wasinger & Mary Youngblood, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BYoungblood/Mary%2520Youngblood_1_1_1597163228.jpg?itok=rQMsl9sD
1816	Jamaican E.T.	Lee "Scratch" Perry	Roger Lomas & Lee ''Scratch'' Perry, producers; Roger Lomas, engineer/mixer	
1817	Mundo	Rubén Blades	Rubén Blades, Walter Flores & Edín Solís, producers; Walter Flores, Oscar Marin & Edín Solís, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
1818	Monsters, Inc. - Scream Factory Favorites	Riders In The Sky	Joseph Miskulin, producer; Riders In The Sky (Paul Chrisman, Douglas Green, Fred LaBour & Joseph Miskulin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Riders%2BIn%2BThe%2BSky/Riders%2520In%2520The%2520Sky_1_1_1582881976.jpg?itok=3FZzxhvh
1819	There Was An Old Lady Who Swallowed A Fly	Tom Chapin	Tom Chapin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BChapin/Tom%2520Chapin_1_1_1581554573.jpg?itok=5-VGlTNZ
1820	A Song Flung Up To Heaven	Maya Angelou	Charles B. Potter, producer	
1821	Robin Williams - Live 2002	Robin Williams	Robin Williams, artist. Nathaniel Kunkel, engineer/mixer. Peter Asher, producer.	
1822	Hairspray	Marc Shaiman, composer & lyricist; Scott Wittman, lyricist; Marc Shaiman, producer; Pete Karam, engineer/mixer (Original Broadway Cast - Marissa Jaret Winokur & Harvey Fierstein)	Marc Shaiman, composer & lyricist; Scott Wittman, lyricist; Marc Shaiman, producer; Pete Karam, engineer/mixer (Original Broadway Cast - Marissa Jaret Winokur & Harvey Fierstein)	
1823	Standing In The Shadows Of Motown	The Funk Brothers & (Various Artists)	Ted Greenberg, Allan Slutsky & Harry Weinger, compilation producers; Ted Greenberg & Kooster McAllister, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Harry%2BWeinger/Harry%2520Weinger_1_1_1581657251.jpg?itok=be9hSLaU
1824	The Lord Of The Rings - The Fellowship Of The Ring	Howard Shore, composer; Howard Shore, producer; John J. Kurlander, engineer/mixer (Howard Shore)	Howard Shore, composer; Howard Shore, producer; John J. Kurlander, engineer/mixer (Howard Shore)	
3304	Erroll Garner - Master Of The Keyboard	Dan Morgenstern, album notes writer (Erroll Garner)	Dan Morgenstern, album notes writer (Erroll Garner)	
1825	If I Didn't Have You (From Monsters, Inc.)	Randy Newman, songwriter (Randy Newman)	Randy Newman, songwriter (Randy Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
1826	Six Feet Under Title Theme	Thomas Newman, composer (Thomas Newman)	Thomas Newman, composer (Thomas Newman)	
1827	Mean Old Man	Dave Grusin, arranger (James Taylor)	Dave Grusin, arranger (James Taylor)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
1828	Screamin' And Hollerin' The Blues - The Worlds Of Charley Patton	Susan Archie, art director (Charley Patton)	Susan Archie, art director (Charley Patton)	
1829	Arif Mardin	Arif Mardin		
1830	Hella Good (Roger Sanchez Remix Main)	Roger Sanchez, remixer (No Doubt)	Roger Sanchez, remixer (No Doubt)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roger%2BSanchez/Roger%2520Sanchez_1_1_1575364906.jpg?itok=aiTyFc2z
1831	Vaughan Williams: A Sea Symphony (Sym. No. 1)	Michael J. Bishop, engineer (Robert Spano & Norman Mackenzie)	Michael J. Bishop, engineer (Robert Spano & Norman Mackenzie)	
1832	Robert Woods	Robert Woods		
1833	Mahler: Symphony No. 6	Michael Tilson Thomas, conductor; Andreas Neubronner, producer; Peter Laenger, engineer (San Francisco Symphony Orchestra)	Michael Tilson Thomas, conductor; Andreas Neubronner, producer; Peter Laenger, engineer (San Francisco Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BTilson%2BThomas/Michael%2520Tilson%2520Thomas_1_1_1575368818.jpg?itok=he1ja-mb
1834	Wagner: Tannhäuser	Jane Eaglen, Thomas Hampson, Waltraud Meier, Rene Pape & Peter Seiffert; Daniel Barenboim, conductor; Christoph Classen, producer; Tobias Lehmann & Eberhard Sengpiel, engineers (Chor der Deutschen Staatsoper Berlin; Staatskapelle Berlin)	Jane Eaglen, Thomas Hampson, Waltraud Meier, Rene Pape & Peter Seiffert; Daniel Barenboim, conductor; Christoph Classen, producer; Tobias Lehmann & Eberhard Sengpiel, engineers (Chor der Deutschen Staatsoper Berlin; Staatskapelle Berlin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jane%2BEaglen/Jane%2520Eaglen_1_1_1581610917.jpg?itok=LT3fS1vE
1835	Brahms/Stravinsky: Violin Concertos	Hilary Hahn, artist; Thomas Frost, producer; Richard King, engineer (Academy Of St. Martin-In-The Fields)	Hilary Hahn, artist; Thomas Frost, producer; Richard King, engineer (Academy Of St. Martin-In-The Fields)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hilary%2BHahn/Hilary%2520Hahn_1_1_1581554020.jpg?itok=M3S8uHN7
1836	Chopin: Études, Op. 10 & Op. 25	Murray Perahia, artist; Andreas Neubronner, producer; Andreas Neubronner, engineer	Murray Perahia, artist; Andreas Neubronner, producer; Andreas Neubronner, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Murray%2BPerahia/Murray%2520Perahia_1_1_1576371919.jpg?itok=GgJEmT9S
1837	Beethoven: String Quartets ("Razumovsky" Op. 59, 1-3; "Harp" Op. 74)	Takács Quartet (Edward Dusinberre, András Fejér, Károly Schranz & Roger Tapping), artists; Andrew Keener, producer; Simon Dominic Eadon, engineer	Takács Quartet (Edward Dusinberre, András Fejér, Károly Schranz & Roger Tapping), artists; Andrew Keener, producer; Simon Dominic Eadon, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tak%25C3%25A1cs%2BQuartet/Tak%25C3%25A1cs%2520Quartet_1_1_1575367961.jpg?itok=VmPyJAOO
1838	Tavener: Lamentations & Praises	Steve Barnett, producer; Joseph Jennings, conductor; Preston Smith, engineer	Steve Barnett, producer; Joseph Jennings, conductor; Preston Smith, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BBarnett/Steve%2520Barnett_1_1_1581619240.jpg?itok=PUXTWEN-
1839	Bel Canto - Bellini, Donizetti & Rossini	Erik Smith, producer; Neil Hutchinson, Tom Lazarus & Jonathan Stokes, engineers (Patrick Summers)	Erik Smith, producer; Neil Hutchinson, Tom Lazarus & Jonathan Stokes, engineers (Patrick Summers)	
1840	Previn Conducts Korngold - The Sea Hawk, Captain Blood, etc.	André Previn	Sid McLauchlan, producer; Richard Lancaster & Ulrich Vette, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/andreprevin-spotlight-541547177.png?itok=It63Jlcm
1841	Without Me	Eminem	Joseph Kahn, video director; Greg Tharp, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1842	Westway To The World	The Clash	Don Letts, video director	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BClash/The%2520Clash_1_1_1575365075.jpg?itok=lavlmxx_
1843	Walk On	U2	Brian Eno & Daniel Lanois, producers; Steve Lillywhite & Richard Rainey, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1844	O Brother, Where Art Thou? - Soundtrack	(Various Artists)	T Bone Burnett, producer; Peter Kurland & Mike Piersante, engineers/mixers; Gavin Lurssen, mastering engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/t_bone_burnett_spotlight_609763428.png?itok=_teXgyr1
1845	Fallin'	Alicia Keys, songwriter (Alicia Keys)	Alicia Keys, songwriter (Alicia Keys)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1846	Alicia Keys	Alicia Keys		
1847	I'm Like A Bird	Nelly Furtado	Nelly Furtado	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelly%2BFurtado/Nelly%2520Furtado_1_1_1578516119.jpg?itok=W4aFkXU4
1848	Don't Let Me Be Lonely Tonight	James Taylor	James Taylor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BTaylor/James%2520Taylor_1_1_1584111744.jpg?itok=Jb0Mb8r0
1849	Stuck In A Moment You Can't Get Out Of	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1850	Lady Marmalade	Christina Aguilera, Lil' Kim, Mya & Pink	Christina Aguilera, Lil' Kim, Mya & Pink	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christina%2BAguilera/Christina%2520Aguilera_1_1_1578385663.jpg?itok=Txdy_9Pq
1851	Reptile	Eric Clapton	Eric Clapton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
1852	All For You	Janet Jackson	Janet Jackson, Jimmy Jam & Terry Lewis, producers; Steve Hodge, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janet%2BJackson/Janet%2520Jackson_1_1_1584106687.jpg?itok=SsHUoXgI
1853	No Substitutions - Live In Osaka	Larry Carlton & Steve Lukather	Steven Lukather & Steve Vai, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BLukather/Steve%2520Lukather_1_1_1581553589.jpg?itok=9alDdBXG
1854	Lovers Rock	Sade	Sade Adu & Mike Pela, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sade/Sade_1_1_1575368372.jpg?itok=hUCGfjaP
1855	Songs I Heard	Harry Connick, Jr.	Tracey Freeman, producer	
1856	Get Right With God	Lucinda Williams	Lucinda Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lucinda%2BWilliams/Lucinda%2520Williams_1_1_1594905591.jpg?itok=93RIrdZ8
1857	Dig In	Lenny Kravitz	Lenny Kravitz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lenny%2BKravitz/Lenny%2520Kravitz_1_1_1597152201.jpg?itok=uCcfWgPU
1858	Elevation	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1859	Crawling	Linkin Park	Linkin Park	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Linkin%2BPark/Linkin%2520Park_1_1_1584092445.jpg?itok=yI5i8mJF
1860	Schism	Tool	Tool	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tool/Tool_1_1_1578387453.jpg?itok=eRR26rxr
1861	Dirty Mind	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
1862	Drops Of Jupiter	Charlie Colin, Rob Hotchkiss, Pat Monahan, Jimmy Stafford & Scott Underwood, songwriters (Train)	Charlie Colin, Rob Hotchkiss, Pat Monahan, Jimmy Stafford & Scott Underwood, songwriters (Train)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BHotchkiss/Rob%2520Hotchkiss_1_1_1581555880.jpg?itok=RIBNAHzZ
1863	All That You Can't Leave Behind	U2	Brian Eno & Daniel Lanois, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1864	Parachutes	Coldplay	Guy Berryman, Jon Buckland, Will Champion, Chris Martin & Ken Nelson, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coldplay/Coldplay_1_1_1591112967.jpg?itok=lLCPutNO
1865	U Remind Me	Usher	Usher	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Usher/Usher_1_1_1594578185.jpg?itok=HpoXndzJ
1866	Survivor	Destiny's Child	Destiny's Child	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Destiny%2527s%2BChild/Destiny%2527s%2520Child_1_1_1597243640.jpg?itok=OvuQeHB0
1867	Songs In A Minor	Alicia Keys	Alicia Keys, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alicia%2BKeys/Alicia%2520Keys_1_1_1584094646.jpg?itok=vIOmIzAR
1868	Get Ur Freak On	Missy "Misdemeanor" Elliott	Missy "Misdemeanor" Elliott	
1869	Ms. Jackson	OutKast	OutKast	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OutKast/Outkast_1_1_1595810284.jpg?itok=U50l3oRY
1870	Let Me Blow Ya Mind	Eve Featuring Gwen Stefani	Eve Featuring Gwen Stefani	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eve/Eve_1_1_1578517947.jpg?itok=PlnCwZ6K
1871	Stankonia	OutKast	André 3000, Big Boi & David Sheats, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/OutKast/Outkast_1_1_1595810284.jpg?itok=U50l3oRY
1872	O Death	Ralph Stanley	Ralph Stanley	
1873	The Lucky One	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
1874	I Am A Man Of Constant Sorrow	Dan Tyminski, Harley Allen & Pat Enright (The Soggy Bottom Boys)	Dan Tyminski, Harley Allen & Pat Enright (The Soggy Bottom Boys)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dan%2BTyminski/Dan%2520Tyminski_1_1_1591113004.jpg?itok=6F4bYRyt
1875	Foggy Mountain Breakdown	Earl Scruggs, Glen Duncan, Randy Scruggs, Steve Martin, Vince Gill, Marty Stuart, Gary Scruggs, Albert Lee, Paul Shaffer, Jerry Douglas & Leon Russell	Earl Scruggs, Glen Duncan, Randy Scruggs, Steve Martin, Vince Gill, Marty Stuart, Gary Scruggs, Albert Lee, Paul Shaffer, Jerry Douglas & Leon Russell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BMartin/Steve%2520Martin_1_1_1581553492.jpg?itok=JMNEF-0M
1876	Timeless - Hank Williams Tribute	(Various Artists)	(Various Artists)	
1877	New Favorite	Alison Krauss & Union Station	Barry Bales, Ron Block, Jerry Douglas, Alison Krauss & Dan Tyminski, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
1878	A Day Without Rain	Enya	Nicky Ryan, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Enya/Enya_1_1_1581558707.jpg?itok=E89V1itS
1879	M²	Marcus Miller	David Isaac & Marcus Miller, producers; David Isaac, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marcus%2BMiller/Marcus%2520Miller_1_1_1575371017.jpg?itok=cFjmRVru
1880	The Calling	Dianne Reeves	George M. Duke, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BDuke/George%2520Duke_1_1_1581552160.jpg?itok=cwluJn3a
1881	Chan's Song	Michael Brecker, soloist	Michael Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
1882	This Is What I Do	Sonny Rollins	Lucille Rollins & Sonny Rollins, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sonny%2BRollins/Sonny%2520Rollins_1_1_1581559379.jpg?itok=aQtIeKz0
1883	Homage To Count Basie	Bob Mintzer Big Band	Tom Jung & Bob Mintzer, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BJung/Tom%2520Jung_1_1_1581559779.jpg?itok=fFPUAlcq
1884	Nocturne	Charlie Haden	Charlie Haden & Gonzalo Rubalcaba, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BHaden/Charlie%2520Haden_1_1_1581553559.jpg?itok=fCFluGHd
1885	Solo	dc Talk	dc Talk	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/dc%2BTalk/dc%2520Talk_1_1_1598306052.jpg?itok=rEqPYSAR
1886	CeCe Winans	CeCe Winans	Brown Bannister, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
1887	Bill & Gloria Gaither Present A Billy Graham Music Homecoming	Bill & Gloria Gaither & The Homecoming Friends	Bill Gaither, producer; Chad Evans, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BGaither/Bill%2520Gaither_1_1_1597166131.jpg?itok=U57U-MiX
1888	Spirit Of The Century	The Blind Boys Of Alabama	John Chelew, producer; Larry Hirsch & Jimmy Hoyson, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blind%2BBoys%2Bof%2BAlabama/Blind%2520Boys%2520of%2520Alabama_1_1_1575366367.jpg?itok=qYvCJB6l
1889	The Experience	Yolanda Adams	Benjamin J. Arrindell, Biff Dawes & Derek Lewis, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yolanda%2BAdams/Yolanda%2520Adams_1_1_1581559847.jpg?itok=zk1UUbFK
1890	Love Is Live!	Hezekiah Walker, choir director; Greg Hartman & John Jaszcz, engineers/mixers (Hezekiah Walker & LFT Church Choir)	Hezekiah Walker, choir director; Greg Hartman & John Jaszcz, engineers/mixers (Hezekiah Walker & LFT Church Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hezekiah%2BWalker/Hezekiah%2520Walker_1_1_1597166376.jpg?itok=mEEWNhF0
1891	La Musica De Baldemar Huerta	Freddy Fender	Michael Morales, Ronald Morales & Joe Reyes, producers; Michael Morales, Ronald Morales & Joe Reyes, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Freddy%2BFender/Freddy%2520Fender_1_1_1597163356.jpg?itok=KXjwMzqK
1892	Embrace The Chaos	Ozomatli	Ozomatli	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ozomatli/Ozomatli_1_1_1581551826.jpg?itok=5p20dZYJ
1893	Dejame Entrar	Carlos Vives	Andrés Castro, Emilio Estefan Jr., Sebastián Krys & Carlos Vives, producers; Scott Canto, Mike Couzzi, Javier Garza, Ron Taylor & John D. Thomas, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BVives/Carlos%2520Vives_1_1_1596812937.jpg?itok=PvqhprQU
1894	Encore	Roberto Blades	Roberto Blades, producer	
1895	Yo Por Tí	Olga Tañón	Olga Tañón, producer; Eric Schilling, engineer	
1896	En Vivo...El Hombre Y Su Musica	Ramón Ayala y Sus Bravos Del Norte	Ramón Ayala & Freddie Martínez, Sr., producers; Greg García, Freddie Martínez, Jr. & Edward Perez, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Freddie%2BMart%25C3%25ADnez%252C%2BSr./Freddie%2520Mart%25C3%25ADnez%252C%2520Sr._1_1_1575370653.jpg?itok=OGXm8Bz1
1897	Nadie Como Tu	Solido	Rolando Benavidez, Ben De León, Medardo Garza, Amado Garza, Jr. & Otoniel Peña Jr., producers; Edward Perez & Ramiro Serna, Jr., engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ben%2BDe%2BLe%25C3%25B3n/Ben%2520De%2520Le%25C3%25B3n_1_1_1575373278.jpg?itok=yo2KzDZt
1898	Do You Get The Blues?	Jimmie Vaughan	Jimmie Vaughan, producer; John P. Hampton & Jared Tuten, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmie%2BVaughan/Jimmie%2520Vaughan_1_1_1582716890.jpg?itok=f6u7w4e2
1899	Nothing Personal	Delbert McClinton	Delbert McClinton & Gary Nicholson, producers; Richard Dodd & Don Smith, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Delbert%2BMcClinton/Delbert%2520McClinton_1_1_1581554726.jpg?itok=j-MdZE80
1900	Down From The Mountain	(Various Artists)	Mike Piersante, engineer	
1901	Love And Theft	Bob Dylan	Bob Dylan, producer; Chris Shaw, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
1902	Bless The People - Harmonized Peyote Songs	Verdell Primeaux & Johnny Mike	Giuli Doyle & Robert Doyle, producers; Jack Miller, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Verdell%2BPrimeaux/Verdell%2520Primeaux_1_1_1581627426.jpg?itok=8TydDOrT
1903	Halfway Tree	Damian Marley	Stephen Marley, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Damian%2BMarley/Damian%2520Marley_1_1_1591265412.jpg?itok=Mm5lmYZ8
1904	Full Circle - Carnegie Hall 2000	Ravi Shankar	Hans Wendl, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ravi%2BShankar/Ravi%2520Shankar_1_1_1581617080.jpg?itok=cArlUNpm
1905	Gone Polka	Jimmy Sturr	Kenneth R. Irwin, Tom Pick & Jimmy Sturr, producers; Kenneth R. Irwin, Tom Pick, Jimmy Sturr & Jim Uzwack, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
1906	Elmo And The Orchestra	(Sesame Street Characters)	(Sesame Street Characters)	
1907	Mama Don't Allow	Tom Chapin	Arnold Cardillo, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BChapin/Tom%2520Chapin_1_1_1581554573.jpg?itok=5-VGlTNZ
1908	Q - The Autobiography Of Quincy Jones	Quincy Jones	Elisa Shokoff, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
1909	Napalm & Sillyputty	George Carlin	George Carlin, artist. John Runnette, producer.	
1910	The Producers	Mel Brooks, composer & lyricist; Hugh Fordin, producer; Cynthia Daniels, engineer (Original Broadway Cast With Nathan Lane & Matthew Broderick)	Mel Brooks, composer & lyricist; Hugh Fordin, producer; Cynthia Daniels, engineer (Original Broadway Cast With Nathan Lane & Matthew Broderick)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mel%2BBrooks/Mel%2520Brooks_1_1_1581629414.jpg?itok=dWarFq7K
1911	O Brother, Where Art Thou?	(Various Artists)	T Bone Burnett, compilation producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/t_bone_burnett_spotlight_609763428.png?itok=_teXgyr1
1912	Crouching Tiger, Hidden Dragon	Tan Dun, composer; Steven Epstein & Tan Dun, producers (Tan Dun)	Tan Dun, composer; Steven Epstein & Tan Dun, producers (Tan Dun)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tan%2BDun/Tan%2520Dun_1_1_1581628635.jpg?itok=bQQhQY5G
1913	Boss Of Me (From Malcolm In The Middle)	John Flansburgh & John Linnell, songwriters (They Might Be Giants)	John Flansburgh & John Linnell, songwriters (They Might Be Giants)	
1914	Cast Away - End Credits	Alan Silvestri, composer (Alan Silvestri)	Alan Silvestri, composer (Alan Silvestri)	
1915	Claude Debussy "Doctor Gradus Ad Parnassum" From Children's Corner	Béla Fleck & Edgar Meyer, arrangers (Béla Fleck, Joshua Bell & Gary Hoffmann)	Béla Fleck & Edgar Meyer, arrangers (Béla Fleck, Joshua Bell & Gary Hoffmann)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1916	Amnesiac - Special Limited Edition	Stanley Donwood & Tchocky, art directors (Radiohead)	Stanley Donwood & Tchocky, art directors (Radiohead)	
1917	Brain In A Box - The Science Fiction Collection	Hugh Brown & Steve Vance, art directors (Various Artists)	Hugh Brown & Steve Vance, art directors (Various Artists)	
1918	Richard Pryor...And It's Deep Too! - The Complete Warner Bros. Recordings (1968-1992)	Walter Mosley, album notes writer (Richard Pryor)	Walter Mosley, album notes writer (Richard Pryor)	
1945	Who Let The Dogs Out	Baha Men	Baha Men	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Baha%2BMen/Baha%2520Men_1_1_1581556834.jpg?itok=qJPfj0cU
3305	Hoagy Carmichael - From Stardust To Ole Buttermilk Sky	(Hoagy Carmichael)	(Hoagy Carmichael)	
1919	Arhoolie Records 40th Anniversary Collection - 1960-2000 The Journey Of Chris Strachwitz	Elijah Wald, album notes writer (Various Artists)	Elijah Wald, album notes writer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elijah%2BWald/Elijah%2520Wald_1_1_1597168642.jpg?itok=kslIifpb
1920	Lady Day - The Complete Billie Holiday On Columbia 1933-1944	Michael Brooks & Michael Cuscuna, compilation producers; Matt Cavaluzzo, Harry Coster, Seth Foster, Darcy Proper, Ken Robertson & Mark Wilder, mastering engineers (Billie Holiday)	Michael Brooks & Michael Cuscuna, compilation producers; Matt Cavaluzzo, Harry Coster, Seth Foster, Darcy Proper, Ken Robertson & Mark Wilder, mastering engineers (Billie Holiday)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrooks/Michael%2520Brooks_1_1_1581558904.jpg?itok=0Mqeeefx
1921	The Look Of Love	Al Schmitt, engineer (Diana Krall)	Al Schmitt, engineer (Diana Krall)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
1922	T Bone Burnett	T Bone Burnett		
1923	Thank You (Deep Dish Vocal Remix)	Deep Dish, remixers (Dido)	Deep Dish, remixers (Dido)	
1924	Bernstein (Arr. Brohn & Corigliano): West Side Story Suite (Lonely Town; Make Our Garden Grow, Etc.)	Richard King, engineer (Joshua Bell)	Richard King, engineer (Joshua Bell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BKing/Richard%2520King_1_1_1581628234.jpg?itok=U79xL8RR
1925	Manfred Eicher	Manfred Eicher		
1926	Berlioz: Les Troyens	Colin Davis, conductor; Michelle DeYoung, Ben Heppner, Petra Lang, Peter Mattei, Stephen Milling, Sara Mingardo & Kenneth Tarver, artists; James Mallinson, producer	Colin Davis, conductor; Michelle DeYoung, Ben Heppner, Petra Lang, Peter Mattei, Stephen Milling, Sara Mingardo & Kenneth Tarver, artists; James Mallinson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michelle%2BDeYoung/Michelle%2520DeYoung_1_1_1581563014.jpg?itok=V5U_HB0j
1927	Boulez Conducts Varèse - Amériques, Arcana, Déserts & Ionisation	Pierre Boulez, conductor; Helmut Burk & Karl-August Naegler, producers; Jobst Eberhardt & Stephan Flock, engineers (Chicago Symphony Orchestra)	Pierre Boulez, conductor; Helmut Burk & Karl-August Naegler, producers; Jobst Eberhardt & Stephan Flock, engineers (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
1928	Bach: St. Matthew Passion	Norbert Balatsch & Erwin Ortner, chorus masters; Nikolaus Harnoncourt, conductor; Martin Sauer, producer; Michael Brammann, engineer (Arnold Schoenberg Chor & Wiener Sängerknaben; Concentus Musicas Wien)	Norbert Balatsch & Erwin Ortner, chorus masters; Nikolaus Harnoncourt, conductor; Martin Sauer, producer; Michael Brammann, engineer (Arnold Schoenberg Chor & Wiener Sängerknaben; Concentus Musicas Wien)	
1929	Strauss Wind Concertos - Horn Concerto; Oboe Concerto	Daniel Barenboim, Dale Clevenger, Larry Combs, Alex Klein & David McGill, artists; Martin Fouqué, producer; Eberhard Sengpiel, engineer (Chicago Symphony Orchestra)	Daniel Barenboim, Dale Clevenger, Larry Combs, Alex Klein & David McGill, artists; Martin Fouqué, producer; Eberhard Sengpiel, engineer (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BBarenboim/Daniel%2520Barenboim_1_1_1581625860.jpg?itok=97-UY1BX
1930	Britten Cello Suites (1-3)	Truls Mork, artist; Arne Akselberg & Truls Mork, producers; Arne Akselberg, engineer	Truls Mork, artist; Arne Akselberg & Truls Mork, producers; Arne Akselberg, engineer	
1931	Haydn: The Complete String Quartets	The Angeles String Quartet (Brian Dembow, Stephen J. Erdody, Kathleen Lenski, Steven D. Miller & Sara Parkins), artists; Joanna Nickrenz, producer; Marc J. Aubort, engineer	The Angeles String Quartet (Brian Dembow, Stephen J. Erdody, Kathleen Lenski, Steven D. Miller & Sara Parkins), artists; Joanna Nickrenz, producer; Marc J. Aubort, engineer	
1932	After Mozart - Raskatov, Silvestrov & Schnittke	Gidon Kremer & Helmut Mühle, producers; Philipp Nedel, engineer	Gidon Kremer & Helmut Mühle, producers; Philipp Nedel, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gidon%2BKremer/Gidon%2520Kremer_1_1_1581553964.jpg?itok=N8KG5jQw
1933	Dreams & Fables - Gluck Italian Arias: Tremo Fra' Dubbi Miei; Di Questa Cetra In Seno	Christopher Raeburn, producer; Jonathan Stokes, engineer (Bernhard Forck; Akademie für Alte Musik Berlin)	Christopher Raeburn, producer; Jonathan Stokes, engineer (Bernhard Forck; Akademie für Alte Musik Berlin)	
1934	Rouse: Concert De Gaudí For Guitar & Orchestra	Christopher Rouse, composer	Christopher Rouse, composer	
1935	Perpetual Motion - Scarlatti, Bach, Debussy, Chopin	Béla Fleck, Edgar Meyer, Joshua Bell, John Williams & Evelyn Glennie	Béla Fleck & Edgar Meyer, producers; Robert Battaglia, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1936	Weapon Of Choice	Fatboy Slim Featuring Bootsy Collins	Spike Jonze, video director; Vincent Landay & Deannie O'Neil, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fatboy%2BSlim/Fatboy%2520Slim_1_1_1581551876.jpg?itok=iIiM3nAu
1937	Recording The Producers - A Musical Romp With Mel Brooks	Mel Brooks (Various Artists Including Nathan Lane & Matthew Broderick)	Susan Froemke, video director; Susan Froemke & Peter Gelb, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mel%2BBrooks/Mel%2520Brooks_1_1_1581629414.jpg?itok=dWarFq7K
1938	Beautiful Day	U2	Brian Eno & Daniel Lanois, producers; Steve Lillywhite & Richard Rainey, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
1939	Two Against Nature	Steely Dan	Walter Becker & Donald Fagen, producers; Phil Burnett, Roger Nichols, Dave Russell & Elliot Scheiner, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steely%2BDan/Steely%2520Dan_1_1_1575366216.jpg?itok=-Dgj2tWg
1940	Shelby Lynne	Shelby Lynne		
1941	I Try	Macy Gray	Macy Gray	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Macy%2BGray/Macy%2520Gray_1_1_1581552306.jpg?itok=IWA6AHU7
1942	She Walks This Earth (Soberana Rosa)	Sting	Sting	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
1943	Cousin Dupree	Steely Dan	Steely Dan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steely%2BDan/Steely%2520Dan_1_1_1575366216.jpg?itok=-Dgj2tWg
1944	Is You Is, Or Is You Ain't (My Baby)	B.B. King & Dr. John	B.B. King & Dr. John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1946	Symphony No. 1	Joe Jackson	Joe Jackson, producer; Dan Gellert, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BJackson/Joe%2520Jackson_1_1_1581551765.jpg?itok=VdVyghmt
1947	Both Sides Now	Joni Mitchell	Larry Klein & Joni Mitchell, producers; Geoff Foster & Allen Sides, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
1948	There Goes The Neighborhood	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
1949	Again	Lenny Kravitz	Lenny Kravitz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lenny%2BKravitz/Lenny%2520Kravitz_1_1_1597152201.jpg?itok=uCcfWgPU
1950	Guerrilla Radio	Rage Against The Machine	Rage Against The Machine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rage%2BAgainst%2BThe%2BMachine/Rage%2520Against%2520The%2520Machine_1_1_1581551891.jpg?itok=LZnLlyBq
1951	Elite	Deftones	Deftones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deftones/Deftones_1_1_1598277364.jpg?itok=j1lWozrF
1952	The Call Of Ktulu	Metallica & Michael Kamen	(San Francisco Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
1953	With Arms Wide Open	Scott Stapp & Mark Tremonti, songwriters (Creed)	Scott Stapp & Mark Tremonti, songwriters (Creed)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Scott%2BStapp/Scott%2520Stapp_1_1_1581554125.jpg?itok=Qf4-6LHZ
1954	There Is Nothing Left To Lose	Foo Fighters	Foo Fighters & Adam Kasper, producers; Adam Kasper, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
1955	Kid A	Radiohead	Nigel Godrich & Radiohead, producers; Nigel Godrich, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Radiohead/Radiohead_1_1_1591112885.jpg?itok=l2Pr-TrB
1956	He Wasn't Man Enough	Toni Braxton	Toni Braxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
1957	Untitled (How Does It Feel)	D'Angelo	D'Angelo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/D%2527Angelo/D%2527Angelo_1_1_1598956250.jpg?itok=6v-IaL_V
1958	Say My Name	Destiny's Child	Destiny's Child	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Destiny%2527s%2BChild/Destiny%2527s%2520Child_1_1_1597243640.jpg?itok=OvuQeHB0
1959	Voodoo	D'Angelo	D'Angelo, producer; D'Angelo & Russell "The Dragon" Elevado, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/D%2527Angelo/D%2527Angelo_1_1_1598956250.jpg?itok=6v-IaL_V
1960	Ear-Resistible	The Temptations	The Temptations	
1961	The Real Slim Shady	Eminem	Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1962	Forgot About Dre	Dr. Dre Featuring Eminem	Dr. Dre Featuring Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BDre/Dr%2520Dre_1_1_1581552284.jpg?itok=uis2YD5K
1963	The Marshall Mathers LP	Eminem	Eminem, producer; Dr. Dre & Richard Huredia, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
1964	Breathe	Faith Hill	Faith Hill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Faith%2BHill/Faith%2520Hill_1_1_1581554831.jpg?itok=byNQrGei
1965	Solitary Man	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
1966	Cherokee Maiden	Asleep At The Wheel	Asleep At The Wheel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
1967	Let's Make Love	Faith Hill & Tim McGraw	Faith Hill & Tim McGraw	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Faith%2BHill/Faith%2520Hill_1_1_1581554831.jpg?itok=byNQrGei
1968	Leaving Cottondale	Alison Brown & Béla Fleck	Alison Brown & Béla Fleck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1969	I Hope You Dance	Mark D. Sanders & Tia Sillers, songwriters (Lee Ann Womack)	Mark D. Sanders & Tia Sillers, songwriters (Lee Ann Womack)	
1970	The Grass Is Blue	Dolly Parton	Steve Buckingham, producer; Gary Paczosa, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dolly%2BParton/Dolly%2520Parton_1_1_1581552316.jpg?itok=1Iad2upT
1971	Thinking Of You	Kitaro	Kitaro, producer; Gary Barlough & Peter R. Kelsey, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kitaro/Kitaro_1_1_1581553598.jpg?itok=wekekap-
1972	Outbound	Béla Fleck & The Flecktones	Béla Fleck, producer; Richard Battaglia, Robert Battaglia & Béla Fleck, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
1973	In The Moment - Live In Concert	Dianne Reeves	George Duke, producer; Erik Zobler, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BDuke/George%2520Duke_1_1_1581552160.jpg?itok=cwluJn3a
1974	(Go) Get It	Pat Metheny, soloist	Pat Metheny, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
1975	Contemporary Jazz	Branford Marsalis Quartet	Rob "Wacko!" Hunter & Branford Marsalis, producers; Rob "Wacko!" Hunter, engineer/mixer	
1976	52nd Street Themes	Joe Lovano	Joe Lovano, producer; James Farber, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BLovano/Joe%2520Lovano_1_1_1578384941.jpg?itok=FZsTrEzo
1977	Live At The Village Vanguard	Chucho Valdés	Jon Fausty, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chucho%2BVald%25C3%25A9s/Chucho%2520Valdes_1_1_1581560137.jpg?itok=jZ6vH_c6
1978	Double Take	Petra	Dino Elefante & John Elefante, producers; David Hall & J.R. McNeely, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petra/Petra_1_1_1575368028.jpg?itok=xVe1C_XR
3570	No Shortage	The Imperials	The Imperials	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_19.png?itok=2fncqXxp
1979	If I Left The Zoo	Jars Of Clay	Dennis Herring, producer; Rich Hasal & Dennis Herring, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jars%2BOf%2BClay/Jars%2520Of%2520Clay_1_1_1575368205.jpg?itok=KH3XivHB
1980	Soldier Of The Cross	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs, producer; Brent King & Alan Shulman, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
1981	You Can Make It	Shirley Caesar	Shirley Caesar, Michael E. Mathis & Bubba Smith, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
1982	Thankful	Mary Mary	Warryn "Baby Dubb" Campbell, producer; Manny Marroquin, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BMary/Mary%2520Mary_1_1_1581552175.jpg?itok=Z9q62Tcg
1983	Live - God Is Working	Carol Cymbala, choir director; Carol Cymbala, Brent King & Oliver Wells, producers; Rob Burrell & Brent King, engineers/mixers (The Brooklyn Tabernacle Choir)	Carol Cymbala, choir director; Carol Cymbala, Brent King & Oliver Wells, producers; Rob Burrell & Brent King, engineers/mixers (The Brooklyn Tabernacle Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oliver%2BWells/Oliver%2520Wells_1_1_1576162394.jpg?itok=akDG7Fc7
1984	Shakira - MTV Unplugged	Shakira	Tim Mitchell & Shakira, producers; Marcelo Añez, Adam Blackburn, Sebastián Krys & Eric Schilling, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shakira/Shakira_1_1_1594207397.jpg?itok=X_hiC5-c
1985	Uno	La Ley	Humberto Gatica, producer; Humberto Gatica, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BLey/La%2520Ley_1_1_1597177208.jpg?itok=SE4zQH57
1986	Alma Caribeña	Gloria Estefan	Robert Blades, Emilio Estefan Jr. & George Noriega, producers; Scott Canto, Gustavo Celis, Javier Garza, Mauricio Guerrero, Sebastián Krys & Freddy Piñero Jr., engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BEstefan/Gloria%2520Estefan_1_1_1597398041.jpg?itok=ksUWaVHg
1987	Masterpiece/Obra Maestra	Tito Puente & Eddie Palmieri	Eddie Palmieri & Tito Puente, producers; Jon Fausty, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
1988	Olga Viva, Viva Olga	Olga Tañón	Olga Tañón, producer; David Hewitt & Hector Ivan Rosa, engineers/mixers	
1989	Por Una Mujer Bonita	Pepe Aguilar	Pepe Aguilar, producer; Carlos Ceballos, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pepe%2BAguilar/Pepe%2520Aguilar_1_1_1578385715.jpg?itok=DMy8l6hK
1990	¿Qué Es Música Tejana?	The Legends	Hugo Guerrero & Freddie Martínez, Sr., producers; Greg García, Hugo Guerrero, Freddie Martínez, Sr. & Edward Pérez, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BLegends/The%2520Legends_1_1_1581628981.jpg?itok=oT7jj6jV
1991	Riding With The King	B.B. King & Eric Clapton	Eric Clapton & Simon Climie, producers; Alan Douglas, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
1992	Shoutin’ In Key	Taj Mahal & The Phantom Blues Band	Tony Braunagel, producer; Terry Becker & Joe McGrath, engineers/mixers	
1993	Public Domain - Songs From The Wild Land	Dave Alvin	Dave Alvin, producer; Mark Linett, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BAlvin/Dave%2520Alvin_1_1_1575373972.jpg?itok=uqja3mSv
1994	Red Dirt Girl	Emmylou Harris	Malcolm Burn, producer; Malcolm Burn & Jim Watts, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
1995	Gathering Of Nations Pow Wow	(Various Artists)	Tom Bee & Douglas Spotted Eagle, producers; Douglas Spotted Eagle, engineer/mixer	
1996	Art And Life	Beenie Man	Beenie Man	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beenie%2BMan/Beenie%2520Man_1_1_1581552158.jpg?itok=m7oj55JB
1997	João Voz E Violão	João Gilberto	Antônio "Moogie" Canàzio & Caetano Veloso, producers; Antônio "Moogie" Canàzio, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jo%25C3%25A3o%2BGilberto/Joao%2520Gilberto_1_1_1581559996.jpg?itok=wjcVEghe
1998	Touched By A Polka	Jimmy Sturr	Tom Pick & Jimmy Sturr, producers; Jon Dickson, Ken Irwin, Tom Pick & Jimmy Sturr, engineers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
1999	Woody's Roundup Featuring Riders In The Sky	Riders In The Sky	Joseph Miskulin, producer; Riders In The Sky (Paul Chrisman, Douglas Green, Fred LaBour & Joseph Miskulin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Riders%2BIn%2BThe%2BSky/Riders%2520In%2520The%2520Sky_1_1_1582881976.jpg?itok=3FZzxhvh
2000	Harry Potter And The Goblet Of Fire	Jim Dale	David Rapkin, producer	
2001	The Measure Of A Man	Sidney Poitier	Rick Harris & John Runnette, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rick%2BHarris/Rick%2520Harris_1_1_1581641987_0.jpg?itok=8JSdeGwQ
2002	Braindroppings	George Carlin	George Carlin, artist. John Runnette, producer.	
2003	Elton John & Tim Rice's Aida	Elton John, composer; Tim Rice, lyricist; Guy Babylon, Paul Bogaev, Frank Filipetti & Chris Montan, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast)	Elton John, composer; Tim Rice, lyricist; Guy Babylon, Paul Bogaev, Frank Filipetti & Chris Montan, producers; Frank Filipetti, engineer/mixer (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elton%2BJohn/Elton%2520John_1_1_1596808830.jpg?itok=OqYWw2a1
2004	Almost Famous	(Various Artists)	Danny Bramson & Cameron Crowe, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cameron%2BCrowe/Cameron%2520Crowe_1_1_1597181709.jpg?itok=8olmwZNT
2005	American Beauty	Thomas Newman, composer; Bill Bernstein & Thomas Newman, producers (Thomas Newman)	Thomas Newman, composer; Bill Bernstein & Thomas Newman, producers (Thomas Newman)	
2006	When She Loved Me (From Toy Story 2)	Randy Newman, songwriter (Sarah McLachlan)	Randy Newman, songwriter (Sarah McLachlan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
2007	Theme From Angela's Ashes	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3726	This Is A Recording	Lily Tomlin	Lily Tomlin	
2008	Spain For Sextet & Orchestra	Chick Corea, arranger (Chick Corea)	Chick Corea, arranger (Chick Corea)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
2009	Music	Kevin Reagan, art director (Madonna)	Kevin Reagan, art director (Madonna)	
2010	Miles Davis & John Coltrane - The Complete Columbia Recordings 1955-1961	Frank Harkins & Arnold Levine, art directors (Miles Davis & John Coltrane)	Frank Harkins & Arnold Levine, art directors (Miles Davis & John Coltrane)	
2011	Louis Armstrong - The Complete Hot Five & Hot Seven Recordings	Steve Berkowitz, Seth Rothstein & Phil Schaap, compilation producers; Michael Brooks, Seth Foster, Andreas Meyer, Woody Pornpitaksuk, Ken Robertson, Tom Ruff, Phil Schaap & Mark Wilder, mastering engineers (Louis Armstrong)	Steve Berkowitz, Seth Rothstein & Phil Schaap, compilation producers; Michael Brooks, Seth Foster, Andreas Meyer, Woody Pornpitaksuk, Ken Robertson, Tom Ruff, Phil Schaap & Mark Wilder, mastering engineers (Louis Armstrong)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrooks/Michael%2520Brooks_1_1_1581558904.jpg?itok=0Mqeeefx
2012	Dr. Dre	Dr. Dre		
2013				
2014	Dvorák: Requiem, Op. 89; Sym. No. 9, Op. 95 "From the New World"	John Eargle, engineer (Zdenek Macal)	John Eargle, engineer (Zdenek Macal)	
2015	Shostakovich: The String Quartets	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists; Da-Hong Seetoo & Max Wilcox, producers	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists; Da-Hong Seetoo & Max Wilcox, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
2016	Mahler: Sym. No. 10	Sir Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Berliner Philharmonic)	Sir Simon Rattle, conductor; Stephen Johns, producer; Mike Clements, engineer (Berliner Philharmonic)	
2017	Busoni: Doktor Faust	Kim Begley, Dietrich Fischer-Dieskau, Dietrich Henschel, Markus Hollop, Eva Jenis & Torsten Kerl; Kent Nagano, conductor; Martin Sauer, producer; Jean Chatauret, engineer (Orchestre De L'Opera Nationale De Lyon)	Kim Begley, Dietrich Fischer-Dieskau, Dietrich Henschel, Markus Hollop, Eva Jenis & Torsten Kerl; Kent Nagano, conductor; Martin Sauer, producer; Jean Chatauret, engineer (Orchestre De L'Opera Nationale De Lyon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dietrich%2BFischer-Dieskau/Dietrich%2520Fischer-Dieskau_1_1_1581615757.jpg?itok=P3gnjEuD
2018	Penderecki: Credo	Helmuth Rilling, conductor; Karen Wilson, producer; Don Harder, engineer (Oregon Bach Festival Chorus; Oregon Bach Festival Orchestra)	Helmuth Rilling, conductor; Karen Wilson, producer; Don Harder, engineer (Oregon Bach Festival Chorus; Oregon Bach Festival Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Helmuth%2BRilling/Helmuth%2520Rilling_1_1_1581614916.jpg?itok=U6BB5GnJ
2019	Maw: Violin Concerto	Joshua Bell, artist; Grace Row, producer; Charles Harbutt, engineer (London Philharmonic)	Joshua Bell, artist; Grace Row, producer; Charles Harbutt, engineer (London Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joshua%2BBell/Joshua%2520Bell_1_1_1576346219.jpg?itok=RCf0ZNCH
2020	Dreams Of A World - Works Of Lauro, Ruiz-Pipo & Duarte	Sharon Isbin, artist; Tobias Lehmann, producer; Jens Schünemann, engineer	Sharon Isbin, artist; Tobias Lehmann, producer; Jens Schünemann, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sharon%2BIsbin/Sharon%2520Isbin_1_1_1581559530.jpg?itok=JJswqfRn
2021	Shadow Dances - Stravinsky Miniatures, Tango, Suite No. 1 & Octet	Christian Gansch, producer; Wolf-Dieter Karwatky, engineer	Christian Gansch, producer; Wolf-Dieter Karwatky, engineer	
2022	The Vivaldi Album - Dell'aura al sussurrar, Alma oppressa	Christopher Raeburn, producer; Jonathan Stokes, engineer (Il Giardino Armonico)	Christopher Raeburn, producer; Jonathan Stokes, engineer (Il Giardino Armonico)	
2023	Crumb: Star-Child	George Crumb, composer	George Crumb, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BCrumb/George%2520Crumb_1_1_1581654687.jpg?itok=f7RSfdaD
2024	Appalachian Journey	Yo-Yo Ma, Edgar Meyer, Mark O'Connor & Various Artists	Steven Epstein, producer; Richard King, engineer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2025	Learn To Fly	Foo Fighters	Jesse Peretz, video director; Tina Nakane, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Foo%2BFighters/Foo%2520Fighters_1_1_1581551727.jpg?itok=N8Z068q1
2026	Gimme Some Truth - The Making Of John Lennon's Imagine Album	(John Lennon)	Andrew Solt, video director; Yoko Ono, Andrew Solt, Leslie Tong & Greg Vines, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yoko%2BOno/Yoko%2520Ono_1_1_1589915068.jpg?itok=fAcZfrzt
2027	Smooth	Santana Featuring Rob Thomas	Matt Serletic, producer; David Thoener, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BThomas/Rob%2520Thomas_1_1_1575361007.jpg?itok=5bqO3DlV
2028	Supernatural	Santana	Clive Davis, Jerry "Wonder" Duplessis, Dust Brothers, Alex Gonzales, Charles Goodan, Stephen M. Harris, Lauryn Hill, Art Hodge, Wyclef Jean, Fher Olvera, KC Porter, Dante Ross & Matt Serletic, producers; Mike Couzzi, Benny Faccone, Steve Farrone, Steve Fontano, David Frazer, Jim Gaines, John Gamble, Comissioner Gordon, Andy Grassi, John Karpowich, Glenn Kolotkin, Tom Lord-Alge, Jeff Poe, Tony Prendatt, Anton Pukshansky, Warren Riker, Jim Scott, John Seymour, Matty Spindel, T-Ray, Chris Theis, David Thoener & Alvaro Villagra, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Clive%2BDavis/Clive%2520Davis_1_1_1581552219.jpg?itok=oS9C55fh
2029	Christina Aguilera	Christina Aguilera		
2030	I Will Remember You	Sarah McLachlan	Sarah McLachlan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BMcLachlan/Sarah%2520McLachlan_1_1_1578385034.jpg?itok=qenx1lls
2031	Brand New Day	Sting	Sting	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
2032	Maria Maria	Santana	Santana	
2033	El Farol	Santana	Santana	
2034	Believe	Cher	Brian Rawling & Mark Taylor, producers; Mark Taylor, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cher/Cher_1_1_1576266764.jpg?itok=2YcedH68
2035	Bennett Sings Ellington - Hot & Cool	Tony Bennett	Tony Bennett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
3727	Desiderata	Les Crane	Les Crane	
2036	Sweet Child O' Mine	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
2037	American Woman	Lenny Kravitz	Lenny Kravitz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lenny%2BKravitz/Lenny%2520Kravitz_1_1_1597152201.jpg?itok=uCcfWgPU
2038	Put Your Lights On	Santana Featuring Everlast	Santana Featuring Everlast	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Everlast/Everlast_1_1_1575372792.jpg?itok=iSVGEj4O
2039	Whiskey In The Jar	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
2040	Iron Man	Black Sabbath	Black Sabbath	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Black%2BSabbath/Black%2520Sabbath_1_1_1575368312.jpg?itok=PBBosk01
2041	Scar Tissue	Flea, John Frusciante, Anthony Kiedis & Chad Smith, songwriters (Red Hot Chili Peppers)	Flea, John Frusciante, Anthony Kiedis & Chad Smith, songwriters (Red Hot Chili Peppers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flea/Flea_1_1_1581613897.jpg?itok=aNOOfVhM
2042	Mutations	Beck	Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beck/Beck_1_1_1578385706.jpg?itok=mG8JgiRs
2043	It's Not Right But It's Okay	Whitney Houston	Whitney Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whitney%2BHouston/Whitney%2520Houston_1_1_1594980040.jpg?itok=LS4iD1jw
2044	Staying Power	Barry White	Barry White	
2045	No Scrubs	TLC	TLC	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TLC/TLC_1_1_1575360587.jpg?itok=e6UPRyZF
2046	Fanmail	TLC	TLC	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TLC/TLC_1_1_1575360587.jpg?itok=e6UPRyZF
2047	My Name Is	Eminem	Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
2048	You Got Me	The Roots Featuring Erykah Badu	The Roots Featuring Erykah Badu	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BRoots/The%2520Roots_1_1_1584457095.jpg?itok=befmoqqZ
2049	The Slim Shady LP	Eminem	Eminem	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eminem/Eminem_1_1_1591112923.jpg?itok=L57YXwWn
2050	Man! I Feel Like A Woman!	Shania Twain	Shania Twain	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shania%2BTwain/Shania%2520Twain_1_1_1575368716.jpg?itok=9HFmFNwn
2051	Choices	George Jones	George Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BJones/George%2520Jones_1_1_1575365164.jpg?itok=Pjz_Fzc6
2052	Ready To Run	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
2053	After The Gold Rush	Emmylou Harris, Linda Ronstadt & Dolly Parton	Emmylou Harris, Linda Ronstadt & Dolly Parton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
2054	Bob's Breakdowns	Asleep At The Wheel Featuring Tommy Allsup, Floyd Domino, Larry Franklin, Vince Gill & Steve Wariner	Asleep At The Wheel Featuring Tommy Allsup, Floyd Domino, Larry Franklin, Vince Gill & Steve Wariner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2055	Come On Over	Robert John "Mutt" Lange & Shania Twain, songwriters (Shania Twain)	Robert John "Mutt" Lange & Shania Twain, songwriters (Shania Twain)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shania%2BTwain/Shania%2520Twain_1_1_1575368716.jpg?itok=9HFmFNwn
2056	Fly	Dixie Chicks	Billy Sherrill, engineer/mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
2057	Ancient Tones	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs & Kentucky Thunder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
2058	Celtic Solstice	Paul Winter & Friends	Paul Winter & Friends	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BWinter/Paul%2520Winter_1_1_1581556567.jpg?itok=dsk7tUfx
2059	Inside	David Sanborn	David Sanborn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
2060	When I Look In Your Eyes	Diana Krall	Diana Krall	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Diana%2BKrall/Diana%2520Krall_1_1_1589273612.jpg?itok=TEF_xptn
2061	In Walked Wayne	Wayne Shorter, soloist	Wayne Shorter, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
2062	Like Minds	Gary Burton, Chick Corea, Pat Metheny, Roy Haynes & Dave Holland	Gary Burton, Chick Corea, Pat Metheny, Roy Haynes & Dave Holland	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BBurton/Gary%2520Burton_1_1_1581554709.jpg?itok=h13WeAyX
2063	Serendipity 18	The Bob Florence Limited Edition	The Bob Florence Limited Edition	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BFlorence/Bob%2520Florence_1_1_1597164429.jpg?itok=MzJfg_op
2064	Latin Soul	Poncho Sanchez	Poncho Sanchez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Poncho%2BSanchez/Poncho%2520Sanchez_1_1_1576365357.jpg?itok=iHX7UWr6
2065	Kennedy Center Homecoming	Bill & Gloria Gaither & Their Homecoming Friends	Bill & Gloria Gaither & Their Homecoming Friends	
2066	Christmas With Shirley Caesar	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
2067	Mountain High...Valley Low	Yolanda Adams	Yolanda Adams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yolanda%2BAdams/Yolanda%2520Adams_1_1_1581559847.jpg?itok=zk1UUbFK
2068	High And Lifted Up	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	
2069	Tiempos	Rubén Blades	Rubén Blades	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
2070	Resurrection	Chris Perez Band	Chris Perez Band	
3770	Crosby, Stills And Nash	Crosby, Stills And Nash		
2071	Mambo Birdland	Tito Puente	Tito Puente	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
2072	Llego...Van Van - Van Van Is Here	Los Van Van	Los Van Van	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BVan%2BVan/Los%2520Van%2520Van_1_1_1581559561.jpg?itok=0aWP8fVD
2073	Pintame	Elvis Crespo	Elvis Crespo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elvis%2BCrespo/Elvis%2520Crespo_1_1_1594946258.jpg?itok=yMsXr7RJ
2074	100 Años De Mariachi	Placido Domingo	Placido Domingo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Placido%2BDomingo/Placido%2520Domingo_1_1_1591693620.jpg?itok=lD94G-Wv
2075	Por Eso Te Amo	Los Palominos	Los Palominos	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BPalominos/Los%2520Palominos_1_1_1581554725.jpg?itok=uguahLxF
2076	Blues On The Bayou	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
2077	Take Your Shoes Off	The Robert Cray Band	The Robert Cray Band	
2078	Press On	June Carter Cash	June Carter Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/June%2BCarter%2BCash/June%2520Carter%2520Cash_1_1_1581565077.jpg?itok=D_8k84jR
2079	Mule Variations	Tom Waits	Tom Waits	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BWaits/Tom%2520Waits_1_1_1575366484.jpg?itok=THVo6jMB
2080	Calling Rastafari	Burning Spear	Burning Spear	
2081	Livro	Caetano Veloso	Caetano Veloso	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Caetano%2BVeloso/Caetano%2520Veloso_1_1_1588264727.jpg?itok=5o3mGyuY
2082	Polkasonic	Brave Combo	Brave Combo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brave%2BCombo/Brave%2520Combo_1_1_1581553394.jpg?itok=-ctch2Hy
2083	The Adventures Of Elmo In Grouchland	(Various Artists)	(Various Artists)	
2084	Listen To The Storyteller	Wynton Marsalis, Graham Greene & Kate Winslet	Wynton Marsalis, Graham Greene & Kate Winslet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
2085	The Autobiography Of Martin Luther King, Jr.	LeVar Burton	LeVar Burton	
2086	Bigger And Blacker	Chris Rock	Chris Rock, artist.	
2087	Annie Get Your Gun	Stephen Ferrera & John McDaniel, producers (The New Broadway Cast Including Bernadette Peters & Tom Wopat)	Stephen Ferrera & John McDaniel, producers (The New Broadway Cast Including Bernadette Peters & Tom Wopat)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMcDaniel/John%2520McDaniel_1_1_1597168825.jpg?itok=k8VJNDNv
2088	Tarzan	Phil Collins	Phil Collins & Mark Mancina, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BCollins/Phil%2520Collins_1_1_1596706545.jpg?itok=MQR7SHdv
2089	A Bug's Life	Randy Newman, composer (Randy Newman)	Randy Newman, composer (Randy Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
2090	Beautiful Stranger (From Austin Powers - The Spy Who Shagged Me)	Madonna & William Orbit, songwriters (Madonna)	Madonna & William Orbit, songwriters (Madonna)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madonna/Madonna_1_1_1578385371.jpg?itok=LkjJTTOf
2091	Joyful Noise Suite	Don Sebesky, composer (Don Sebesky)	Don Sebesky, composer (Don Sebesky)	
2092	Chelsea Bridge	Don Sebesky, arranger (Don Sebesky)	Don Sebesky, arranger (Don Sebesky)	
2093	Lonely Town	Alan Broadbent, arranger (Charlie Haden Quartet West Featuring Shirley Horn)	Alan Broadbent, arranger (Charlie Haden Quartet West Featuring Shirley Horn)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BBroadbent/Alan%2520Broadbent_1_1_1589274163.jpg?itok=R0h9BJWj
2094	Ride With Bob	Ray Benson, Sally Carns & Buddy Jackson, art directors (Asleep At The Wheel)	Ray Benson, Sally Carns & Buddy Jackson, art directors (Asleep At The Wheel)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BBenson/Ray%2520Benson_1_1_1581555698.jpg?itok=0Xk3zp5A
2095	Miles Davis - The Complete Bitches Brew Sessions	Ron Jaramillo & Arnold Levine, art directors (Miles Davis)	Ron Jaramillo & Arnold Levine, art directors (Miles Davis)	
2096	John Coltrane - The Classic Quartet: Complete Impulse! Studio Recordings	Bob Blumenthal, album notes writer (John Coltrane)	Bob Blumenthal, album notes writer (John Coltrane)	
2097	The Duke Ellington Centennial Edition - The Complete RCA Victor Recordings (1927-1973)	Orrin Keepnews & Steven Lasker, compilation producers; Paul Brizzi, Dennis Ferrante & Steven Lasker, mastering engineers (Duke Ellington)	Orrin Keepnews & Steven Lasker, compilation producers; Paul Brizzi, Dennis Ferrante & Steven Lasker, mastering engineers (Duke Ellington)	
2098	Walter Afanasieff	Walter Afanasieff		
2099	Stravinsky: Firebird; The Rite Of Spring; Perséphone	Markus Heiland, engineer (Michael Tilson Thomas, conductor)	Markus Heiland, engineer (Michael Tilson Thomas, conductor)	
2100	Adam Abeshouse	Adam Abeshouse		
2101	Stravinsky: The Rake's Progress	Ian Bostridge, Bryn Terfel, Anne Sofie von Otter & Deborah York; John Eliot Gardiner, conductor; Nicholas Parker, producer (Monteverdi Choir; London Symphony Orchestra)	Ian Bostridge, Bryn Terfel, Anne Sofie von Otter & Deborah York; John Eliot Gardiner, conductor; Nicholas Parker, producer (Monteverdi Choir; London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ian%2BBostridge/Ian%2520Bostridge_1_1_1581564595.jpg?itok=lJMXGOsM
2102	Britten: War Requiem	Robert Shafer, conductor (Maryland Boys Choir, Shenandoah Conservatory Chorus & Washington Choir)	Robert Shafer, conductor (Maryland Boys Choir, Shenandoah Conservatory Chorus & Washington Choir)	
2103	Prokofiev: Piano Concertos Nos. 1 & 3/Bartók: Piano Concerto No. 3	Martha Argerich, artist (Orchestre Symphonie De Montréal)	Martha Argerich, artist (Orchestre Symphonie De Montréal)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Martha%2BArgerich/Martha%2520Argerich_1_1_1581558099.jpg?itok=6qolqQJH
2104	Shostakovich: 24 Preludes & Fugues, Op. 87	Vladimir Ashkenazy, artist	Vladimir Ashkenazy, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
2215	Looking In The Eyes Of Love	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
2105	Beethoven: The Violin Sonatas (Nos. 1-3, Op. 12; Nos. 1-3, Op. 30; "Spring" Sonata)	Anne-Sophie Mutter & Lambert Orkis, artists	Anne-Sophie Mutter & Lambert Orkis, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne-Sophie%2BMutter/Anne-Sophie%2520Mutter_1_1_1575370509.jpg?itok=ovUzRZx6
2106	Colors Of Love - Works Of Thomas, Stucky, Tavener & Rands	Colors Of Love - Works Of Thomas, Stucky, Tavener & Rands		
2107	Mahler: Des Knaben Wunderhorn	(Berliner Philharmonic)	(Berliner Philharmonic)	
2108	Boulez: Répons	Pierre Boulez, composer	Pierre Boulez, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2109	Schickele: Hornsmoke (Piano Concerto No. 2 In F Major "Ole"; Brass Calendar; Hornsmoke - A Horse Opera)	Peter Schickele, narrator; The Chestnut Brass Company	Peter Schickele, narrator; The Chestnut Brass Company	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BSchickele/Peter%2520Schickele_1_1_1581560645.jpg?itok=pBHcw9SK
2110	Freak On A Leash	Korn	Jonathan Dayton, Valerie Faris, Todd McFarlane & Graham Morris, video directors; Terry Fitzgerald & Bart Lipton, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Korn/Korn_1_1_1595602668.jpg?itok=cHMNtTSN
2111	Band Of Gypsys - Live At Fillmore East	(Jimi Hendrix)	Bob Smeaton, video director; Neil Aspinall & Chips Chipperfield, video producers	
2112	My Heart Will Go On (Love Theme From Titanic)	Celine Dion	Walter Afanasieff, Simon Franglen & James Horner, producers; Simon Franglen, Humberto Gatica & David Gleeson, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celine%2BDion/C%25C3%25A9line%2520Dion_1_1_1579163253.jpg?itok=7lpsetr2
2113	The Miseducation Of Lauryn Hill	Lauryn Hill	Lauryn Hill, producer; Comissioner Gordon, Matt Howe, Storm Jefferson, Ken Johnston, Tony Prendatt, Warren Riker, Chris Theis & Johnny Wydrycz, engineers/mixers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/laurynhill-spotlight-459735960.png?itok=KsyXaL_u
2114	Lauryn Hill	Lauryn Hill		
2115	My Father's Eyes	Eric Clapton	Eric Clapton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2116	Jump Jive An' Wail	The Brian Setzer Orchestra	The Brian Setzer Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BSetzer/Brian%2520Setzer_1_1_1584540603.jpg?itok=EnE_2mvM
2117	I Still Have That Other Girl	Elvis Costello & Burt Bacharach	Elvis Costello & Burt Bacharach	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elvis%2BCostello/Elvis%2520Costello_1_1_1594649557.jpg?itok=8w_hGvGC
2118	Sleepwalk	The Brian Setzer Orchestra	The Brian Setzer Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brian%2BSetzer/Brian%2520Setzer_1_1_1584540603.jpg?itok=EnE_2mvM
2119	Ray Of Light	Madonna	Madonna & William Orbit, producers; Pat McCarthy, mixer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madonna/Madonna_1_1_1578385371.jpg?itok=LkjJTTOf
2120	Live At Carnegie Hall - The 50th Anniversary Concert	Patti Page	Patti Page	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patti%2BPage/Patti%2520Page_1_1_1597166025.jpg?itok=qH1AMr50
2121	Uninvited	Alanis Morissette	Alanis Morissette	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alanis%2BMorissette/Alanis%2520Morissette_1_1_1578385387.jpg?itok=9HWGTLzj
2122	Fly Away	Lenny Kravitz	Lenny Kravitz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lenny%2BKravitz/Lenny%2520Kravitz_1_1_1597152201.jpg?itok=uCcfWgPU
2123	Pink	Aerosmith	Aerosmith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aerosmith/Aerosmith_1_1_1578384825.jpg?itok=w09cbzmj
2124	Most High	Jimmy Page & Robert Plant	Jimmy Page & Robert Plant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BPage/Jimmy%2520Page_1_1_1575370355.jpg?itok=HXJhCTJH
2125	Better Than You	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
2126	The Roots Of Coincidence	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2127	The Globe Sessions	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
2128	Hello Nasty	Beastie Boys	Beastie Boys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beastie%2BBoys/Beastie%2520Boys_1_1_1575359161.jpg?itok=w3Sud-IR
2129	Doo Wop (That Thing)	Lauryn Hill	Lauryn Hill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/laurynhill-spotlight-459735960.png?itok=KsyXaL_u
2130	St. Louis Blues	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
2131	The Boy Is Mine	Brandy & Monica	Brandy & Monica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brandy/Brandy_1_1_1594578921.jpg?itok=DOazP3YK
2132	Live! - One Night Only	Patti LaBelle	Patti LaBelle	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patti%2BLaBelle/Patti%2520LaBelle_1_1_1576330328.jpg?itok=6M0aQLOG
2133	Gettin' Jiggy Wit It	Will Smith	Will Smith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Will%2BSmith/Will%2520Smith_1_1_1581552180.jpg?itok=ZsgRG6eK
2134	Intergalactic	Beastie Boys	Beastie Boys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beastie%2BBoys/Beastie%2520Boys_1_1_1575359161.jpg?itok=w3Sud-IR
2135	Vol. 2...Hard Knock Life	Jay-Z	Jay-Z	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jay%2BZ/Jay%2520Z_1_1_1578385117.jpg?itok=bZg04yvE
2136	You're Still The One	Shania Twain	Shania Twain	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shania%2BTwain/Shania%2520Twain_1_1_1575368716.jpg?itok=9HFmFNwn
2137	If You Ever Have Forever In Mind	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2138	There's Your Trouble	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
4007	Presenting The New Christy Minstrels	The New Christy Minstrels	The New Christy Minstrels	
2139	Same Old Train	Clint Black, Joe Diffie, Merle Haggard, Emmylou Harris, Alison Krauss, Patty Loveless, Earl Scruggs, Ricky Skaggs, Marty Stuart, Pam Tillis, Randy Travis, Travis Tritt & Dwight Yoakam	Clint Black, Joe Diffie, Merle Haggard, Emmylou Harris, Alison Krauss, Patty Loveless, Earl Scruggs, Ricky Skaggs, Marty Stuart, Pam Tillis, Randy Travis, Travis Tritt & Dwight Yoakam	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Clint%2BBlack/Clint%2520Black_1_1_1581551718.jpg?itok=EICJmBEt
2140	A Soldier's Joy	Randy Scruggs & Vince Gill	Randy Scruggs & Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2141	Wide Open Spaces	Dixie Chicks	Dixie Chicks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dixie%2BChicks/Dixie%2520Chicks_1_1_1598343738.jpg?itok=YXj33PAV
2142	Bluegrass Rules!	Ricky Skaggs & Kentucky Thunder	Ricky Skaggs & Kentucky Thunder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
2143	Landmarks	Clannad	Clannad	
2144	Imaginary Day	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2145	I Remember Miles	Shirley Horn	Shirley Horn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shirley%2BHorn/Shirley%2520Horn_1_1_1597166123.jpg?itok=KDn4-FWJ
2146	Rhumbata	Gary Burton & Chick Corea, soloists	Gary Burton & Chick Corea, soloists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BBurton/Gary%2520Burton_1_1_1581554709.jpg?itok=h13WeAyX
2147	Gershwin's World	Herbie Hancock	Herbie Hancock	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
2148	Count Plays Duke	Count Basie Orchestra; Grover Mitchell, director	Count Basie Orchestra; Grover Mitchell, director	
2149	You Are There	Ashley Cleveland	Ashley Cleveland	
2150	This Is My Song	Deniece Williams	Deniece Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deniece%2BWilliams/Deniece%2520Williams_1_1_1582724129.jpg?itok=PMHjDT_U
2151	The Apostle - Soundtrack	(Various Artists)	(Various Artists)	
2152	He Leadeth Me	Cissy Houston	Cissy Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cissy%2BHouston/Cissy%2520Houston_1_1_1597165908.jpg?itok=VrySV2us
2153	The Nu Nation Project	Kirk Franklin	Kirk Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
2154	Reflections	O'Landa Draper, choir director (O'Landa Draper & The Associates Choir)	O'Landa Draper, choir director (O'Landa Draper & The Associates Choir)	
2155	Vuelve	Ricky Martin	Ricky Martin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BMartin/Ricky%2520Martin_1_1_1596247673.jpg?itok=QYE1feQo
2156	Sueños Liquidos	Maná	Maná	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mana/Man%25C3%25A1_1_1_1581554575.jpg?itok=HOqh-KcC
2157	Contra La Corriente	Marc Anthony	Marc Anthony	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BAnthony/Marc%2520Anthony_1_1_1597235686.jpg?itok=R1zcxTbN
2158	Los Super Seven	Los Super Seven	Los Super Seven	
2159	Said And Done	Flaco Jimenez	Flaco Jimenez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flaco%2BJimenez/Flaco%2520Jimenez_1_1_1581554695.jpg?itok=bJ3lyzIw
2160	Any Place I'm Going	Otis Rush	Otis Rush	
2161	Slow Down	Keb' Mo'	Keb' Mo'	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keb%2527Mo%2527/Keb%2520Mo_1_1_1581609755.jpg?itok=E1mi2WjB
2162	Long Journey Home	The Chieftains	The Chieftains	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2163	Car Wheels On A Gravel Road	Lucinda Williams	Lucinda Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lucinda%2BWilliams/Lucinda%2520Williams_1_1_1594905591.jpg?itok=93RIrdZ8
2164	Friends	Sly And Robbie	Sly And Robbie	
2165	Quanta Live	Gilberto Gil	Gilberto Gil	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gilberto%2BGil/Gilberto%2520Gil_1_1_1588264811.jpg?itok=Wx9mMrgL
2166	Dance With Me	Jimmy Sturr & His Orchestra	Jimmy Sturr & His Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2167	Elmopalooza!	(The Sesame Street Muppets & Various Artists)	(The Sesame Street Muppets & Various Artists)	
2168	The Children's Shakespeare	(Various Artists)	(Various Artists)	
2169	Still Me	Christopher Reeve	Christopher Reeve	
2170	The 2000 Year Old Man In The Year 2000	Mel Brooks & Carl Reiner	Carl Reiner & Mel Brooks, artists.	
2171	Almost 12	Béla Fleck, Future Man & Victor Lemonte Wooten, composers (Béla Fleck & The Flecktones)	Béla Fleck, Future Man & Victor Lemonte Wooten, composers (Béla Fleck & The Flecktones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
2172	Saving Private Ryan	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
2173	Waltz For Debby	Don Sebesky, arranger (Don Sebesky)	Don Sebesky, arranger (Don Sebesky)	
2174	The Complete Hank Williams	Jim Kemp & Virginia Team, art directors (Hank Williams)	Jim Kemp & Virginia Team, art directors (Hank Williams)	
2175	Miles Davis Quintet 1965-1968	Bob Belden, Todd Coolman & Michael Cuscuna, album notes writers (Miles Davis Quintet)	Bob Belden, Todd Coolman & Michael Cuscuna, album notes writers (Miles Davis Quintet)	
2176	Rob Cavallo	Rob Cavallo		
2177	Barber: Prayers Of Kierkegaard/Vaughan Williams: Dona Nobis Pacem/Bartok: Cantata Profana	Jack Renner, engineer (Robert Shaw, conductor)	Jack Renner, engineer (Robert Shaw, conductor)	
2178	Mahler: Symphony No. 9	Pierre Boulez, conductor (Chicago Symphony Orchestra)	Pierre Boulez, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2179	Bartók: Bluebeard's Castle	Jessye Norman & Laszlo Polgar; Pierre Boulez, conductor; Karl-August Naegler, producer (Chicago Symphony Orchestra)	Jessye Norman & Laszlo Polgar; Pierre Boulez, conductor; Karl-August Naegler, producer (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2180	Penderecki: Violin Concerto No. 2 "Metamorphosen"	Anne-Sophie Mutter, artist (London Symphony Orchestra)	Anne-Sophie Mutter, artist (London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne-Sophie%2BMutter/Anne-Sophie%2520Mutter_1_1_1575370509.jpg?itok=ovUzRZx6
2181	Bach: English Suites Nos. 1, 3 & 6	Murray Perahia, artist	Murray Perahia, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Murray%2BPerahia/Murray%2520Perahia_1_1_1576371919.jpg?itok=GgJEmT9S
2182	American Scenes - Works Of Copland, Previn, Barber & Gershwin	Andre Previn & Gil Shaham, artists	Andre Previn & Gil Shaham, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/andreprevin-spotlight-541547177.png?itok=It63Jlcm
2183	Reich: Music For 18 Musicians	Reich: Music For 18 Musicians		
2184	The Beautiful Voice - Works Of Charpentier, Gounod, Massenet & Flotow	(English Chamber Orchestra)	(English Chamber Orchestra)	
2185	Soul Of The Tango - The Music Of Astor Piazzolla	Yo-Yo Ma, Jorge Calandrelli, conductor	Yo-Yo Ma, Jorge Calandrelli, conductor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2186	American Masters - Lou Reed: Rock And Roll Heart	Lou Reed	Timothy Greenfield-Sanders, video director; Karen Bernstein, Timothy Greenfield-Sanders, Tamar Hacker & Susan Lacy, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lou%2BReed/Lou%2520Reed_1_1_1581552160.jpg?itok=i3YhNVmO
2187	Sunny Came Home	Shawn Colvin	John Leventhal, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shawn%2BColvin/Shawn%2520Colvin_1_1_1581551750.jpg?itok=1w7xoEU4
2188	Time Out Of Mind	Bob Dylan	Daniel Lanois, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
2189	Paula Cole	Paula Cole		
2190	Building A Mystery	Sarah McLachlan	Sarah McLachlan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BMcLachlan/Sarah%2520McLachlan_1_1_1578385034.jpg?itok=qenx1lls
2191	Candle In The Wind 1997	Elton John	Elton John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elton%2BJohn/Elton%2520John_1_1_1596808830.jpg?itok=OqYWw2a1
2192	Virtual Insanity	Jamiroquai	Jamiroquai	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jamiroquai/Jamiroquai_1_1_1575368057.jpg?itok=LhBto_Sf
2193	Don't Look Back	John Lee Hooker & Van Morrison	John Lee Hooker & Van Morrison	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLee%2BHooker/John%2520Lee%2520Hooker_1_1_1598191374.jpg?itok=aMqX_xzj
2194	Last Dance	Sarah McLachlan	Sarah McLachlan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BMcLachlan/Sarah%2520McLachlan_1_1_1578385034.jpg?itok=qenx1lls
2195	Carry On	Donna Summer & Giorgio Moroder	Giorgio Moroder, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donna%2BSummer/Donna%2520Summer_1_1_1581552222.jpg?itok=3np3vg-z
2196	Hourglass	James Taylor	James Taylor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BTaylor/James%2520Taylor_1_1_1584111744.jpg?itok=Jb0Mb8r0
2197	Tony Bennett On Holiday	Tony Bennett	Tony Bennett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
2198	Criminal	Fiona Apple	Fiona Apple	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fiona%2BApple/Fiona%2520Apple_1_1_1594816220.jpg?itok=-9X4qW5F
2199	Cold Irons Bound	Bob Dylan	Bob Dylan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
2200	One Headlight	The Wallflowers	The Wallflowers	
2201	The End Is The Beginning Is The End	The Smashing Pumpkins	The Smashing Pumpkins	
2202	Aenema	Tool	Tool	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tool/Tool_1_1_1578387453.jpg?itok=eRR26rxr
2203	Block Rockin' Beats	The Chemical Brothers	The Chemical Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChemical%2BBrothers/The%2520Chemical%2520Brothers_1_1_1578387427.jpg?itok=d4bO6Tpl
2204	Blue Moon Swamp	John Fogerty	John Fogerty	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BFogerty/John%2520Fogerty_1_1_1576329923.jpg?itok=OS8FWFG3
2205	Ok Computer	Radiohead	Radiohead	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Radiohead/Radiohead_1_1_1591112885.jpg?itok=l2Pr-TrB
2206	On & On	Erykah Badu	Erykah Badu	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erykah%2BBadu/Erykah%2520Badu_1_1_1584457124.jpg?itok=xNIhqJu7
2207	I Believe I Can Fly	R. Kelly	R. Kelly	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/R.%2BKelly/R.%2520Kelly_1_1_1595587191.jpg?itok=l9T_9urX
2208	No Diggity	Blackstreet	Blackstreet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blackstreet/Blackstreet_1_1_1581554374.jpg?itok=-iHUNCob
2209	Baduizm	Erykah Badu	Erykah Badu	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Erykah%2BBadu/Erykah%2520Badu_1_1_1584457124.jpg?itok=xNIhqJu7
2210	Men In Black	Will Smith	Will Smith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Will%2BSmith/Will%2520Smith_1_1_1581552180.jpg?itok=ZsgRG6eK
2211	I'll Be Missing You	Puff Daddy & Faith Evans Featuring 112	Puff Daddy & Faith Evans Featuring 112	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/P%2BDiddy/Puff%2520Daddy_1_1_1597167118.jpg?itok=w8zPYraf
2212	No Way Out	Puff Daddy & The Family	Puff Daddy & The Family	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/P%2BDiddy/Puff%2520Daddy_1_1_1597167118.jpg?itok=w8zPYraf
2213	How Do I Live	Trisha Yearwood	Trisha Yearwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Trisha%2BYearwood/Trisha%2520Yearwood_1_1_1575368790.jpg?itok=FxupAsF3
2214	Pretty Little Adriana	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2216	In Another's Eyes	Trisha Yearwood & Garth Brooks	Trisha Yearwood & Garth Brooks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Trisha%2BYearwood/Trisha%2520Yearwood_1_1_1575368790.jpg?itok=FxupAsF3
2217	Little Liza Jane	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
2218	Butterfly Kisses	Bob Carlisle & Randy Thomas, songwriters (Bob Carlisle, Jeff Carson & Raybon Bros.)	Bob Carlisle & Randy Thomas, songwriters (Bob Carlisle, Jeff Carson & Raybon Bros.)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BCarlisle/Bob%2520Carlisle_1_1_1588264748.jpg?itok=wv4-8z_4
2219	Unchained	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
2220	So Long So Wrong	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alison_krauss_union_station_spotlight_138820345.png?itok=gonfQXzO
2221	Oracle	Michael Hedges	Michael Hedges	
2222	Into The Sun	Randy Brecker	Randy Brecker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BBrecker/Randy%2520Brecker_1_1_1575373868.jpg?itok=9QxyBydg
2223	Dear Ella	Dee Dee Bridgewater	Dee Dee Bridgewater	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dee%2BDee%2BBridgewater/Dee%2520Dee%2520Bridgewater_1_1_1575360127.jpg?itok=2gVd_jAa
2224	Stardust	Doc Cheatham & Nicholas Payton, soloists	Doc Cheatham & Nicholas Payton, soloists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BCheatham/Doc%2520Cheatham_1_1_1581563533.jpg?itok=tO_AhkaS
2225	Beyond The Missouri Sky	Charlie Haden & Pat Metheny	Charlie Haden & Pat Metheny	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BHaden/Charlie%2520Haden_1_1_1581553559.jpg?itok=fCFluGHd
2226	Joe Henderson Big Band	Joe Henderson Big Band	Joe Henderson Big Band	
2227	Habana	Roy Hargrove's Crisol	Roy Hargrove's Crisol	
2228	Welcome To The Freak Show - dc Talk Live In Concert	dc Talk	dc Talk	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/dc%2BTalk/dc%2520Talk_1_1_1598306052.jpg?itok=rEqPYSAR
2229	Much Afraid	Jars Of Clay	Jars Of Clay	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jars%2BOf%2BClay/Jars%2520Of%2520Clay_1_1_1575368205.jpg?itok=KH3XivHB
2230	Amazing Grace 2 - A Country Salute To Gospel	(Various Artists)	(Various Artists)	
2231	I Couldn't Hear Nobody Pray	The Fairfield Four	The Fairfield Four	
2232	God's Property From Kirk Franklin's Nu Nation	Myron Butler, Kirk Franklin & Robert Searight II, choir directors (God's Property)	Myron Butler, Kirk Franklin & Robert Searight II, choir directors (God's Property)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Myron%2BButler/Myron%2520Butler_1_1_1581557792.jpg?itok=JDW1e2aQ
2233	Romances	Luis Miguel	Luis Miguel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
2234	Fabulosos Calavera	Los Fabulosos Cadillacs	Los Fabulosos Cadillacs	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BFabulosos%2BCadillacs/Los%2520Fabulosos%2520Cadillacs_1_1_1575364423.jpg?itok=qcmBPXxj
2235	Buena Vista Social Club	Ry Cooder	Ry Cooder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ry%2BCooder/Ry%2520Cooder_1_1_1597165966.jpg?itok=lh9JRMfR
2236	En Tus Manos	La Mafia	La Mafia	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BMafia/La%2520Mafia_1_1_1581554599.jpg?itok=Ndi7Fw80
2237	Señor Blues	Taj Mahal	Taj Mahal	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Taj%2BMahal/Taj%2520Mahal_1_1_1575370670.jpg?itok=wVj0upfm
2238	L'amour Ou La Folie	BeauSoleil	BeauSoleil	
2239	Fallen Is Babylon	Ziggy Marley & The Melody Makers	Ziggy Marley & The Melody Makers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
2240	Nascimento	Milton Nascimento	Milton Nascimento	
2241	Living On Polka Time	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2242	All Aboard!	John Denver	John Denver	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BDenver/John%2520Denver_1_1_1581551864.jpg?itok=50bGfrjO
2243	Winnie-The-Pooh	Charles Kuralt	Charles Kuralt	
2244	Charles Kuralt's Spring	Charles Kuralt	Charles Kuralt	
2245	Roll With The New	Chris Rock	Chris Rock, artist.	
2246	Chicago - The Musical	Jay David Saks, producer (Various Artists Featuring Ann Reinking, Bebe Neuwirth, James Naughton & Joel Grey)	Jay David Saks, producer (Various Artists Featuring Ann Reinking, Bebe Neuwirth, James Naughton & Joel Grey)	
2247	Aung San Suu Kyi	Wayne Shorter, composer (Herbie Hancock & Wayne Shorter)	Wayne Shorter, composer (Herbie Hancock & Wayne Shorter)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
2248	The English Patient	Gabriel Yared, composer (Gabriel Yared)	Gabriel Yared, composer (Gabriel Yared)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gabriel%2BYared/Gabriel%2520Yared_1_1_1581618064.jpg?itok=B_UfTYes
2249	I Believe I Can Fly (From Space Jam)	R. Kelly, songwriter (R. Kelly)	R. Kelly, songwriter (R. Kelly)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/R.%2BKelly/R.%2520Kelly_1_1_1595587191.jpg?itok=l9T_9urX
2250	Straight, No Chaser	Bill Holman, arranger (The Bill Holman Band)	Bill Holman, arranger (The Bill Holman Band)	
2251	Cotton Tail	Slide Hampton, arranger (Dee Dee Bridgewater)	Slide Hampton, arranger (Dee Dee Bridgewater)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Slide%2BHampton/Slide%2520Hampton_1_1_1581563685.jpg?itok=3Bndmf7X
2252	Titanic - Music As Heard On The Fateful Voyage	Hugh Brown, Al Quattrocchi & Jeff Smith, art directors (Various Artists)	Hugh Brown, Al Quattrocchi & Jeff Smith, art directors (Various Artists)	
2253	Beg Scream And Shout! - The Big Ol' Box Of '60s Soul	Hugh Brown, David Gorman & Rachel Gutek, art directors (Various Artists)	Hugh Brown, David Gorman & Rachel Gutek, art directors (Various Artists)	
4049	The Art Of The Prima Donna	(Royal Opera House Orchestra - Covent Garden)	(Royal Opera House Orchestra - Covent Garden)	
2254	Anthology Of American Folk Music -  1997 Expanded Edition	John Fahey, Luis Kemnitzer, Kip Lornell, Jon Pankake, Chuck Pirtle, Jeff Place, Neil V. Rosenberg, Luc Sante, Peter Stampfel & Eric von Schmidt, album notes writers (Various Artists)	John Fahey, Luis Kemnitzer, Kip Lornell, Jon Pankake, Chuck Pirtle, Jeff Place, Neil V. Rosenberg, Luc Sante, Peter Stampfel & Eric von Schmidt, album notes writers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BFahey/John%2520Fahey_1_1_1581560639.jpg?itok=d5_vOn3Z
2255	Anthology Of American Folk Music - 1997 Expanded Edition	Amy Horowitz, Jeff Place & Pete Reiniger, compilation producers; David Glasser & Charlie Pilzer, mastering engineers (Various Artists)	Amy Horowitz, Jeff Place & Pete Reiniger, compilation producers; David Glasser & Charlie Pilzer, mastering engineers (Various Artists)	
2256	Babyface	Babyface		
2257	Copland: The Music Of America (Fanfare For The Common Man; Rodeo)	Michael Bishop & Jack Renner, engineers (Erich Kunzel, conductor)	Michael Bishop & Jack Renner, engineers (Erich Kunzel, conductor)	
2258	Premieres - Cello Concertos (Works Of Danielpour, Kirchner, Rouse)	Yo-Yo Ma & David Zinman, artists; Steven Epstein, producer	Yo-Yo Ma & David Zinman, artists; Steven Epstein, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2259	Berlioz: Symphonie Fantastique; Tristia	Pierre Boulez, conductor (Cleveland Orchestra)	Pierre Boulez, conductor (Cleveland Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2260	Wagner: Die Meistersinger Von Nurnberg	Ben Heppner, Herbert Lippert, Karita Mattila, Alan Opie, Rene Pape, Jose Van Dam & Iris Vermillion; Georg Solti, conductor; Michael Woolcock, producer (Chicago Symphony Orchestra)	Ben Heppner, Herbert Lippert, Karita Mattila, Alan Opie, Rene Pape, Jose Van Dam & Iris Vermillion; Georg Solti, conductor; Michael Woolcock, producer (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbert%2BLippert/Herbert%2520Lippert_1_1_1581558899.jpg?itok=s_vIyzEk
2261	Adams: Harmonium/Rachmaninoff: The Bells	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	
2262	Bach: Suites For Solo Cello Nos. 1-6	Janos Starker, artist	Janos Starker, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janos%2BStarker/J%25C3%25A1nos%2520Starker_1_1_1581560462.jpg?itok=K_VbP1fE
2263	Beethoven: The String Quartets	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
2264	Hindemith: Kammermusik No. 1 With Finale 1921, Op. 24 No. 1	Hindemith: Kammermusik No. 1 With Finale 1921, Op. 24 No. 1		
2265	An Italian Songbook - Works Of Bellini, Donizetti, Rossini	An Italian Songbook - Works Of Bellini, Donizetti, Rossini		
2266	Adams: El Dorado	John Adams, composer	John Adams, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/john_adams_082520.png?itok=QtpmoLJW
2267	Got 'Till It's Gone	Janet Jackson	Mark Romanek, video director; Aris McGarry, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janet%2BJackson/Janet%2520Jackson_1_1_1584106687.jpg?itok=SsHUoXgI
2268	Jagged Little Pill - Live	Alanis Morissette	Alanis Morissette & Steve Purcell, video directors; Glen Ballard, David May, Alanis Morissette & Steve Purcell, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alanis%2BMorissette/Alanis%2520Morissette_1_1_1578385387.jpg?itok=9HWGTLzj
2269	Change The World	Eric Clapton	Babyface, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2270	Falling Into You	Celine Dion	Roy Bittan, Jeff Bova, David Foster, Humberto Gatica, Jean-Jacques Goldman, Rick Hahn, Dan Hill, John Jones, Aldo Nova, Rick Nowels, Steven Rinkoff, Billy Steinberg, Jim Steinman & Ric Wake, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celine%2BDion/C%25C3%25A9line%2520Dion_1_1_1579163253.jpg?itok=7lpsetr2
2271	LeAnn Rimes	LeAnn Rimes		
2272	Un-Break My Heart	Toni Braxton	Toni Braxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
2273	Free As A Bird	The Beatles	The Beatles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBeatles/The%2520Beatles_1_1_1591112972.jpg?itok=KFRZmETY
2274	When I Fall In Love	Natalie Cole (& Nat "King" Cole)	Natalie Cole (& Nat "King" Cole)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
2275	The Sinister Minister	Béla Fleck & The Flecktones	Béla Fleck & The Flecktones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/B%25C3%25A9la%2BFleck/B%25C3%25A9la%2520Fleck_1_1_1594758612.jpg?itok=REaYoNMC
2276	Here's To The Ladies	Tony Bennett	Tony Bennett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
2277	If It Makes You Happy	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
2278	Where It's At	Beck	Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beck/Beck_1_1_1578385706.jpg?itok=mG8JgiRs
2279	So Much To Say	Dave Matthews Band	Dave Matthews Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BMatthews%2BBand/Dave%2520Matthews%2520Band_1_1_1581551856.jpg?itok=jdbO09DF
2280	Bullet With Butterfly Wings	The Smashing Pumpkins	The Smashing Pumpkins	
2281	Tire Me	Rage Against The Machine	Rage Against The Machine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rage%2BAgainst%2BThe%2BMachine/Rage%2520Against%2520The%2520Machine_1_1_1581551891.jpg?itok=LZnLlyBq
2282	SRV Shuffle	Jimmie Vaughan, Eric Clapton, Bonnie Raitt, Robert Cray, B.B. King, Buddy Guy, Dr. John & Art Neville	Jimmie Vaughan, Eric Clapton, Bonnie Raitt, Robert Cray, B.B. King, Buddy Guy, Dr. John & Art Neville	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmie%2BVaughan/Jimmie%2520Vaughan_1_1_1582716890.jpg?itok=f6u7w4e2
2283	Give Me One Reason	Tracy Chapman, songwriter (Tracy Chapman)	Tracy Chapman, songwriter (Tracy Chapman)	
2284	Sheryl Crow	Sheryl Crow	Sheryl Crow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
2285	Odelay	Beck	Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Beck/Beck_1_1_1578385706.jpg?itok=mG8JgiRs
2286	You're Makin' Me High	Toni Braxton	Toni Braxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
2287	Your Secret Love	Luther Vandross	Luther Vandross	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luther%2BVandross/Luther%2520Vandross_1_1_1575369222.jpg?itok=GBSXYN7T
2288	Killing Me Softly With His Song	Fugees	Fugees	
2289	Exhale (Shoop Shoop)	Babyface, songwriter (Whitney Houston)	Babyface, songwriter (Whitney Houston)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Babyface/Babyface_1_1_1594897645.jpg?itok=nCfyMka6
2290	Words	The Tony Rich Project	The Tony Rich Project	
2291	Hey Lover	LL Cool J	LL Cool J	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/LL%2BCool%2BJ/LL%2520Cool%2520J_1_1_1578385441.jpg?itok=RJe8316q
2292	Tha Crossroads	Bone Thugs-N-Harmony	Bone Thugs-N-Harmony	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bone%2BThugs-N-Harmony/Bone%2520Thugs-N-Harmony_1_1_1597755872.jpg?itok=oNojJu-k
2293	The Score	Fugees	Fugees	
2294	Blue	LeAnn Rimes	LeAnn Rimes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/LeAnn%2BRimes/LeAnn%2520Rimes_1_1_1576270885.jpg?itok=xCBb3BuZ
2295	Worlds Apart	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2296	My Maria	Brooks & Dunn	Brooks & Dunn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brooks%2B%2526%2BDunn/Brooks%2520%2526%2520Dunn_1_1_1596249775.jpg?itok=mibOXkAc
2297	High Lonesome Sound	Vince Gill Featuring Alison Krauss & Union Station	Vince Gill Featuring Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2298	Jam Man	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
2299	The Road To Ensenada	Lyle Lovett	Lyle Lovett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lyle%2BLovett/Lyle%2520Lovett_1_1_1575365341.jpg?itok=TddlzsgD
2300	True Life Blues - The Songs Of Bill Monroe	(Various Artists)	(Various Artists)	
2301	The Memory Of Trees	Enya	Enya	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Enya/Enya_1_1_1581558707.jpg?itok=E89V1itS
2302	High Life	Wayne Shorter	Wayne Shorter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wayne%2BShorter/Wayne%2520Shorter_1_1_1581555649.jpg?itok=rQCPM1r0
2303	New Moon Daughter	Cassandra Wilson	Cassandra Wilson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cassandra%2BWilson/Cassandra%2520Wilson_1_1_1581619641.jpg?itok=Q2Q4RQd0
2304	Cabin Fever	Michael Brecker, soloist	Michael Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
2305	Tales From The Hudson	Michael Brecker	Michael Brecker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
2306	Live At Manchester Craftsmen's Guild	Grover Mitchell	Grover Mitchell	
2307	Portraits Of Cuba	Paquito D'Rivera	Paquito D'Rivera	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paquito%2BD%2527Rivera/Paquito%2520D%2527Rivera_1_1_1581554599.jpg?itok=QYgXlw4P
2308	Jesus Freak	dc Talk	dc Talk	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/dc%2BTalk/dc%2520Talk_1_1_1598306052.jpg?itok=rEqPYSAR
2309	Tribute - The Songs Of Andrae Crouch	(Various Artists)	(Various Artists)	
2310	I Love To Tell The Story - 25 Timeless Hymns	Andy Griffith	Andy Griffith	
2311	Face To Face	Cissy Houston	Cissy Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cissy%2BHouston/Cissy%2520Houston_1_1_1597165908.jpg?itok=VrySV2us
2312	Whatcha Lookin' 4	Kirk Franklin & The Family	Kirk Franklin & The Family	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kirk%2BFranklin/Kirk%2520Franklin_1_1_1594733609.jpg?itok=ZJTAta8d
2313	Just A Word	Shirley Caesar, choir director (Shirley Caesar's Outreach Convention Choir)	Shirley Caesar, choir director (Shirley Caesar's Outreach Convention Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
2314	Enrique Iglesias	Enrique Iglesias	Enrique Iglesias	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Enrique%2BIglesias/Enrique%2520Iglesias_1_1_1581551897.jpg?itok=dttjNpsB
2315	La Rosa De Los Vientos	Rubén Blades	Rubén Blades	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
2316	Un Millon De Rosas	La Mafia	La Mafia	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/La%2BMafia/La%2520Mafia_1_1_1581554599.jpg?itok=Ndi7Fw80
2317	Deep In The Blues	James Cotton	James Cotton	
2318	Just Like You	Keb' Mo'	Keb' Mo'	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keb%2527Mo%2527/Keb%2520Mo_1_1_1581609755.jpg?itok=E1mi2WjB
2319	Pete	Pete Seeger	Pete Seeger	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pete%2BSeeger/Pete%2520Seeger_1_1_1592492662.jpg?itok=a5mlzrMI
2320	The Ghost Of Tom Joad	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
2321	Hall Of Fame - A Tribute To Bob Marley's 50th Anniversary	Bunny Wailer	Bunny Wailer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bunny%2BWailer/Bunny%2520Wailer_1_1_1597163477.jpg?itok=RLpGLnpr
2322	Santiago	The Chieftains	The Chieftains	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2323	Polka! All Night Long	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2324	Dedicated To The One I Love	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
2325	Stellaluna	David Holt	David Holt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BHolt/David%2520Holt_1_1_1581556780.jpg?itok=JZ0qTkfT
2326	It Takes A Village	Hillary Rodham Clinton	Hillary Rodham Clinton	
2327	Rush Limbaugh Is A Big Fat Idiot	Al Franken	Al Franken, artist.	
2328	Riverdance	Bill Whelan, composer; Bill Whelan, lyricist; Bill Whelan, producer (Various Artists)	Bill Whelan, composer; Bill Whelan, lyricist; Bill Whelan, producer (Various Artists)	
2329	Manhattan (Island Of Lights And Love)	Herbie Hancock & Jean Hancock, composers (Herbie Hancock)	Herbie Hancock & Jean Hancock, composers (Herbie Hancock)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
2330	Independence Day	David Arnold, composer (David Arnold)	David Arnold, composer (David Arnold)	
2331	Because You Loved Me (Theme From Up Close & Personal)	Diane Warren, songwriter (Celine Dion)	Diane Warren, songwriter (Celine Dion)	
2332	An American Symphony (Mr. Holland's Opus)	Michael Kamen, arranger (Michael Kamen)	Michael Kamen, arranger (Michael Kamen)	
2333	Ultra-Lounge (Leopard Skin Sampler)	Andy Engel & Tommy Steele, art directors (Various Artists)	Andy Engel & Tommy Steele, art directors (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tommy%2BSteele/Tommy%2520Steele_1_1_1597165349.jpg?itok=U7CSMlZs
2334	The Complete Columbia Studio Recordings	Chika Azuma & Arnold Levine, art directors (Miles Davis & Gil Evans)	Chika Azuma & Arnold Levine, art directors (Miles Davis & Gil Evans)	
2335	Q's Jook Joint	Francis Buckley, Al Schmitt, Bruce Swedien & Tommy Vicari, engineers (Quincy Jones)	Francis Buckley, Al Schmitt, Bruce Swedien & Tommy Vicari, engineers (Quincy Jones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
2336	Copland: Dance Symphony; Short Symphony; Organ Symphony	William Hoekstra & Lawrence Rock, engineers (Leonard Slatkin, conductor)	William Hoekstra & Lawrence Rock, engineers (Leonard Slatkin, conductor)	
2337	Joanna Nickrenz	Joanna Nickrenz		
2338	Corigliano: Of Rage And Remembrance	Leonard Slatkin, artist; Joanna Nickrenz, producer	Leonard Slatkin, artist; Joanna Nickrenz, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BSlatkin/Leonard%2520Slatkin_1_1_1581623003.jpg?itok=g58yYZbQ
2339	Prokofiev: Romeo And Juliet (Scenes From The Ballet)	Michael Tilson Thomas, conductor (San Francisco Symphony Orchestra)	Michael Tilson Thomas, conductor (San Francisco Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BTilson%2BThomas/Michael%2520Tilson%2520Thomas_1_1_1575368818.jpg?itok=he1ja-mb
2340	Britten: Peter Grimes	Philip Langridge, Alan Opie & Janice Watson; Richard Hickox, conductor; Brian Couzens, producer (London Symphony Chorus; City Of London Sinfonia)	Philip Langridge, Alan Opie & Janice Watson; Richard Hickox, conductor; Brian Couzens, producer (London Symphony Chorus; City Of London Sinfonia)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Philip%2BLangridge/Philip%2520Langridge_1_1_1597165258.jpg?itok=QM5pDvY4
2341	Walton: Belshazzar's Feast	Neville Creed & David Hill, chorus masters; Andrew Litton, conductor (Bournemouth Symphony Chorus; Bournemouth Symphony Orchestra)	Neville Creed & David Hill, chorus masters; Andrew Litton, conductor (Bournemouth Symphony Chorus; Bournemouth Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BLitton/Andrew%2520Litton_1_1_1597165796.jpg?itok=Wn1VRc3_
2342	Bartók: The Three Piano Concertos	Yefim Bronfman, artist (Los Angeles Philharmonic)	Yefim Bronfman, artist (Los Angeles Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yefim%2BBronfman/Yefim%2520Bronfman_1_1_1581555728.jpg?itok=WM2rMii-
2343	The Romantic Master - Works Of Saint-Saens, Handel	Earl Wild, artist	Earl Wild, artist	
2344	Corigliano: String Quartet	Cleveland Quartet (James Dunham, Paul Katz, William Preucil & Peter Salaff), artists	Cleveland Quartet (James Dunham, Paul Katz, William Preucil & Peter Salaff), artists	
2345	Boulez: ...Explosante-Fixe...	Boulez: ...Explosante-Fixe...		
2346	Opera Arias - Works Of Mozart, Wagner, Borodin	(Metropolitan Opera Orchestra)	(Metropolitan Opera Orchestra)	
2347	The Beatles Anthology	The Beatles	Bob Smeaton & Geoff Wonfor, video directors; Neil Aspinall & Chips Chipperfield, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBeatles/The%2520Beatles_1_1_1591112972.jpg?itok=KFRZmETY
2348	Kiss From A Rose	Seal	Trevor Horn, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Seal/Seal_1_1_1575369703.jpg?itok=Vj2q-xvH
2349	Jagged Little Pill	Alanis Morissette	Glen Ballard, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alanis%2BMorissette/Alanis%2520Morissette_1_1_1578385387.jpg?itok=9HWGTLzj
2350	Hootie & The Blowfish	Hootie & The Blowfish		
2351	No More "I Love You's"	Annie Lennox	Annie Lennox	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Annie%2BLennox/Annie%2520Lennox_1_1_1578385103.jpg?itok=LtI_1KuJ
2352	Let Her Cry	Hootie & The Blowfish	Hootie & The Blowfish	
2353	Have I Told You Lately That I Love You?	The Chieftains & Van Morrison	The Chieftains & Van Morrison	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2354	Mariachi Suite	Los Lobos	Los Lobos	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BLobos/Los%2520Lobos_1_1_1575360208.jpg?itok=FEBbtgyX
2355	Turbulent Indigo	Joni Mitchell	Joni Mitchell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
2356	You Oughta Know	Alanis Morissette	Alanis Morissette	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alanis%2BMorissette/Alanis%2520Morissette_1_1_1578385387.jpg?itok=9HWGTLzj
2357	You Don't Know How It Feels	Tom Petty	Tom Petty	https://www.grammy.com/sites/com/files/styles/artist_circle/public/tom_petty_spotlight_634661788.png?itok=gRB8hMEG
2358	Run-Around	Blues Traveler	Blues Traveler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Blues%2BTraveler/Blues%2520Traveler_1_1_1575368733.jpg?itok=RfgzIOYA
4050	Almeida: Discantus	Laurindo Almeida, composer	Laurindo Almeida, composer	
2359	Spin The Black Circle	Pearl Jam	Pearl Jam	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pearl%2BJam/Pearl%2520Jam_1_1_1596803741.jpg?itok=SVb7YhI1
2360	Happiness In Slavery	Nine Inch Nails	Nine Inch Nails	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nine%2BInch%2BNails/Nine%2520Inch%2520Nails_1_1_1575363078.jpg?itok=IfrE8bLb
2361	Jessica	The Allman Brothers Band	The Allman Brothers Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Allman%2BBrothers%2BBand/Allman%2520Brothers%2520Band_1_1_1575369103.jpg?itok=GHQWHSes
2362	MTV Unplugged In New York	Nirvana	Nirvana	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nirvana/Nirvana_1_1_1581552255.jpg?itok=nz89Q8Im
2363	I Apologize	Anita Baker	Anita Baker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anita%2BBaker/Anita%2520Baker_1_1_1597743890.jpg?itok=FUWd9QJc
2364	For Your Love	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
2365	Creep	TLC	TLC	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TLC/TLC_1_1_1575360587.jpg?itok=e6UPRyZF
2366	Crazysexycool	TLC	TLC	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/TLC/TLC_1_1_1575360587.jpg?itok=e6UPRyZF
2367	Gangsta's Paradise	Coolio	Coolio	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Coolio/Coolio_1_1_1594996252.jpg?itok=SyTpDzK4
2368	I'll Be There For You/You're All I Need To Get By	Method Man Featuring Mary J. Blige	Method Man Featuring Mary J. Blige	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Method%2BMan/Method%2520Man_1_1_1598187671.jpg?itok=7VdbEPKW
2369	Poverty's Paradise	Naughty By Nature	Naughty By Nature	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Naughty%2BBy%2BNature/Naughty%2520By%2520Nature_1_1_1581551886.jpg?itok=J806RYqM
2370	Baby, Now That I've Found You	Alison Krauss	Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
2371	Go Rest High On That Mountain	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2372	Here Comes The Rain	The Mavericks	The Mavericks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/mavericks_spotlight.png?itok=-MH695h2
2373	Somewhere In The Vicinity Of The Heart	Shenandoah & Alison Krauss	Shenandoah & Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shenandoah/Shenandoah_1_1_1584623804.jpg?itok=lAHOcFAz
2374	Hightower	Asleep At The Wheel Featuring Béla Fleck & Johnny Gimble	Asleep At The Wheel Featuring Béla Fleck & Johnny Gimble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2375	The Woman In Me	Shania Twain	Shania Twain	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shania%2BTwain/Shania%2520Twain_1_1_1575368716.jpg?itok=9HFmFNwn
2376	Forest	George Winston	George Winston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BWinston/George%2520Winston_1_1_1575363133.jpg?itok=7FpITmMN
2377	We Live Here	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2378	An Evening With Lena Horne	Lena Horne	Lena Horne	
2379	Infinity	McCoy Tyner Trio & Michael Brecker	McCoy Tyner Trio & Michael Brecker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
2380	All Blues	Tom Scott (GRP All-Star Big Band)	Tom Scott (GRP All-Star Big Band)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BScott/Tom%2520Scott_1_1_1599074769.jpg?itok=pseUMTPS
2381	Antonio Brasileiro	Jobim	Jobim	
2382	Lesson Of Love	Ashley Cleveland	Ashley Cleveland	
2383	I'll Lead You Home	Michael W. Smith	Michael W. Smith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BW.%2BSmith/Michael%2520W.%2520Smith_1_1_1581371564.jpg?itok=4xsPS22I
2384	Amazing Grace - A Country Salute To Gospel	(Various Artists)	(Various Artists)	
2385	Shirley Caesar Live - He Will Come	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
2386	Alone In His Presence	CeCe Winans	CeCe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
2387	Praise Him - Live!	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	Carol Cymbala, choir director (The Brooklyn Tabernacle Choir)	
2388	Amor	Jon Secada	Jon Secada	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jon%2BSecada/Jon%2520Secada_1_1_1575359387.jpg?itok=KdAcDJk0
2389	Abriendo Puertas	Gloria Estefan	Gloria Estefan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BEstefan/Gloria%2520Estefan_1_1_1597398041.jpg?itok=ksUWaVHg
2390	Flaco Jimenez	Flaco Jimenez	Flaco Jimenez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flaco%2BJimenez/Flaco%2520Jimenez_1_1_1581554695.jpg?itok=bJ3lyzIw
2391	Chill Out	John Lee Hooker	John Lee Hooker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLee%2BHooker/John%2520Lee%2520Hooker_1_1_1598191374.jpg?itok=aMqX_xzj
2392	Slippin' In	Buddy Guy	Buddy Guy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
2393	South Coast	Ramblin' Jack Elliott	Ramblin' Jack Elliott	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramblin%2527%2BJack%2BElliott/Ramblin%2527%2520Jack%2520Elliott_1_1_1581555054.jpg?itok=cdYxsyiu
2394	Wrecking Ball	Emmylou Harris	Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
2395	Boombastic	Shaggy	Shaggy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shaggy/Shaggy_1_1_1596790892.jpg?itok=ADx7j7--
2396	Boheme	Deep Forest	Deep Forest	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deep%2BForest/Deep%2520Forest_1_1_1588264807.jpg?itok=pphsS4xU
2397	I Love To Polka	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2398	Sleepy Time Lullabys	Barbara Bailey Hutchison	Barbara Bailey Hutchison	
2399	Prokofiev: Peter And The Wolf	Patrick Stewart	Patrick Stewart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patrick%2BStewart/Patrick%2520Stewart_1_1_1581620223.jpg?itok=NPnUxo-Y
2400	Phenomenal Woman	Maya Angelou	Maya Angelou	
2401	Crank Calls	Jonathan Winters	Jonathan Winters, artist.	
2402	Smokey Joe's Cafe - The Songs Of Leiber & Stoller	Jerry Leiber, Arif Mardin & Mike Stoller, producers (Original Broadway Cast)	Jerry Leiber, Arif Mardin & Mike Stoller, producers (Original Broadway Cast)	
2403	A View From The Side	Bill Holman, composer (The Bill Holman Band)	Bill Holman, composer (The Bill Holman Band)	
2404	Crimson Tide	Hans Zimmer, composer (Hans Zimmer)	Hans Zimmer, composer (Hans Zimmer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hans%2BZimmer/Hans%2520Zimmer_1_1_1597141743.jpg?itok=ixrZrEuX
2405	Colors Of The Wind (From Pocahontas)	Alan Menken & Stephen Schwartz, songwriters (Vanessa Williams & Judy Kuhn)	Alan Menken & Stephen Schwartz, songwriters (Vanessa Williams & Judy Kuhn)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2406	Lament	Robert Farnon, arranger (J.J. Johnson & The Robert Farnon Orchestra)	Robert Farnon, arranger (J.J. Johnson & The Robert Farnon Orchestra)	
2407	I Get A Kick Out Of You	Rob McConnell, arranger (Mel Tormé with Rob McConnell & The Boss Brass)	Rob McConnell, arranger (Mel Tormé with Rob McConnell & The Boss Brass)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BMcConnell/Rob%2520McConnell_1_1_1597165181.jpg?itok=gOVB37cq
2408	Civilization Phaze III	Frank Zappa & Gail Zappa, art directors (Frank Zappa)	Frank Zappa & Gail Zappa, art directors (Frank Zappa)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BZappa/Frank%2520Zappa_1_1_1575363198.jpg?itok=PC2M2u_N
2409	The Complete Stax/Volt Soul Singles, Vol. 3: 1972-1975	Rob Bowman, album notes writer (Various Artists)	Rob Bowman, album notes writer (Various Artists)	
2410	The Heifetz Collection	John Pfeiffer, compilation producer; Ray Hall, Thomas MacCluskey, James P. Nichols, Anthony Salvatore, Jon M. Samuels & David Satz, mastering engineers (Jascha Heifetz & Various Artists)	John Pfeiffer, compilation producer; Ray Hall, Thomas MacCluskey, James P. Nichols, Anthony Salvatore, Jon M. Samuels & David Satz, mastering engineers (Jascha Heifetz & Various Artists)	
2411	Wildflowers	David Bianco, Richard Dodd, Stephen McLaughlin & Jim Scott, engineers (Tom Petty)	David Bianco, Richard Dodd, Stephen McLaughlin & Jim Scott, engineers (Tom Petty)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBianco/David%2520Bianco_1_1_1581656779.jpg?itok=Tt7s8Vpu
2412	Bartók: Concerto For Orchestra; "Kossuth" - Symphonic Poem	Michael Mailes & Jonathan Stokes, engineers (Herbert Blomstedt, conductor)	Michael Mailes & Jonathan Stokes, engineers (Herbert Blomstedt, conductor)	
2413	Debussy: La Mer; Nocturnes; Jeux	Pierre Boulez, artist; Karl-August Naegler, producer	Pierre Boulez, artist; Karl-August Naegler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2414	Debussy: La Mer	Pierre Boulez, conductor (Cleveland Orchestra)	Pierre Boulez, conductor (Cleveland Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2415	The American Album - Works Of Bernstein, Barber, Foss	Itzhak Perlman, artist (Boston Symphony Orchestra)	Itzhak Perlman, artist (Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
2416	Schubert: Piano Sonatas (B Flat Major And A Major)	Radu Lupu, artist	Radu Lupu, artist	
2417	Brahms/Beethoven/Mozart: Clarinet Trios	Emanuel Ax, Yo-Yo Ma & Richard Stoltzman, artists	Emanuel Ax, Yo-Yo Ma & Richard Stoltzman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2418	The Echoing Air - The Music Of Henry Purcell	(Academy Of Ancient Music)	(Academy Of Ancient Music)	
2419	Messiaen: Concert A Quatre	Olivier Messiaen, composer	Olivier Messiaen, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Olivier%2BMessiaen/Olivier%2520Messiaen_1_1_1581628731.jpg?itok=tFnslE61
2420	Scream	Michael Jackson & Janet Jackson	Mark Romanek, video director; Cean Chaffin, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
2421	Secret World Live	Peter Gabriel	Francois Girard, video director; Robert Warr, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
2422	All I Wanna Do	Sheryl Crow	Bill Bottrell, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sheryl%2BCrow/Sheryl%2520Crow_1_1_1597145423.jpg?itok=tvxHkBTZ
2423	MTV Unplugged	Tony Bennett	David Kahne, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
2424	Streets Of Philadelphia	Bruce Springsteen, songwriter (Bruce Springsteen)	Bruce Springsteen, songwriter (Bruce Springsteen)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
2425	Can You Feel The Love Tonight	Elton John	Elton John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elton%2BJohn/Elton%2520John_1_1_1596808830.jpg?itok=OqYWw2a1
2426	I Swear	All-4-One	All-4-One	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/All-4-One/All-4-One_1_1_1575368751.jpg?itok=uoLinLhB
2427	Funny How Time Slips Away	Al Green & Lyle Lovett	Al Green & Lyle Lovett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
2428	Cruisin'	Booker T & The MG's	Booker T & The MG's	
2429	Longing In Their Hearts	Bonnie Raitt	Bonnie Raitt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2607	Mas Canciones	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
2430	Come To My Window	Melissa Etheridge	Melissa Etheridge	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Melissa%2BEtheridge/Melissa%2520Etheridge_1_1_1575364931.jpg?itok=aWtgscmM
2431	Black Hole Sun	Soundgarden	Soundgarden	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soundgarden/Soundgarden_1_1_1575360601.jpg?itok=HRCYDzWz
2432	Spoonman	Soundgarden	Soundgarden	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soundgarden/Soundgarden_1_1_1575360601.jpg?itok=HRCYDzWz
2433	Marooned	Pink Floyd	Pink Floyd	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pink%2BFloyd/Pink%2520Floyd_1_1_1584095801.jpg?itok=vwBoI9gs
2434	Voodoo Lounge	The Rolling Stones	The Rolling Stones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/rolling_stones_spotlight_623462898.png?itok=yydRz1v1
2435	Dookie	Green Day	Green Day	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Green%2BDay/Green%2520Day_1_1_1578385279.jpg?itok=wr16YloS
2436	Breathe Again	Toni Braxton	Toni Braxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
2437	When Can I See You	Babyface	Babyface	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Babyface/Babyface_1_1_1594897645.jpg?itok=nCfyMka6
2438	I'll Make Love To You	Boyz II Men	Boyz II Men	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boyz%2BII%2BMen/Boyz%2520II%2520Men_1_1_1597239481.jpg?itok=1edTnjBB
2439	II	Boyz II Men	Boyz II Men	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boyz%2BII%2BMen/Boyz%2520II%2520Men_1_1_1597239481.jpg?itok=1edTnjBB
2440	U.N.I.T.Y.	Queen Latifah	Queen Latifah	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Queen%2BLatifah/Queen%2520Latifah_1_1_1581553585.jpg?itok=f5fbgq-2
2441	None Of Your Business	Salt-N-Pepa	Salt-N-Pepa	
2442	Shut Up And Kiss Me	Mary Chapin Carpenter	Mary Chapin Carpenter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BChapin%2BCarpenter/Mary%2520Chapin%2520Carpenter_1_1_1584457128.jpg?itok=UPM94xkF
2443	When Love Finds You	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2444	Blues For Dixie	Asleep At The Wheel & Lyle Lovett	Asleep At The Wheel & Lyle Lovett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2445	I Fall To Pieces	Aaron Neville & Trisha Yearwood	Aaron Neville & Trisha Yearwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aaron%2BNeville/Aaron%2520Neville_1_1_1575363829.jpg?itok=psGP8cdk
2446	Young Thing	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
2447	Stones In The Road	Mary Chapin Carpenter	Mary Chapin Carpenter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BChapin%2BCarpenter/Mary%2520Chapin%2520Carpenter_1_1_1584457128.jpg?itok=UPM94xkF
2448	The Great Dobro Sessions	(Various Artists)	(Various Artists)	
2449	Prayer For The Wild Things	Paul Winter	Paul Winter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BWinter/Paul%2520Winter_1_1_1581556567.jpg?itok=dsk7tUfx
2450	Out Of The Loop	Brecker Brothers	Brecker Brothers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brecker%2BBrothers/Brecker%2520Brothers_1_1_1581559714.jpg?itok=p88LNfLx
2451	Mystery Lady - Songs Of Billie Holiday	Etta James	Etta James	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Etta%2BJames/Etta%2520James_1_1_1581553580.jpg?itok=Be8EV9Zw
2452	Prelude To A Kiss	Benny Carter, soloist	Benny Carter, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Benny%2BCarter/Benny%2520Carter_1_1_1581561544.jpg?itok=FzLx7Qdq
2453	A Tribute To Miles	Ron Carter, Herbie Hancock, Wallace Roney, Wayne Shorter & Tony Williams	Ron Carter, Herbie Hancock, Wallace Roney, Wayne Shorter & Tony Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ron%2BCarter/Ron%2520Carter_1_1_1581561992.jpg?itok=HiXjrRXC
2454	Journey	McCoy Tyner Big Band	McCoy Tyner Big Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/McCoy%2BTyner/McCoy%2520Tyner_1_1_1581555954.jpg?itok=oB3CFrUA
2455	Danzon	Arturo Sandoval	Arturo Sandoval	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Arturo%2BSandoval/Arturo%2520Sandoval_1_1_1581560975.jpg?itok=5M3lBvaY
2456	Wake-Up Call	Petra	Petra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petra/Petra_1_1_1575368028.jpg?itok=xVe1C_XR
2457	Mercy	Andrae Crouch	Andrae Crouch	
2458	I Know Who Holds Tomorrow	Alison Krauss & The Cox Family	Alison Krauss & The Cox Family	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
2459	Songs Of The Church - Live In Memphis	Albertina Walker	Albertina Walker	
2460	Join The Band	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2461	Live In Atlanta At Morehouse College	Hezekiah Walker, choir director (The Love Fellowship Crusade Choir)	Hezekiah Walker, choir director (The Love Fellowship Crusade Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hezekiah%2BWalker/Hezekiah%2520Walker_1_1_1597166376.jpg?itok=mEEWNhF0
2462	Through God's Eyes	Milton Brunson, choir director (Thompson Community Singers)	Milton Brunson, choir director (Thompson Community Singers)	
2463	Segundo Romance	Luis Miguel	Luis Miguel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
2464	Master Sessions Volume 1	Cachao	Cachao	
2465	Recuerdo A Javier Solis	Vikki Carr	Vikki Carr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vikki%2BCarr/Vikki%2520Carr_1_1_1581615224.jpg?itok=xZnGtxrE
2466	From The Cradle	Eric Clapton	Eric Clapton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2467	Father Father	Pops Staples	Pops Staples	
3147	Prokofiev: Symphony No. 5 In B Flat, Op. 100	Paul Goodman, engineer (Leonard Slatkin, conductor)	Paul Goodman, engineer (Leonard Slatkin, conductor)	
2468	World Gone Wrong	Bob Dylan	Bob Dylan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
2469	American Recordings	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
2470	Crucial! Roots Classics	Bunny Wailer	Bunny Wailer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bunny%2BWailer/Bunny%2520Wailer_1_1_1597163477.jpg?itok=RLpGLnpr
2471	Talking Timbuktu	Ali Farka Toure & Ry Cooder	Ali Farka Toure & Ry Cooder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ali%2BFarka%2BToure/Ali%2520Farka%2520Tour%25C3%25A9_1_1_1581553632.jpg?itok=3Wk8H5QC
2472	Music And Friends	Walter Ostanek Band	Walter Ostanek Band	
2473	The Lion King - Original Motion Picture Soundtrack	(Various Artists)	(Various Artists)	
2474	The Lion King Read-Along	Robert Guillaume	Robert Guillaume	
2475	Get In The Van - On The Road With Black Flag	Henry Rollins	Henry Rollins	
2476	Live From Hell	Sam Kinison	Sam Kinison, artist.	
2477	Passion	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Phil Ramone, producer (Original Broadway Cast)	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Phil Ramone, producer (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/phil_ramone_spotlight_108293983.png?itok=gWXqxho2
2478	African Skies	Michael Brecker, composer (Michael Brecker)	Michael Brecker, composer (Michael Brecker)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
2479	Schindler's List	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
2480	Streets Of Philadelphia (From Philadelphia)	Bruce Springsteen, songwriter (Bruce Springsteen)	Bruce Springsteen, songwriter (Bruce Springsteen)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
2481	Three Cowboy Songs	Dave Grusin, arranger (Dave Grusin)	Dave Grusin, arranger (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2482	Circle Of Life	Lebo Morake & Hans Zimmer, arrangers (Carmen Twillie)	Lebo Morake & Hans Zimmer, arrangers (Carmen Twillie)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Hans%2BZimmer/Hans%2520Zimmer_1_1_1597141743.jpg?itok=ixrZrEuX
2483	Tribute To The Music Of Bob Wills & The Texas Playboys	Buddy Jackson, art director (Asleep At The Wheel)	Buddy Jackson, art director (Asleep At The Wheel)	
2484	The Complete Ella Fitzgerald Songbooks	Chris Thompson, art director (Ella Fitzgerald)	Chris Thompson, art director (Ella Fitzgerald)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chris%2BThompson/Chris%2520Thompson_1_1_1597166435.jpg?itok=0S_Pfgig
2485	Louis Armstrong - Portrait Of The Artist As A Young Man 1923-1934	Dan Morgenstern & Loren Schoenberg, album notes writers (Louis Armstrong)	Dan Morgenstern & Loren Schoenberg, album notes writers (Louis Armstrong)	
2486	The Complete Ella Fitzgerald Song Books On Verve	Michael Lang, compilation producer (Ella Fitzgerald)	Michael Lang, compilation producer (Ella Fitzgerald)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BLang/Michael%2520Lang_1_1_1581644665.jpg?itok=B96VE91f
2487	Don Was	Don Was		
2488	Copland: Music For Films (The Red Pony, Our Town, Etc.)	William Hoekstra, engineer (Leonard Slatkin, conductor)	William Hoekstra, engineer (Leonard Slatkin, conductor)	
2489	Andrew Cornall	Andrew Cornall		
2490	Bartók: Concerto For Orchestra; Four Orchestral Pieces, Op. 12	Pierre Boulez, artist; Karl-August Naegler, producer	Pierre Boulez, artist; Karl-August Naegler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2491	Bartók: Concerto For Orchestra: Four Orchestral Pieces, Op. 12	Pierre Boulez, conductor (Chicago Symphony Orchestra)	Pierre Boulez, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2492	Floyd: Susannah	Kenn Chester, Jerry Hadley, Samuel Ramey & Cheryl Studer; Kent Nagano, conductor; Martin Sauer, producer (Chorus Of Opera De Lyon; Orchestre Of Opera De Lyon)	Kenn Chester, Jerry Hadley, Samuel Ramey & Cheryl Studer; Kent Nagano, conductor; Martin Sauer, producer (Chorus Of Opera De Lyon; Orchestre Of Opera De Lyon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cheryl%2BStuder/Cheryl%2520Studer_1_1_1581618120.jpg?itok=jrZof3F_
2493	Berlioz: Messe Solennelle	(Monteverdi Choir; Orchestre Revolutionnaire Et Romantique)	(Monteverdi Choir; Orchestre Revolutionnaire Et Romantique)	
2494	The New York Album - Works Of Albert, Bartok & Bloch	Yo-Yo Ma, artist (Baltimore Orchestra)	Yo-Yo Ma, artist (Baltimore Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2495	Haydn: Piano Sonatas, Nos. 32, 47, 53, 59	Emanuel Ax, artist	Emanuel Ax, artist	
2496	Beethoven/Mozart: Quintets (Chicago-Berlin)	Daniel Barenboim, Dale Clevenger, Larry Combs, Daniele Damiano & Hansjorg Schellenberger, artists	Daniel Barenboim, Dale Clevenger, Larry Combs, Daniele Damiano & Hansjorg Schellenberger, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BBarenboim/Daniel%2520Barenboim_1_1_1581625860.jpg?itok=97-UY1BX
2497	The Impatient Lover - Italian Songs By Beethoven, Schubert, Mozart	The Impatient Lover - Italian Songs By Beethoven, Schubert, Mozart		
2498	Albert: Cello Concerto	Stephen Albert, composer	Stephen Albert, composer	
2499	Love Is Strong	The Rolling Stones	David Fincher, video director; Cean Chaffin, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/rolling_stones_spotlight_623462898.png?itok=yydRz1v1
2500	Zoo TV - Live From Sydney	U2	David Mallet, video director; Ned O'Hanlon & Rocky Oldham, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2501	I Will Always Love You	Whitney Houston	David Foster, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whitney%2BHouston/Whitney%2520Houston_1_1_1594980040.jpg?itok=LS4iD1jw
2502	The Bodyguard - Original Soundtrack Album	Whitney Houston	Babyface, Robert Clivilles, David Cole, David Foster, L.A. Reid, Narada Michael Walden & BeBe Winans, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whitney%2BHouston/Whitney%2520Houston_1_1_1594980040.jpg?itok=LS4iD1jw
2503	A Whole New World (Aladdin's Theme)	Alan Menken & Tim Rice, songwriters (Peabo Bryson & Regina Belle)	Alan Menken & Tim Rice, songwriters (Peabo Bryson & Regina Belle)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2504	Toni Braxton	Toni Braxton		
2505	If I Ever Lose My Faith In You	Sting	Sting	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
2506	Barcelona Mona	Bruce Hornsby & Branford Marsalis	Bruce Hornsby & Branford Marsalis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BHornsby/Bruce%2520Hornsby_1_1_1596790605.jpg?itok=t6hNSBV6
2507	I'd Do Anything For Love (But I Won't Do That)	Meat Loaf	Meat Loaf	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Meat%2BLoaf/Meat%2520Loaf_1_1_1575365215.jpg?itok=zIzKyFSN
2508	Livin' On The Edge	Aerosmith	Aerosmith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aerosmith/Aerosmith_1_1_1578384825.jpg?itok=w09cbzmj
2509	Plush	Stone Temple Pilots	Stone Temple Pilots	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stone%2BTemple%2BPilots/Stone%2520Temple%2520Pilots_1_1_1581552110.jpg?itok=XtL1ifik
2510	I Don't Want To Change The World	Ozzy Osbourne	Ozzy Osbourne	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ozzy%2BOsbourne/Ozzy%2520Osbourne_1_1_1594299233.jpg?itok=iGmiuDIW
2511	Sofa	Steve Vai	Steve Vai	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BVai/Steve%2520Vai_1_1_1575363487.jpg?itok=vqfOH8tM
2512	Runaway Train	David Pirner, songwriter (Soul Asylum)	David Pirner, songwriter (Soul Asylum)	
2513	Zooropa	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2514	Another Sad Love Song	Toni Braxton	Toni Braxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toni%2BBraxton/Toni%2520Braxton_1_1_1594578310.jpg?itok=8D890MKk
2515	A Song For You	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
2516	No Ordinary Love	Sade	Sade	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sade/Sade_1_1_1575368372.jpg?itok=hUCGfjaP
2517	That's The Way Love Goes	Janet Jackson, Jimmy Jam & Terry Lewis, songwriters (Janet Jackson)	Janet Jackson, Jimmy Jam & Terry Lewis, songwriters (Janet Jackson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janet%2BJackson/Janet%2520Jackson_1_1_1584106687.jpg?itok=SsHUoXgI
2518	Let Me Ride	Dr. Dre	Dr. Dre	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BDre/Dr%2520Dre_1_1_1581552284.jpg?itok=uis2YD5K
2519	Rebirth Of Slick (Cool Like Dat)	Digable Planets	Digable Planets	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Digable%2BPlanets/Digable%2520Planets_1_1_1581552173.jpg?itok=wLCKsEkl
2520	Spanish Angel	Paul Winter Consort	Paul Winter Consort	
2521	The Road To You	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2522	Take A Look	Natalie Cole	Natalie Cole	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
2523	So Near, So Far (Musings For Miles)	Joe Henderson	Joe Henderson	
2524	Miles And Quincy Live At Montreux	Miles Davis & Quincy Jones	Miles Davis & Quincy Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
2525	Passionate Kisses	Mary Chapin Carpenter	Mary Chapin Carpenter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BChapin%2BCarpenter/Mary%2520Chapin%2520Carpenter_1_1_1584457128.jpg?itok=UPM94xkF
2526	Ain't That Lonely Yet	Dwight Yoakam	Dwight Yoakam	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dwight%2BYoakam/Dwight%2520Yoakam_1_1_1595544292.jpg?itok=_njd-xHj
2527	Hard Workin' Man	Brooks & Dunn	Brooks & Dunn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Brooks%2B%2526%2BDunn/Brooks%2520%2526%2520Dunn_1_1_1596249775.jpg?itok=mibOXkAc
2528	Does He Love You	Reba McEntire & Linda Davis	Reba McEntire & Linda Davis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Reba%2BMcEntire/Reba%2520McEntire_1_1_1578387350.jpg?itok=UEMLeH_f
2529	Red Wing	Asleep At The Wheel Featuring Eldon Shamblin, Johnny Gimble, Chet Atkins, Vince Gill, Marty Stuart & Reuben "Lucky Oceans" Gosfield	Asleep At The Wheel Featuring Eldon Shamblin, Johnny Gimble, Chet Atkins, Vince Gill, Marty Stuart & Reuben "Lucky Oceans" Gosfield	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2530	Waitin' For The Hard Times To Go	The Nashville Bluegrass Band	The Nashville Bluegrass Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nashville%2BBluegrass%2BBand/Nashville%2520Bluegrass%2520Band_1_1_1581629136.jpg?itok=pkXyYruU
2531	Free At Last	dc Talk	dc Talk	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/dc%2BTalk/dc%2520Talk_1_1_1598306052.jpg?itok=rEqPYSAR
2532	The Live Adventure	Steven Curtis Chapman	Steven Curtis Chapman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BCurtis%2BChapman/Steven%2520Curtis%2520Chapman_1_1_1595957925.jpg?itok=qj-xFTeX
2533	Good News	Kathy Mattea	Kathy Mattea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kathy%2BMattea/Kathy%2520Mattea_1_1_1581553601.jpg?itok=kBWUbPRx
2534	Stand Still	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
2535	All Out	The Winans	The Winans	
2536	Live...We Come Rejoicing	Carol Cymbala, choir director (Brooklyn Tabernacle Choir)	Carol Cymbala, choir director (Brooklyn Tabernacle Choir)	
2537	Aries	Luis Miguel	Luis Miguel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
2538	Mi Tierra	Gloria Estefan	Gloria Estefan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BEstefan/Gloria%2520Estefan_1_1_1597398041.jpg?itok=ksUWaVHg
2539	Blues Summit	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
2540	Feels Like Rain	Buddy Guy	Buddy Guy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
2541	The Celtic Harp	The Chieftains	The Chieftains	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2542	Other Voices/Other Rooms	Nanci Griffith	Nanci Griffith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nanci%2BGriffith/Nanci%2520Griffith_1_1_1581555651.jpg?itok=nVZe66Ut
2543	Bad Boys	Inner Circle	Inner Circle	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Inner%2BCircle/Inner%2520Circle_1_1_1576336572.jpg?itok=qaOtck8V
2544	A Meeting By The River	Ry Cooder & V.M. Bhatt	Ry Cooder & V.M. Bhatt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ry%2BCooder/Ry%2520Cooder_1_1_1597165966.jpg?itok=lh9JRMfR
2545	Accordionally Yours	Walter Ostanek & His Band	Walter Ostanek & His Band	
2546	Aladdin - Original Motion Picture Soundtrack	(Various Artists)	(Various Artists)	
2547	Audrey Hepburn's Enchanted Tales	Audrey Hepburn	Audrey Hepburn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Audrey%2BHepburn/Audrey%2520Hepburn_1_1_1597164841.jpg?itok=ztej2mQa
2548	On The Pulse Of Morning	Maya Angelou	Maya Angelou	
2549	Jammin' In New York	George Carlin	George Carlin, artist.	
2550	The Who's Tommy	Pete Townshend, composer; Pete Townshend, lyricist; George Martin, producer (Original Cast Recording)	Pete Townshend, composer; Pete Townshend, lyricist; George Martin, producer (Original Cast Recording)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pete%2BTownshend/Pete%2520Townshend_1_1_1596791234.jpg?itok=ijCrGvxp
2551	Forever In Love	Kenny G, composer (Kenny G)	Kenny G, composer (Kenny G)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BG/Kenny%2520G_1_1_1584101856.jpg?itok=aE977rV5
2552	Aladdin	Alan Menken, composer (Various Artists)	Alan Menken, composer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2553	A Whole New World (Aladdin's Theme) (From Aladdin)	Alan Menken & Tim Rice, songwriters (Peabo Bryson & Regina Belle)	Alan Menken & Tim Rice, songwriters (Peabo Bryson & Regina Belle)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2554	Steam	Peter Gabriel	Stephen Johnson, video director; Prudence Fenton, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
2555	Ten Summoner's Tales	Sting	Doug Nichol, video director; Julie Fong, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
2556	Mood Indigo	Dave Grusin, arranger (Dave Grusin)	Dave Grusin, arranger (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2557	The Complete Billie Holiday On Verve 1945-1959	David Lau, art director (Billie Holiday)	David Lau, art director (Billie Holiday)	
2558	David Foster	David Foster		
2559	Bartók: The Wooden Prince & Cantata Profana	Pierre Boulez, conductor; John Aler & John Tomlinson, artists; Karl-August Naegler, producer	Pierre Boulez, conductor; John Aler & John Tomlinson, artists; Karl-August Naegler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2560	Bartók: The Wooden Prince	Pierre Boulez, conductor (Chicago Symphony Orchestra)	Pierre Boulez, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2561	Handel: Semele	John Aler, Kathleen Battle, Michael Chance, Mark S. Doss, Marilyn Horne, Neil Mackie, Sylvia McNair & Samuel Ramey; John Nelson, conductor; Steven Paul, producer (Ambrosian Opera Chorus; English Chamber Orchestra)	John Aler, Kathleen Battle, Michael Chance, Mark S. Doss, Marilyn Horne, Neil Mackie, Sylvia McNair & Samuel Ramey; John Nelson, conductor; Steven Paul, producer (Ambrosian Opera Chorus; English Chamber Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kathleen%2BBattle/Kathleen%2520Battle_1_1_1581633027.jpg?itok=TzaAQd4j
2562	Bartók: Cantata Profana	Pierre Boulez, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Pierre Boulez, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
2563	Berg: Violin Concerto/Rihm: Time Chant	Anne-Sophie Mutter, artist (Chicago Symphony Orchestra)	Anne-Sophie Mutter, artist (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne-Sophie%2BMutter/Anne-Sophie%2520Mutter_1_1_1575370509.jpg?itok=ovUzRZx6
2564	Barber: The Complete Solo Piano Music	John Browning, artist	John Browning, artist	
2565	Ives: String Quartets Nos. 1, 2/Barber: String Quartet Op. 11 (American Originals)	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
2566	The Art Of Arleen Auger (Works Of Larsen, Purcell, Schumann, Mozart)	The Art Of Arleen Auger (Works Of Larsen, Purcell, Schumann, Mozart)		
2567	Carter: Violin Concerto	Elliott Carter, composer	Elliott Carter, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elliott%2BCarter/Elliott%2520Carter_1_1_1581562943.jpg?itok=YLXIzDGU
2568	Tears In Heaven	Eric Clapton	Russ Titelman, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2569	Unplugged	Eric Clapton	Russ Titelman, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2570	Arrested Development	Arrested Development		
2571	Constant Craving	k.d. lang	k.d. lang	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/k.d.%2Blang/k.d.%2520lang_1_1_1575370816.jpg?itok=5DlcGeH7
2572	Beauty And The Beast	Celine Dion & Peabo Bryson	Celine Dion & Peabo Bryson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celine%2BDion/C%25C3%25A9line%2520Dion_1_1_1579163253.jpg?itok=7lpsetr2
2573	Perfectly Frank	Tony Bennett	Tony Bennett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
2574	Ain't It Heavy	Melissa Etheridge	Melissa Etheridge	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Melissa%2BEtheridge/Melissa%2520Etheridge_1_1_1575364931.jpg?itok=aWtgscmM
2575	Achtung Baby	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2576	Give It Away	Red Hot Chili Peppers	Red Hot Chili Peppers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Red%2BHot%2BChili%2BPeppers/Red%2520Hot%2520Chili%2520Peppers_1_1_1581551756.jpg?itok=IbT8gggV
2577	Wish	Nine Inch Nails	Nine Inch Nails	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nine%2BInch%2BNails/Nine%2520Inch%2520Nails_1_1_1575363078.jpg?itok=IfrE8bLb
2578	Little Wing	Stevie Ray Vaughan & Double Trouble	Stevie Ray Vaughan & Double Trouble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BRay%2BVaughan/Stevie%2520Ray%2520Vaughan_1_1_1581553639.jpg?itok=gJ_spCvY
2579	Layla	Eric Clapton & Jim Gordon, songwriters (Eric Clapton)	Eric Clapton & Jim Gordon, songwriters (Eric Clapton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2580	Bone Machine	Tom Waits	Tom Waits	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BWaits/Tom%2520Waits_1_1_1575366484.jpg?itok=THVo6jMB
2581	The Woman I Am	Chaka Khan	Chaka Khan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
2582	Heaven And Earth	Al Jarreau	Al Jarreau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BJarreau/Al%2520Jarreau_1_1_1575363983.jpg?itok=jrW9lWQV
2583	End Of The Road	Boyz II Men	Boyz II Men	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boyz%2BII%2BMen/Boyz%2520II%2520Men_1_1_1597239481.jpg?itok=1edTnjBB
2584	Doo-Bop	Miles Davis	Miles Davis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
2585	Baby Got Back	Sir Mix-A-Lot	Sir Mix-A-Lot	
2586	Tennessee	Arrested Development	Arrested Development	
2587	Shepherd Moons	Enya	Enya	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Enya/Enya_1_1_1581558707.jpg?itok=E89V1itS
2588	Secret Story	Pat Metheny	Pat Metheny	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
2589	'Round Midnight	Bobby McFerrin	Bobby McFerrin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BMcFerrin/Bobby%2520McFerrin_1_1_1575365223.jpg?itok=KTGGWtEl
2590	Lush Life	Joe Henderson, soloist	Joe Henderson, soloist	
2591	I Heard You Twice The First Time	Branford Marsalis	Branford Marsalis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Branford%2BMarsalis/Branford%2520Marsalis_1_1_1584628324.jpg?itok=qOYg7Q6K
2592	The Turning Point	McCoy Tyner Big Band	McCoy Tyner Big Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/McCoy%2BTyner/McCoy%2520Tyner_1_1_1581555954.jpg?itok=oB3CFrUA
2593	I Feel Lucky	Mary Chapin Carpenter	Mary Chapin Carpenter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BChapin%2BCarpenter/Mary%2520Chapin%2520Carpenter_1_1_1584457128.jpg?itok=UPM94xkF
2594	I Still Believe In You	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2595	Emmylou Harris & The Nash Ramblers At The Ryman	Emmylou Harris & The Nash Ramblers	Emmylou Harris & The Nash Ramblers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
2596	The Whiskey Ain't Workin'	Travis Tritt & Marty Stuart	Travis Tritt & Marty Stuart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Travis%2BTritt/Travis%2520Tritt_1_1_1595783008.jpg?itok=WxNk2i4j
2597	Sneakin' Around	Chet Atkins & Jerry Reed	Chet Atkins & Jerry Reed	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
2598	Every Time You Say Goodbye	Alison Krauss & Union Station	Alison Krauss & Union Station	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
2599	Unseen Power	Petra	Petra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petra/Petra_1_1_1575368028.jpg?itok=xVe1C_XR
2600	The Great Adventure	Steven Curtis Chapman	Steven Curtis Chapman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BCurtis%2BChapman/Steven%2520Curtis%2520Chapman_1_1_1595957925.jpg?itok=qj-xFTeX
2601	Sometimes Miracles Hide	Bruce Carroll	Bruce Carroll	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BCarroll/Bruce%2520Carroll_1_1_1581552415.jpg?itok=NbDXvvKU
2602	He's Working It Out For You	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
2603	Handel's Messiah - A Soulful Celebration	(Various Artists)	(Various Artists)	
2604	Edwin Hawkins Music & Arts Seminar Mass Choir - Recorded Live In Los Angeles	Edwin Hawkins, choir director (Music & Arts Seminar Mass Choir)	Edwin Hawkins, choir director (Music & Arts Seminar Mass Choir)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Edwin%2BHawkins/Edwin%2520Hawkins_1_1_1581618310.jpg?itok=asaK95Rx
2605	Otro Dia Mas Sin Verte	Jon Secada	Jon Secada	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jon%2BSecada/Jon%2520Secada_1_1_1575359387.jpg?itok=KdAcDJk0
2606	Frenesi	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
2608	Goin' Back To New Orleans	Dr. John	Dr. John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BJohn/Dr.%2520John_1_1_1578385151.jpg?itok=crgtmith
2609	The Sky Is Crying	Stevie Ray Vaughan & Double Trouble	Stevie Ray Vaughan & Double Trouble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BRay%2BVaughan/Stevie%2520Ray%2520Vaughan_1_1_1581553639.jpg?itok=gJ_spCvY
2610	An Irish Evening - Live At The Grand Opera House, Belfast	The Chieftains	The Chieftains	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2611	Another Country	The Chieftains	The Chieftains	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BChieftains/The%2520Chieftains_1_1_1575368241.jpg?itok=SfeE81o2
2612	X-tra Naked	Shabba Ranks	Shabba Ranks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shabba%2BRanks/Shabba%2520Ranks_1_1_1581628981.jpg?itok=rCBJObFR
2613	Brasileiro	Sergio Mendes	Sergio Mendes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sergio%2BMendes/Sergio%2520Mendes_1_1_1581552166.jpg?itok=_zmp4RTs
2614	35th Anniversary	Walter Ostanek & His Band	Walter Ostanek & His Band	
2615	Beauty And The Beast - Original Motion Picture Soundtrack	(Various Artists)	(Various Artists)	
2616	P.D.Q. Bach: Music For An Awful Lot Of Winds & Percussion	Peter Schickele	Peter Schickele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BSchickele/Peter%2520Schickele_1_1_1581560645.jpg?itok=pBHcw9SK
2617	What You Can Do To Avoid AIDS	Earvin "Magic" Johnson & Robert O'Keefe	Earvin "Magic" Johnson & Robert O'Keefe	
2618	Guys And Dolls - The New Broadway Cast Recording	Jay David Saks, producer (The New Broadway Cast)	Jay David Saks, producer (The New Broadway Cast)	
2619	Harlem Renaissance Suite	Benny Carter, composer (Benny Carter)	Benny Carter, composer (Benny Carter)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Benny%2BCarter/Benny%2520Carter_1_1_1581561544.jpg?itok=FzLx7Qdq
2620	Beauty And The Beast (From Beauty And The Beast)	Howard Ashman & Alan Menken, songwriters (Celine Dion & Peabo Bryson)	Howard Ashman & Alan Menken, songwriters (Celine Dion & Peabo Bryson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2621	Digging In The Dirt	Peter Gabriel	John Downer, video director; John Downer, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
2622	Diva	Annie Lennox	Sophie Muller, video director; Rob Small, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Annie%2BLennox/Annie%2520Lennox_1_1_1578385103.jpg?itok=LtI_1KuJ
2623	Strike Up The Band	Rob McConnell, arranger (Rob McConnell & The Boss Brass)	Rob McConnell, arranger (Rob McConnell & The Boss Brass)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BMcConnell/Rob%2520McConnell_1_1_1597165181.jpg?itok=gOVB37cq
2624	Here's To Life	Johnny Mandel, arranger (Shirley Horn)	Johnny Mandel, arranger (Shirley Horn)	
2625	Dangerous	Teddy Riley & Bruce Swedien, engineers (Michael Jackson)	Teddy Riley & Bruce Swedien, engineers (Michael Jackson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Teddy%2BRiley/Teddy%2520Riley_1_1_1588264726.jpg?itok=hIkHAM7F
2626	Babyface & L.A. Reid	Babyface & L.A. Reid		
2627	Brian Eno & Daniel Lanois	Brian Eno & Daniel Lanois		
2628	Spellbound - Compact	Melanie Nissen, art director (Paula Abdul)	Melanie Nissen, art director (Paula Abdul)	
2629	Queen Of Soul - The Atlantic Recordings	Thulani Davis, Tom Dowd, Ahmet Ertegun, Arif Mardin, Dave Marsh, David Ritz & Jerry Wexler, album notes writers (Aretha Franklin)	Thulani Davis, Tom Dowd, Ahmet Ertegun, Arif Mardin, Dave Marsh, David Ritz & Jerry Wexler, album notes writers (Aretha Franklin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tom%2BDowd/Tom%2520Dowd_1_1_1581561718.jpg?itok=JE1PlWcv
2630	The Complete Capitol Recordings Of The Nat "King" Cole Trio	(Nat "King" Cole Trio)	(Nat "King" Cole Trio)	
2631	R. Strauss: Die Frau Ohne Schatten	Hildegard Behrens, Placido Domingo, Sumi Jo, Reinhild Runkel, Jose Van Dam & Julia Varady; Georg Solti, conductor; Christopher Raeburn, Stephen Trainor & Morten Winding, producers (Vienna Philharmonic Orchestra)	Hildegard Behrens, Placido Domingo, Sumi Jo, Reinhild Runkel, Jose Van Dam & Julia Varady; Georg Solti, conductor; Christopher Raeburn, Stephen Trainor & Morten Winding, producers (Vienna Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Placido%2BDomingo/Placido%2520Domingo_1_1_1591693620.jpg?itok=lD94G-Wv
2632	Orff: Carmina Burana	Herbert Blomstedt, conductor (San Francisco Symphony Boys Choir & San Francisco Symphony Girls Choir; San Francisco Symphony Orchestra)	Herbert Blomstedt, conductor (San Francisco Symphony Boys Choir & San Francisco Symphony Girls Choir; San Francisco Symphony Orchestra)	
2633	Prokofiev: Sinfonia Concertante/Tchaikovsky: Variations On A Rococo Theme	Yo-Yo Ma, artist (Pittsburgh Symphony Orchestra)	Yo-Yo Ma, artist (Pittsburgh Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2634	Horowitz - Discovered Treasures (Chopin, Liszt, Scarlatti, Scriabin, Clementi)	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
2635	Brahms: Sonatas For Cello & Piano	Emanuel Ax & Yo-Yo Ma, artists	Emanuel Ax & Yo-Yo Ma, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2636	Kathleen Battle At Carnegie Hall (Handel, Mozart, Liszt, Strauss, etc.)	Kathleen Battle At Carnegie Hall (Handel, Mozart, Liszt, Strauss, etc.)		
2637	Barber: The Lovers	Samuel Barber, composer	Samuel Barber, composer	
2638	Michael Fine	Michael Fine		
2639	Unforgettable	Natalie Cole (With Nat "King" Cole)	David Foster, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
2640	Unforgettable With Love	Natalie Cole	Andre Fischer, David Foster & Tommy LiPuma, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
2641	Marc Cohn	Marc Cohn		
2642	Something To Talk About	Bonnie Raitt	Bonnie Raitt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2643	When A Man Loves A Woman	Michael Bolton	Michael Bolton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBolton/Michael%2520Bolton_1_1_1578385496.jpg?itok=Wfoi9xKw
2644	Robin Hood - Prince Of Thieves	Michael Kamen	Michael Kamen	
2645	Luck Of The Draw	Bonnie Raitt	Bonnie Raitt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2646	Good Man, Good Woman	Bonnie Raitt & Delbert McClinton	Bonnie Raitt & Delbert McClinton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2647	For Unlawful Carnal Knowledge	Van Halen	Van Halen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Van%2BHalen/Van%2520Halen_1_1_1597395203.jpg?itok=BbHy4aFF
2648	Metallica	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
2649	Cliffs Of Dover	Eric Johnson	Eric Johnson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BJohnson/Eric%2520Johnson_1_1_1588264754.jpg?itok=5_VGNc2L
2650	Soul Cages	Sting, songwriter (Sting)	Sting, songwriter (Sting)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
2651	Out Of Time	R.E.M.	R.E.M.	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/R.E.M./R.E.M._1_1_1575360189.jpg?itok=n2C8lOsD
2652	Burnin'	Patti LaBelle	Patti LaBelle	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Patti%2BLaBelle/Patti%2520LaBelle_1_1_1576330328.jpg?itok=6M0aQLOG
2653	How Can I Ease The Pain	Lisa Fischer	Lisa Fischer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lisa%2BFischer/Lisa%2520Fischer_1_1_1575372883.jpg?itok=PHHf-qIa
2654	Power Of Love	Luther Vandross	Luther Vandross	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luther%2BVandross/Luther%2520Vandross_1_1_1575369222.jpg?itok=GBSXYN7T
2655	Cooleyhighharmony	Boyz II Men	Boyz II Men	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boyz%2BII%2BMen/Boyz%2520II%2520Men_1_1_1597239481.jpg?itok=1edTnjBB
2656	Power Of Love/Love Power	Marcus Miller, Luther Vandross & Teddy Vann, songwriters (Luther Vandross)	Marcus Miller, Luther Vandross & Teddy Vann, songwriters (Luther Vandross)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marcus%2BMiller/Marcus%2520Miller_1_1_1575371017.jpg?itok=cFjmRVru
2657	Mama Said Knock You Out	LL Cool J	LL Cool J	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/LL%2BCool%2BJ/LL%2520Cool%2520J_1_1_1578385441.jpg?itok=RJe8316q
2658	Summertime	D.J. Jazzy Jeff & The Fresh Prince	D.J. Jazzy Jeff & The Fresh Prince	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Will%2BSmith/Will%2520Smith_1_1_1581552180.jpg?itok=ZsgRG6eK
2659	Fresh Aire 7	Chip Davis (Mannheim Steamroller)	Chip Davis (Mannheim Steamroller)	
2660	Sassy	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
2661	He Is Christmas	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2662	I Remember You	Stan Getz, soloist	Stan Getz, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BGetz/Stan%2520Getz_1_1_1581618079.jpg?itok=1uHIRekD
2663	Saturday Night At The Blue Note	Oscar Peterson Trio	Oscar Peterson Trio	
2664	Live At The Royal Festival Hall	Dizzy Gillespie	Dizzy Gillespie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dizzy%2BGillespie/Dizzy%2520Gillespie_1_1_1592919057.jpg?itok=cE9ZhAu-
2665	Down At The Twist And Shout	Mary Chapin Carpenter	Mary Chapin Carpenter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mary%2BChapin%2BCarpenter/Mary%2520Chapin%2520Carpenter_1_1_1584457128.jpg?itok=UPM94xkF
2666	Ropin' The Wind	Garth Brooks	Garth Brooks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Garth%2BBrooks/Garth%2520Brooks_1_1_1584104634.jpg?itok=CMCjUwdl
2667	Love Can Build A Bridge	The Judds	The Judds	
2668	The New Nashville Cats	Mark O'Connor	Mark O'Connor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BO%2527Connor/Mark%2520O%2527Connor_1_1_1575370363.jpg?itok=7CY7Nr7s
2669	Spring Training	Carl Jackson & John Starling (With The Nash Ramblers)	Carl Jackson & John Starling (With The Nash Ramblers)	
2670	Under Their Influence	Russ Taff	Russ Taff	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Russ%2BTaff/Russ%2520Taff_1_1_1581562167.jpg?itok=GxwEfE2A
2671	For The Sake Of The Call	Steven Curtis Chapman	Steven Curtis Chapman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steven%2BCurtis%2BChapman/Steven%2520Curtis%2520Chapman_1_1_1595957925.jpg?itok=qj-xFTeX
2672	Pray For Me	Mighty Clouds Of Joy	Mighty Clouds Of Joy	
2673	Different Lifestyles	CeCe & BeBe Winans	CeCe & BeBe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/BeBe%2BWinans/BeBe%2520Winans_1_1_1581552052.jpg?itok=7II9YYOc
2674	The Evolution Of Gospel	Gary Hines, choir director (The Sounds Of Blackness)	Gary Hines, choir director (The Sounds Of Blackness)	
2675	Cosas Del Amor	Vikki Carr	Vikki Carr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vikki%2BCarr/Vikki%2520Carr_1_1_1581615224.jpg?itok=xZnGtxrE
2676	Bachata Rosa	Juan Luis Guerra 4.40	Juan Luis Guerra 4.40	
2677	16 de Septiembre	Little Joe	Little Joe	
2678	Live At The Apollo	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
2679	Damn Right, I've Got The Blues	Buddy Guy	Buddy Guy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Buddy%2BGuy/Buddy%2520Guy_1_1_1578385468.jpg?itok=RKQ3HiK-
2680	The Civil War - Original Soundtrack	(Various Artists)	(Various Artists)	
2681	The Missing Years	John Prine	John Prine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BPrine/John%2520Prine_1_1_1584548203.jpg?itok=1soRAxYi
2682	As Raw As Ever	Shabba Ranks	Shabba Ranks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shabba%2BRanks/Shabba%2520Ranks_1_1_1581628981.jpg?itok=rCBJObFR
2683	Planet Drum	Mickey Hart	Mickey Hart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mickey%2BHart/Mickey%2520Hart_1_1_1581555448.jpg?itok=Ry7qjabP
2684	Live At Gilley's!	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2685	A Capella Kids	(The Maranatha! Kids)	(The Maranatha! Kids)	
2686	P.D.Q. Bach: WTWP Classical Talkity-Talk Radio	Peter Schickele	Peter Schickele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BSchickele/Peter%2520Schickele_1_1_1581560645.jpg?itok=pBHcw9SK
2687	The Civil War	Ken Burns	Ken Burns	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ken%2BBurns/Ken%2520Burns_1_1_1581629774.jpg?itok=EoUcRvwz
2688	The Will Rogers Follies	Cy Coleman, composer; Betty Comden & Adolph Green, lyricists; Mike Berniker & Cy Coleman, producers (Original Broadway Cast)	Cy Coleman, composer; Betty Comden & Adolph Green, lyricists; Mike Berniker & Cy Coleman, producers (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cy%2BColeman/Cy%2520Coleman_1_1_1581657317.jpg?itok=ds4PaQ9s
2689	Basque	Elton John, composer (James Galway)	Elton John, composer (James Galway)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elton%2BJohn/Elton%2520John_1_1_1596808830.jpg?itok=OqYWw2a1
2690	Dances With Wolves	John Barry, composer (John Barry)	John Barry, composer (John Barry)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BBarry/John%2520Barry_1_1_1597166253.jpg?itok=9rE8j65y
2691	(Everything I Do) I Do It For You (From Robin Hood - Prince Of Thieves)	Bryan Adams, Michael Kamen & Robert John "Mutt" Lange, songwriters (Bryan Adams)	Bryan Adams, Michael Kamen & Robert John "Mutt" Lange, songwriters (Bryan Adams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bryan%2BAdams/Bryan%2520Adams_1_1_1576223623.jpg?itok=cGamON8B
2692	Madonna - Blonde Ambition World Tour Live	Madonna	David Mallet & Mark "Aldo" Miceli, video directors; Anthony Eaton, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Madonna/Madonna_1_1_1578385371.jpg?itok=LkjJTTOf
2693	Medley: Bess You Is My Woman/I Loves You Porgy	Dave Grusin, arranger (Dave Grusin)	Dave Grusin, arranger (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2694	Billie Holiday - The Complete Decca Recordings	Vartan, art director (Billie Holiday)	Vartan, art director (Billie Holiday)	
2695	Star Time	James Brown, Nelson George, Alan M. Leeds, Harry Weinger & Cliff White, album notes writers (James Brown)	James Brown, Nelson George, Alan M. Leeds, Harry Weinger & Cliff White, album notes writers (James Brown)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/james_brown_1x1_medium1.jpg?itok=eVkLpL3V
2696	Bernstein: Candide	Leonard Bernstein, conductor; June Anderson, Nicolai Gedda, Adolph Green, Jerry Hadley, Della Jones, Christa Ludwig & Kurt Ollmann, artists; Hans Weber, producer	Leonard Bernstein, conductor; June Anderson, Nicolai Gedda, Adolph Green, Jerry Hadley, Della Jones, Christa Ludwig & Kurt Ollmann, artists; Hans Weber, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
2697	Corigliano: Symphony No. 1	Daniel Barenboim, conductor (Chicago Symphony Orchestra)	Daniel Barenboim, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BBarenboim/Daniel%2520Barenboim_1_1_1581625860.jpg?itok=97-UY1BX
2698	Wagner: Gotterdammerung	Hildegard Behrens, Reiner Goldberg, Matti Salminen, Hanna Schwarz, Cheryl Studer, Bernd Weikl & Ekkehard Wlaschiha; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	Hildegard Behrens, Reiner Goldberg, Matti Salminen, Hanna Schwarz, Cheryl Studer, Bernd Weikl & Ekkehard Wlaschiha; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cheryl%2BStuder/Cheryl%2520Studer_1_1_1581618120.jpg?itok=jrZof3F_
2699	Bach: Mass In B Minor	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
2700	Barber: Piano Concerto	John Browning, artist (Saint Louis Symphony Orchestra)	John Browning, artist (Saint Louis Symphony Orchestra)	
2701	Granados: Goyescas; Allegro De Concierto; Danza Lenta	Alicia De Larrocha, artist	Alicia De Larrocha, artist	
2702	Brahms: Piano Quartets (Op. 25 & 26)	Emanuel Ax, Jaime Laredo, Yo-Yo Ma & Isaac Stern, artists	Emanuel Ax, Jaime Laredo, Yo-Yo Ma & Isaac Stern, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jaime%2BLaredo/Jaime%2520Laredo_1_1_1581556420.jpg?itok=ereFSpj5
2703	The Girl With Orange Lips (Falla, Ravel, etc.)	The Girl With Orange Lips (Falla, Ravel, etc.)		
2704	James Mallinson	James Mallinson		
2705	Another Day In Paradise	Phil Collins	Phil Collins & Hugh Padgham, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BCollins/Phil%2520Collins_1_1_1596706545.jpg?itok=MQR7SHdv
2706	Back On The Block	Quincy Jones (And Various Artists)	Quincy Jones, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
2707	From A Distance	Julie Gold, songwriter (Bette Midler)	Julie Gold, songwriter (Bette Midler)	
2708	Mariah Carey	Mariah Carey		
2709	Vision Of Love	Mariah Carey	Mariah Carey	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_20.png?itok=44psZoZr
2710	Oh Pretty Woman	Roy Orbison	Roy Orbison	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roy%2BOrbison/Roy%2520Orbison_1_1_1581553684.jpg?itok=RAMZ0j9P
2711	Twin Peaks Theme	Angelo Badalamenti	Angelo Badalamenti	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Angelo%2BBadalamenti/Angelo%2520Badalamenti_1_1_1581616420.jpg?itok=F52Bdjdi
2712	Black Velvet	Alannah Myles	Alannah Myles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alannah%2BMyles/Alannah%2520Myles_1_1_1581558235.jpg?itok=H-K5xjvu
2713	Bad Love	Eric Clapton	Eric Clapton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eric%2BClapton/Eric%2520Clapton_1_1_1581552257.jpg?itok=VS2OFNyf
2714	Janie's Got A Gun	Aerosmith	Aerosmith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aerosmith/Aerosmith_1_1_1578384825.jpg?itok=w09cbzmj
2715	D/FW	Vaughan Brothers	Vaughan Brothers	
2716	Time's Up	Living Colour	Living Colour	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Living%2BColour/Living%2520Colour_1_1_1576335773.jpg?itok=zZoE36Lk
2717	Stone Cold Crazy	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
2718	I Do Not Want What I Haven't Got	Sinéad O'Connor	Sinéad O'Connor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sin%25C3%25A9ad%2BO%2527Connor/Sin%25C3%25A9ad%2520O%2527Connor_1_1_1581554680.jpg?itok=8L2AtmuV
2719	Compositions	Anita Baker	Anita Baker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anita%2BBaker/Anita%2520Baker_1_1_1597743890.jpg?itok=FUWd9QJc
2720	Here And Now	Luther Vandross	Luther Vandross	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luther%2BVandross/Luther%2520Vandross_1_1_1575369222.jpg?itok=GBSXYN7T
2721	I'll Be Good To You	Ray Charles & Chaka Khan	Ray Charles & Chaka Khan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
2722	U Can't Touch This	M.C. Hammer, Rick James & Alonzo Miller, songwriters (M.C. Hammer)	M.C. Hammer, Rick James & Alonzo Miller, songwriters (M.C. Hammer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rick%2BJames/Rick%2520James_1_1_1581552164.jpg?itok=vQXO4dfl
2723	Mark Isham	Mark Isham	Mark Isham	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BIsham/Mark%2520Isham_1_1_1581615042.jpg?itok=UH18nIHy
2724	Birdland	Quincy Jones	Quincy Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
2725	All That Jazz	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
2726	We Are In Love	Harry Connick, Jr.	Harry Connick, Jr.	
2727	The Legendary Oscar Peterson Trio Live At The Blue Note	Oscar Peterson, soloist	Oscar Peterson, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oscar%2BPeterson/Oscar%2520Peterson_1_1_1592209419.jpg?itok=dV8s6dYI
2728	Basie's Bag	Frank Foster	Frank Foster	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BFoster/Frank%2520Foster_1_1_1596101735.jpg?itok=UOyMLU5c
2729	Where've You Been	Kathy Mattea	Kathy Mattea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kathy%2BMattea/Kathy%2520Mattea_1_1_1581553601.jpg?itok=kBWUbPRx
2730	When I Call Your Name	Vince Gill	Vince Gill	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGill/Vince%2520Gill_1_1_1581551728.jpg?itok=aB96wKgE
2731	Pickin' On Nashville	The Kentucky Headhunters	The Kentucky Headhunters	
2732	Poor Boy Blues	Chet Atkins & Mark Knopfler	Chet Atkins & Mark Knopfler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
2733	So Soft, Your Goodbye	Chet Atkins & Mark Knopfler	Chet Atkins & Mark Knopfler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
2734	I've Got That Old Feeling	Alison Krauss	Alison Krauss	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alison%2BKrauss/Alison%2520Krauss_1_1_1581554610.jpg?itok=omJsJ9cy
2735	Beyond Belief	Petra	Petra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petra/Petra_1_1_1575368028.jpg?itok=xVe1C_XR
2736	Another Time... Another Place	Sandi Patti	Sandi Patti	
2737	The Great Exchange	Bruce Carroll	Bruce Carroll	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BCarroll/Bruce%2520Carroll_1_1_1581552415.jpg?itok=NbDXvvKU
2738	Tramaine Hawkins Live	Tramaine Hawkins	Tramaine Hawkins	
2739	So Much 2 Say	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2740	Having Church	James Cleveland, choir director (The Southern California Community Choir)	James Cleveland, choir director (The Southern California Community Choir)	
2741	Por Que Te Tengo Que Olvidar?	Jose Feliciano	Jose Feliciano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BFeliciano/Jos%25C3%25A9%2520Feliciano_1_1_1581625803.jpg?itok=xqdsfMbW
2742	Lambada Timbales	Tito Puente	Tito Puente	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
2743	Soy De San Luis	Texas Tornados	Texas Tornados	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Texas%2BTornados/Texas%2520Tornados_1_1_1575368069.jpg?itok=KMSCkzpT
2744	Live At San Quentin	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
2745	Family Style	Vaughan Brothers	Vaughan Brothers	
2746	On Praying Ground	Doc Watson	Doc Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
2747	Steady On	Shawn Colvin	Shawn Colvin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shawn%2BColvin/Shawn%2520Colvin_1_1_1581551750.jpg?itok=1w7xoEU4
2748	Time Will Tell - A Tribute To Bob Marley	Bunny Wailer	Bunny Wailer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bunny%2BWailer/Bunny%2520Wailer_1_1_1597163477.jpg?itok=RLpGLnpr
2749	When It's Polka Time At Your House	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2750	The Little Mermaid	(Various Artists)	(Various Artists)	
2751	P.D.Q. Bach: Oedipus Tex And Other Choral Calamities	Peter Schickele	Peter Schickele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BSchickele/Peter%2520Schickele_1_1_1581560645.jpg?itok=pBHcw9SK
2752	Gracie - A Love Story	George Burns	George Burns	
2753	Les Miserables - The Complete Symphonic Recording	David Caddick, producer (Garry Morris & Cast Members)	David Caddick, producer (Garry Morris & Cast Members)	
2754	Change Of Heart	Pat Metheny, composer (Pat Metheny, Dave Holland & Roy Haynes)	Pat Metheny, composer (Pat Metheny, Dave Holland & Roy Haynes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
2755	Under The Sea (From The Little Mermaid)	Howard Ashman & Alan Menken, songwriters (Various Artists)	Howard Ashman & Alan Menken, songwriters (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alan%2BMenken/Alan%2520Menken_1_1_1597180829.jpg?itok=0VItDS2Y
2756	Opposites Attract	Paula Abdul	Michael Patterson & Candice Reckinger, video directors; Sharon Oreck, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paula%2BAbdul/Paula%2520Abdul_1_1_1575374072.jpg?itok=mKgMZnK-
2757	Please Hammer Don't Hurt 'Em - The Movie	M.C. Hammer	Rupert Wainwright, video director; John Oetjen, video producer	
2758	The Places You Find Love	Glen Ballard, Jerry Hey, Quincy Jones & Clif Magness, arrangers (Siedah Garrett & Chaka Khan)	Glen Ballard, Jerry Hey, Quincy Jones & Clif Magness, arrangers (Siedah Garrett & Chaka Khan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glen%2BBallard/Glen%2520Ballard_1_1_1581553661.jpg?itok=yDYT4HTS
2759	Quincy Jones	Quincy Jones		
2760	Days Of Open Hand	Jeffrey Gold, Len Peltier & Suzanne Vega, art directors (Suzanne Vega)	Jeffrey Gold, Len Peltier & Suzanne Vega, art directors (Suzanne Vega)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BGold/Jeff%2520Gold_1_1_1581557403.jpg?itok=fa4wjtvb
2761	Brownie - The Complete Emarcy Recordings Of Clifford Brown	Dan Morgenstern, album notes writer (Clifford Brown)	Dan Morgenstern, album notes writer (Clifford Brown)	
2762	Robert Johnson - The Complete Recordings	(Robert Johnson)	(Robert Johnson)	
2763	Ives: Sym. No. 2; Gong On The Hook And Ladder; Central Park In The Dark; The Unanswered Question	Leonard Bernstein, artist; Hans Weber, producer	Leonard Bernstein, artist; Hans Weber, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
2764	Shostakovich: Symphonies Nos. 1 & 7	Leonard Bernstein, conductor (Chicago Symphony Orchestra)	Leonard Bernstein, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
2765	Wagner: Das Rheingold	Siegfried Jerusalem, Christa Ludwig, Kurt Moll, James Morris, Jan Hendrik Rootering, Ekkehard Wlaschiha & Heinz Zednik; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	Siegfried Jerusalem, Christa Ludwig, Kurt Moll, James Morris, Jan Hendrik Rootering, Ekkehard Wlaschiha & Heinz Zednik; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Siegfried%2BJerusalem/Siegfried%2520Jerusalem_1_1_1597181931.jpg?itok=nFrDwVPm
2766	Walton: Belshazzar's Feast/Bernstein: Chichester Psalms; Missa Brevis	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	
2767	Shostakovich: Violin Concerto No. 1 In A Minor/Glazunov: Violin Concerto In A Minor	Itzhak Perlman, artist (Israel Philharmonic Orchestra)	Itzhak Perlman, artist (Israel Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
2768	The Last Recording	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
2769	Brahms: The Three Violin Sonatas	Daniel Barenboim & Itzhak Perlman, artists	Daniel Barenboim & Itzhak Perlman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BBarenboim/Daniel%2520Barenboim_1_1_1581625860.jpg?itok=97-UY1BX
2770	Carreras, Domingo, Pavarotti In Concert	(Orchestra Del Maggio Musicale)	(Orchestra Del Maggio Musicale)	
2771	Bernstein: Arias & Barcarolles	Leonard Bernstein, composer	Leonard Bernstein, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
2772	Rachmaninoff: Vespers	Jack Renner, engineer (Robert Shaw conductor; Robert Shaw Festival Singers)	Jack Renner, engineer (Robert Shaw conductor; Robert Shaw Festival Singers)	
2773	Adam Stern	Adam Stern		
2774	Wind Beneath My Wings	Bette Midler	Arif Mardin, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bette%2BMidler/Bette%2520Midler_1_1_1575359591.jpg?itok=7Wx-nTh_
2775	Nick Of Time	Bonnie Raitt	Don Was, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2776	How Am I Supposed To Live Without You	Michael Bolton	Michael Bolton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBolton/Michael%2520Bolton_1_1_1578385496.jpg?itok=Wfoi9xKw
2777	Don't Know Much	Linda Ronstadt & Aaron Neville	Linda Ronstadt & Aaron Neville	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
2778	Healing Chant	Neville Brothers	Neville Brothers	
2779	The End Of The Innocence	Don Henley	Don Henley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BHenley/Don%2520Henley_1_1_1591112918.jpg?itok=nM9J49U1
2780	Traveling Wilburys Volume One	Traveling Wilburys	Traveling Wilburys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Traveling%2BWilburys/Traveling%2520Wilburys_1_1_1581564410.jpg?itok=ojt1OoyL
2781	Jeff Beck's Guitar Shop with Terry Bozzio & Tony Hymas	Jeff Beck, Terry Bozzio & Tony Hymas	Jeff Beck, Terry Bozzio & Tony Hymas	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
2782	Cult Of Personality	Living Colour	Living Colour	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Living%2BColour/Living%2520Colour_1_1_1576335773.jpg?itok=zZoE36Lk
2783	One	Metallica	Metallica	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Metallica/Metallica_1_1_1599482658Muzooka.jpg?itok=dPbNqpjM
2784	Giving You The Best That I Got	Anita Baker	Anita Baker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anita%2BBaker/Anita%2520Baker_1_1_1597743890.jpg?itok=FUWd9QJc
2785	Every Little Step	Bobby Brown	Bobby Brown	
2786	Back To Life	Soul II Soul Featuring Caron Wheeler	Soul II Soul Featuring Caron Wheeler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soul%2BII%2BSoul/Soul%2520II%2520Soul_1_1_1600073941Muzooka.jpg?itok=CrNqTndw
2787	African Dance	Soul II Soul	Soul II Soul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soul%2BII%2BSoul/Soul%2520II%2520Soul_1_1_1600073941Muzooka.jpg?itok=CrNqTndw
2788	If You Don't Know Me By Now	Kenny Gamble & Leon Huff, songwriters (Simply Red)	Kenny Gamble & Leon Huff, songwriters (Simply Red)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BGamble/Kenny%2520Gamble_1_1_1581618210.jpg?itok=bu8Qohwx
2789	Bust A Move	Young MC	Young MC	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Young%2BMC/Young%2520MC_1_1_1581551885.jpg?itok=e-qKwHG_
2790	Passion - Music For The Last Temptation Of Christ	Peter Gabriel	Peter Gabriel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BGabriel/Peter%2520Gabriel_1_1_1578385513.jpg?itok=VLWBd0XU
2791	Letter From Home	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2792	Blues On Broadway	Ruth Brown	Ruth Brown	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ruth%2BBrown/Ruth%2520Brown_1_1_1581624853.jpg?itok=oT-PLQA6
2793	When Harry Met Sally	Harry Connick, Jr.	Harry Connick, Jr.	
2794	Makin' Whoopee	Dr. John & Rickie Lee Jones	Dr. John & Rickie Lee Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dr.%2BJohn/Dr.%2520John_1_1_1578385151.jpg?itok=crgtmith
2795	Aura	Miles Davis, soloist	Miles Davis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
2796	Chick Corea Akoustic Band	Chick Corea Akoustic Band	Chick Corea Akoustic Band	
2797	Absolute Torch And Twang	k.d. lang	k.d. lang	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/k.d.%2Blang/k.d.%2520lang_1_1_1575370816.jpg?itok=5DlcGeH7
2798	Lyle Lovett And His Large Band	Lyle Lovett	Lyle Lovett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lyle%2BLovett/Lyle%2520Lovett_1_1_1575365341.jpg?itok=TddlzsgD
2799	Will The Circle Be Unbroken Vol. 2	Nitty Gritty Dirt Band	Nitty Gritty Dirt Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nitty%2BGritty%2BDirt%2BBand/Nitty%2520Gritty%2520Dirt%2520Band_1_1_1581551913.jpg?itok=P7PuPqUN
2800	There's A Tear In My Beer	Hank Williams, Jr., & Hank Williams, Sr.	Hank Williams, Jr., & Hank Williams, Sr.	
2801	Amazing Grace	Randy Scruggs	Randy Scruggs	
2802	The Valley Road	Nitty Gritty Dirt Band & Bruce Hornsby	Nitty Gritty Dirt Band & Bruce Hornsby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nitty%2BGritty%2BDirt%2BBand/Nitty%2520Gritty%2520Dirt%2520Band_1_1_1581551913.jpg?itok=P7PuPqUN
2803	After All This Time	Rodney Crowell, songwriter (Rodney Crowell)	Rodney Crowell, songwriter (Rodney Crowell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rodney%2BCrowell/Rodney%2520Crowell_1_1_1584699184.jpg?itok=BDnuSnMN
2804	Don't Cry	CeCe Winans	CeCe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
2805	Meantime	Bebe Winans	Bebe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/BeBe%2BWinans/BeBe%2520Winans_1_1_1581552052.jpg?itok=7II9YYOc
2806	The Savior Is Waiting	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2807	As Long As We're Together	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
2808	Let Brotherly Love Continue	Daniel Winans	Daniel Winans	
2809	Cielito Lindo	Jose Feliciano	Jose Feliciano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BFeliciano/Jos%25C3%25A9%2520Feliciano_1_1_1581625803.jpg?itok=xqdsfMbW
2810	Ritmo En El Corazon	Celia Cruz & Ray Barretto	Celia Cruz & Ray Barretto	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Celia%2BCruz/Celia%2520Cruz_1_1_1581560505.jpg?itok=5KYlZzO6
2811	La Pistola y El Corazon	Los Lobos	Los Lobos	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BLobos/Los%2520Lobos_1_1_1575360208.jpg?itok=FEBbtgyX
2812	I'm In The Mood	Bonnie Raitt & John Lee Hooker	Bonnie Raitt & John Lee Hooker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bonnie%2BRaitt/Bonnie%2520Raitt_1_1_1581551760.jpg?itok=3VdTUqfR
2813	In Step	Stevie Ray Vaughan & Double Trouble	Stevie Ray Vaughan & Double Trouble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BRay%2BVaughan/Stevie%2520Ray%2520Vaughan_1_1_1581553639.jpg?itok=gJ_spCvY
2814	Le Mystere Des Voix Bulgares, Vol. II	(Bulgarian State Female Vocal Choir)	(Bulgarian State Female Vocal Choir)	
2815	Indigo Girls	Indigo Girls	Indigo Girls	
2816	All In My Love For You	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2817	One Bright Day	Ziggy Marley & The Melody Makers	Ziggy Marley & The Melody Makers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
2818	The Rock-A-Bye Collection, Vol. 1	Tanya Goodman	Tanya Goodman	
2819	P.D.Q. Bach: 1712 Overture & Other Musical Assaults	Peter Schickele	Peter Schickele	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BSchickele/Peter%2520Schickele_1_1_1581560645.jpg?itok=pBHcw9SK
2820	It's Always Something	Gilda Radner	Gilda Radner	
2821	Jerome Robbins' Broadway	Jay David Saks, producer (Jason Alexander, Debbie Shapiro & Robert La Fasse)	Jay David Saks, producer (Jason Alexander, Debbie Shapiro & Robert La Fasse)	
2822	The Batman Theme	Danny Elfman, composer (Sinfonia Of London Orchestra)	Danny Elfman, composer (Sinfonia Of London Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Danny%2BElfman/Danny%2520Elfman_1_1_1596099094.jpg?itok=DeB-pxuy
2823	The Fabulous Baker Boys	Dave Grusin, composer (Dave Grusin)	Dave Grusin, composer (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2824	Let The River Run (From Working Girl)	Carly Simon, songwriter (Carly Simon)	Carly Simon, songwriter (Carly Simon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carly%2BSimon/Carly%2520Simon_1_1_1596101027.jpg?itok=5-Vxcd04
2825	Leave Me Alone	Michael Jackson	Jim Blashfield, video director; Jim Blashfield, Paul Diener, Frank DiLeo & Jerry Kramer, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
2826	Rhythm Nation 1814	Janet Jackson	Jonathan Dayton, Valerie Faris & Dominic Sena, video directors; Jonathan Dayton, Valerie Faris & Aris McGarry, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janet%2BJackson/Janet%2520Jackson_1_1_1584106687.jpg?itok=SsHUoXgI
2827	Suite From The Milagro Beanfield War	Dave Grusin, arranger (Dave Grusin)	Dave Grusin, arranger (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2828	My Funny Valentine	Dave Grusin, arranger (Michelle Pfeiffer)	Dave Grusin, arranger (Michelle Pfeiffer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
2829	Sound + Vision	Roger Gorman, art director (David Bowie)	Roger Gorman, art director (David Bowie)	
2830	Bird - The Complete Charlie Parker On Verve	Phil Schaap, album notes writer (Charlie Parker)	Phil Schaap, album notes writer (Charlie Parker)	
2831	Chuck Berry - The Chess Box	(Chuck Berry)	(Chuck Berry)	
2832	Cry Like A Rainstorm - Howl Like The Wind	George Massenburg, engineer (Linda Ronstadt)	George Massenburg, engineer (Linda Ronstadt)	
2833	Peter Asher	Peter Asher		
2834	Bartók: 6 String Quartets	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists; Wolf Erichson, producer	Emerson String Quartet (Eugene Drucker, Lawrence Dutton, David Finckel & Philip Setzer), artists; Wolf Erichson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emerson%2BString%2BQuartet/Emerson%2520String%2520Quartet_1_1_1581553655.jpg?itok=rLxdLD9k
2835	Mahler: Symphony No. 3 In D Minor	Leonard Bernstein, conductor (New York Philharmonic)	Leonard Bernstein, conductor (New York Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
2836	Wagner: Die Walkuere	Hildegard Behrens, Gary Lakes, Christa Ludwig, Kurt Moll, James Morris & Jessye Norman; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	Hildegard Behrens, Gary Lakes, Christa Ludwig, Kurt Moll, James Morris & Jessye Norman; James Levine, conductor; Cord Garben, producer (Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christa%2BLudwig/Christa%2520Ludwig_1_1_1597173981.jpg?itok=Co2N7lvt
2837	Barber: Cello Concerto, Op. 22/Britten: Symphony For Cello And Orchestra, Op. 68	Yo-Yo Ma, artist (Baltimore Symphony Orchestra)	Yo-Yo Ma, artist (Baltimore Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
2838	Bach: English Suites	Andras Schiff, artist	Andras Schiff, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andras%2BSchiff/Andr%25C3%25A1s%2520Schiff_1_1_1581562137.jpg?itok=OdjdfUwM
2839	Knoxville - Summer Of 1915 (Music Of Barber, Menotti, Harbison, Stravinsky)	(Orchestra Of St. Luke's)	(Orchestra Of St. Luke's)	
2840	Reich: Different Trains	Steve Reich, composer	Steve Reich, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BReich/Steve%2520Reich_1_1_1575362595.jpg?itok=uRQJXfvy
2841	Don't Worry Be Happy	Bobby McFerrin	Linda Goldstein, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BMcFerrin/Bobby%2520McFerrin_1_1_1575365223.jpg?itok=KTGGWtEl
2842	Faith	George Michael	George Michael, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BMichael/George%2520Michael_1_1_1578384981.jpg?itok=T9m_7YAu
2843	Tracy Chapman	Tracy Chapman		
2844	Fast Car	Tracy Chapman	Tracy Chapman	
2845	Brasil	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
2846	Close-up	David Sanborn	David Sanborn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
2847	Tina Live In Europe	Tina Turner	Tina Turner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tina%2BTurner/Tina%2520Turner_1_1_1579278403.jpg?itok=vJ-mW-L4
2848	Simply Irresistible	Robert Palmer	Robert Palmer	
2849	Desire	U2	U2	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2850	Blues For Salvador	Carlos Santana	Carlos Santana	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carlos%2BSantana/Carlos%2520Santana_1_1_1578385313.jpg?itok=ocw96QZu
2851	Crest Of A Knave	Jethro Tull	Jethro Tull	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jethro%2BTull/Jethro%2520Tull_1_1_1575368175.jpg?itok=wfG234Jx
2852	Introducing The Hardline According To Terence Trent D'arby	Terence Trent D'arby	Terence Trent D'arby	
2853	Love Overboard	Gladys Knight & The Pips	Gladys Knight & The Pips	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gladys%2BKnight/Gladys%2520Knight_1_1_1575359715.jpg?itok=5ulEHeck
2854	Light Years	Chick Corea	Chick Corea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
2855	Parents Just Don't Understand	D.J. Jazzy Jeff & The Fresh Prince	D.J. Jazzy Jeff & The Fresh Prince	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Will%2BSmith/Will%2520Smith_1_1_1581552180.jpg?itok=ZsgRG6eK
2856	Folksongs For A Nuclear Village	Shadowfax	Shadowfax	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Shadowfax/SHADOWFAX_1_1_1581552291.jpg?itok=lj_pJS09
2857	Politics	Yellowjackets	Yellowjackets	
2858	Look What I Got!	Betty Carter	Betty Carter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Betty%2BCarter/Betty%2520Carter_1_1_1581558684.jpg?itok=BHHkZNtr
2859	Spread Love	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2860	Don't Try This At Home	Michael Brecker, soloist	Michael Brecker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrecker/Michael%2520Brecker_1_1_1581612049.jpg?itok=3EO45f-k
2861	Blues For Coltrane - A Tribute To John Coltrane	David Murray, McCoy Tyner, Pharoah Sanders, Cecil McBee & Roy Haynes	David Murray, McCoy Tyner, Pharoah Sanders, Cecil McBee & Roy Haynes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BMurray/David%2520Murray_1_1_1575370867.jpg?itok=qaTicR7u
2862	Bud & Bird	Gil Evans & The Monday Night Orchestra	Gil Evans & The Monday Night Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gil%2BEvans/Gil%2520Evans_1_1_1581557109.jpg?itok=B_HhGnzt
2863	Hold Me	K.T. Oslin	K.T. Oslin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/K.T.%2BOslin/K.T.%2520Oslin_1_1_1581628553.jpg?itok=J50yzazW
2864	Old 8x10	Randy Travis	Randy Travis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BTravis/Randy%2520Travis_1_1_1575366507.jpg?itok=U4bp_0pX
2865	Give A Little Love	The Judds	The Judds	
2866	Crying	Roy Orbison & k.d. lang	Roy Orbison & k.d. lang	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roy%2BOrbison/Roy%2520Orbison_1_1_1581553684.jpg?itok=RAMZ0j9P
2867	Sugarfoot Rag	Asleep At The Wheel	Asleep At The Wheel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2868	Southern Flavor	Bill Monroe	Bill Monroe	
2869	Lead Me On	Amy Grant	Amy Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
2870	Christmas	Larnelle Harris	Larnelle Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larnelle%2BHarris/Larnelle%2520Harris_1_1_1581611562.jpg?itok=0gxcT6Qs
2871	The Winans Live At Carnegie Hall	The Winans	The Winans	
2872	One Lord, One Faith, One Baptism	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
2873	Abundant Life	Bebe Winans	Bebe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/BeBe%2BWinans/BeBe%2520Winans_1_1_1581552052.jpg?itok=7II9YYOc
2874	Take 6	Take 6	Take 6	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Take%2B6/Take%25206_1_1_1578515998.jpg?itok=3sD4ZLV8
2875	Roberto Carlos	Roberto Carlos	Roberto Carlos	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roberto%2BCarlos/Roberto%2520Carlos_1_1_1588264683.jpg?itok=Sgmomt2T
2876	Antecedente	Rubén Blades	Rubén Blades	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
2877	Canciones De Mi Padre	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
2878	Hidden Charms	Willie Dixon	Willie Dixon	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BDixon/Willie%2520Dixon_1_1_1597166233.jpg?itok=pPm5UTwZ
2879	Don't Be Afraid Of The Dark	The Robert Cray Band	The Robert Cray Band	
2880	Folkways -- A Vision Shared: A Tribute To Woody Guthrie & Leadbelly	(Various Artists)	(Various Artists)	
2881	Born To Polka	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2882	Conscious Party	Ziggy Marley & The Melody Makers	Ziggy Marley & The Melody Makers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ziggy%2BMarley/Ziggy%2520Marley_1_1_1578385064.jpg?itok=B83Wyv27
2883	Pecos Bill	Robin Williams & Ry Cooder	Robin Williams & Ry Cooder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ry%2BCooder/Ry%2520Cooder_1_1_1597165966.jpg?itok=lh9JRMfR
2884	Good Morning, Vietnam	Robin Williams	Robin Williams	
2885	Speech By Rev. Jesse Jackson	Jesse Jackson	Jesse Jackson	
2886	Into The Woods	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Jay David Saks, producer (Various Artists)	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Jay David Saks, producer (Various Artists)	
2887	The Theme From LA Law	Mike Post, composer (Mike Post)	Mike Post, composer (Mike Post)	
2888	The Last Emperor	David Byrne, Ryuichi Sakamoto & Cong Su, composers (David Byrne, Cong Su & Ryuichi Sakamoto)	David Byrne, Ryuichi Sakamoto & Cong Su, composers (David Byrne, Cong Su & Ryuichi Sakamoto)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BByrne/David%2520Byrne_1_1_1581551887.jpg?itok=HTe0d0jT
2889	Two Hearts (From Buster)	Phil Collins & Lamont Dozier, songwriters (Phil Collins)	Phil Collins & Lamont Dozier, songwriters (Phil Collins)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BCollins/Phil%2520Collins_1_1_1596706545.jpg?itok=MQR7SHdv
2890	Where The Streets Have No Name	U2	Meiert Avis, video director; Ben Dossett & Michael Hamlyn, video producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2891	I'm Fat	Weird Al Yankovic	Jay Levey, video director; Susan Zwerman, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/weird_al_yankovic_spotlight_510334176.png?itok=u7SwDHr0
2892	Memos From Paradise	Roger Kellaway, arranger (Eddie Daniels)	Roger Kellaway, arranger (Eddie Daniels)	
2893	No One Is Alone	Jonathan Tunick, arranger (Cleo Laine)	Jonathan Tunick, arranger (Cleo Laine)	
2894	Tired Of Runnin'	Bill Johnson, art director (O'Kanes)	Bill Johnson, art director (O'Kanes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BJohnson/Bill%2520Johnson_1_1_1581561675.jpg?itok=y3TtPo87
2895	Crossroads	Anthony DeCurtis, album notes writer (Eric Clapton)	Anthony DeCurtis, album notes writer (Eric Clapton)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anthony%2BDeCurtis/Anthony%2520DeCurtis_1_1_1597171022.jpg?itok=lLKczXiu
2896	Roll With It	Tom Lord-Alge, engineer (Steve Winwood)	Tom Lord-Alge, engineer (Steve Winwood)	
2897	Neil Dorfsman	Neil Dorfsman		
2898	Verdi: Requiem & Operatic Choruses	Robert Shaw, artist; Robert Woods, producer	Robert Shaw, artist; Robert Woods, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/robert_woods_spotlight_2240326.png?itok=L6ELbWWF
2899	Rorem: String Symphony; Sunday Morning; Eagles	Louis Lane & Robert Shaw, conductors (Atlanta Symphony Orchestra)	Louis Lane & Robert Shaw, conductors (Atlanta Symphony Orchestra)	
2900	Mozart: Piano Concerto No. 23	Vladimir Horowitz, artist (La Scala Opera Orchestra)	Vladimir Horowitz, artist (La Scala Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
2901	Albeniz: Iberia, Navarra, Suite Espagnola	Alicia De Larrocha, artist	Alicia De Larrocha, artist	
2902	Bartók: Sonata For Two Pianos & Percussion	David Corkhill, Evelyn Glennie, Murray Perahia & Georg Solti, artists	David Corkhill, Evelyn Glennie, Murray Perahia & Georg Solti, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Murray%2BPerahia/Murray%2520Perahia_1_1_1576371919.jpg?itok=GgJEmT9S
2903	Luciano Pavarotti In Concert	(Symphony Orchestra Of Amelia Romangna)	(Symphony Orchestra Of Amelia Romangna)	
2904	Adams: Nixon In China	John Adams, composer	John Adams, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/john_adams_082520.png?itok=QtpmoLJW
2905	Graceland	Paul Simon	Paul Simon, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BSimon/Paul%2520Simon_1_1_1578385319.jpg?itok=H2xb3gsd
2906	The Joshua Tree	U2	Brian Eno & Daniel Lanois, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/U2/U2_1_1_1578385236.jpg?itok=rQVhxxhL
2907	Somewhere Out There	James Horner, Barry Mann & Cynthia Weil, songwriters (Linda Ronstadt & James Ingram)	James Horner, Barry Mann & Cynthia Weil, songwriters (Linda Ronstadt & James Ingram)	
2908	Jody Watley	Jody Watley		
2909	I Wanna Dance With Somebody (Who Loves Me)	Whitney Houston	Whitney Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whitney%2BHouston/Whitney%2520Houston_1_1_1594980040.jpg?itok=LS4iD1jw
2910	Bring On The Night	Sting	Sting	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
2911	(I've Had) The Time Of My Life	Jennifer Warnes & Bill Medley	Jennifer Warnes & Bill Medley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BWarnes/Jennifer%2520Warnes_1_1_1581560713.jpg?itok=AtFv-Vup
2912	Minute By Minute	Larry Carlton	Larry Carlton	
2913	Yusef Lateef's Little Symphony	Yusef Lateef	Yusef Lateef	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yusef%2BLateef/Yusef%2520Lateef_1_1_1581628510.jpg?itok=8MLrHlg_
2914	Tunnel Of Love	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
2915	Jazz From Hell	Frank Zappa	Frank Zappa	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BZappa/Frank%2520Zappa_1_1_1575363198.jpg?itok=PC2M2u_N
2916	Aretha	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
2917	Just To See Her	Smokey Robinson	Smokey Robinson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Smokey%2BRobinson/Smokey%2520Robinson_1_1_1578385233.jpg?itok=8pWHNsMo
2918	I Knew You Were Waiting (For Me)	Aretha Franklin & George Michael	Aretha Franklin & George Michael	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
2919	Chicago Song	David Sanborn	David Sanborn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
2920	Lean On Me	Bill Withers, songwriter (Club Nouveau)	Bill Withers, songwriter (Club Nouveau)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BWithers/Bill%2520Withers_1_1_1575364519.jpg?itok=uzujWDSf
2921	Still Life (Talking)	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
2922	Diane Schuur & The Count Basie Orchestra	Diane Schuur	Diane Schuur	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Diane%2BSchuur/Diane%2520Schuur_1_1_1581554259.jpg?itok=Y0j76ZRd
2923	What Is This Thing Called Love	Bobby McFerrin	Bobby McFerrin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BMcFerrin/Bobby%2520McFerrin_1_1_1575365223.jpg?itok=KTGGWtEl
2924	The Other Side Of Round Midnight	Dexter Gordon, soloist	Dexter Gordon, soloist	
2925	Marsalis Standard Time - Volume I	Wynton Marsalis	Wynton Marsalis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
2926	Digital Duke	Mercer Ellington	Mercer Ellington	
2927	80's Ladies	K.T. Oslin	K.T. Oslin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/K.T.%2BOslin/K.T.%2520Oslin_1_1_1581628553.jpg?itok=J50yzazW
2928	Always & Forever	Randy Travis	Randy Travis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BTravis/Randy%2520Travis_1_1_1575366507.jpg?itok=U4bp_0pX
2929	Trio	Dolly Parton, Linda Ronstadt & Emmylou Harris	Dolly Parton, Linda Ronstadt & Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dolly%2BParton/Dolly%2520Parton_1_1_1581552316.jpg?itok=1Iad2upT
2930	Make No Mistake, She's Mine	Ronnie Milsap & Kenny Rogers	Ronnie Milsap & Kenny Rogers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
2931	String Of Pars	Asleep At The Wheel	Asleep At The Wheel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
2932	Forever And Ever, Amen	Paul Overstreet & Don Schlitz, songwriters (Randy Travis)	Paul Overstreet & Don Schlitz, songwriters (Randy Travis)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BOverstreet/Paul%2520Overstreet_1_1_1580750765.jpg?itok=rBn2rqFU
2933	I Believe In You	Deniece Williams	Deniece Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deniece%2BWilliams/Deniece%2520Williams_1_1_1582724129.jpg?itok=PMHjDT_U
2934	The Father Hath Provided	Larnelle Harris	Larnelle Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larnelle%2BHarris/Larnelle%2520Harris_1_1_1581611562.jpg?itok=0gxcT6Qs
2935	Crack The Sky	Mylon LeFevre & Broken Heart	Mylon LeFevre & Broken Heart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mylon%2BLeFevre/Mylon%2520LeFevre_1_1_1596119672.jpg?itok=6j777V0O
2936	For Always	CeCe Winans	CeCe Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/CeCe%2BWinans/CeCe%2520Winans_1_1_1581629168.jpg?itok=nuNQyGOJ
2937	Everything's Gonna Be Alright	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
2938	Ain't No Need To Worry	Anita Baker & The Winans	Anita Baker & The Winans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anita%2BBaker/Anita%2520Baker_1_1_1597743890.jpg?itok=FUWd9QJc
2939	Un Hombre Solo	Julio Iglesias	Julio Iglesias	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julio%2BIglesias/Julio%2520Iglesias_1_1_1597243733.jpg?itok=A3B2n5nH
2940	La Verdad - The Truth	Eddie Palmieri	Eddie Palmieri	
2941	Gracias! America Sin Fronteras	Los Tigres Del Norte	Los Tigres Del Norte	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BTigres%2BDel%2BNorte/Los%2520Tigres%2520del%2520Norte_1_1_1597052764.jpg?itok=xZ2kx4C0
2942	Houseparty New Orleans Style	Professor Longhair	Professor Longhair	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Professor%2BLonghair/Professor%2520Longhair_1_1_1597164919.jpg?itok=pqnh9tL1
2943	Strong Persuader	The Robert Cray Band	The Robert Cray Band	
2944	Shaka Zulu	Ladysmith Black Mambazo	Ladysmith Black Mambazo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ladysmith%2BBlack%2BMambazo/Ladysmith%2520Black%2520Mambazo_1_1_1585147865.jpg?itok=GRzbQUPR
2945	Unfinished Business	Steve Goodman	Steve Goodman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BGoodman/Steve%2520Goodman_1_1_1581551713.jpg?itok=n5F3B_wZ
2946	A Polka Just For Me	Jimmy Sturr	Jimmy Sturr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
2947	No Nuclear War	Peter Tosh	Peter Tosh	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BTosh/Peter%2520Tosh_1_1_1597220933.jpg?itok=FXgptQht
2948	The Elephant's Child	Bobby McFerrin & Jack Nicholson	Bobby McFerrin & Jack Nicholson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BMcFerrin/Bobby%2520McFerrin_1_1_1575365223.jpg?itok=KTGGWtEl
2949	A Night At The Met	Robin Williams	Robin Williams	
2950	Lake Wobegon Days	Garrison Keillor	Garrison Keillor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Garrison%2BKeillor/Garrison%2520Keillor_1_1_1581557704.jpg?itok=hdcnb7N-
2951	Les Miserables	Claude-Michel Schönberg, composer; Alain Boublil & Herbert Kretzmer, lyricists; Alain Boublil & Claude-Michel Schönberg, producers (Original Broadway Cast)	Claude-Michel Schönberg, composer; Alain Boublil & Herbert Kretzmer, lyricists; Alain Boublil & Claude-Michel Schönberg, producers (Original Broadway Cast)	
2952	Call Sheet Blues	Ron Carter, Herbie Hancock, Billy Higgins & Wayne Shorter, composers (Dexter Gordon)	Ron Carter, Herbie Hancock, Billy Higgins & Wayne Shorter, composers (Dexter Gordon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ron%2BCarter/Ron%2520Carter_1_1_1581561992.jpg?itok=HiXjrRXC
2953	The Untouchables	Ennio Morricone, composer (Ennio Morricone)	Ennio Morricone, composer (Ennio Morricone)	
2954	Somewhere Out There (From An American Tail)	James Horner, Barry Mann & Cynthia Weil, songwriters (Linda Ronstadt & James Ingram)	James Horner, Barry Mann & Cynthia Weil, songwriters (Linda Ronstadt & James Ingram)	
2955	The Prince's Trust All-Star Rock Concert	(Various Artists)	Anthony Eaton, video producer	
2956	Land Of Confusion	Genesis	John Lloyd & Jim Yukich, video directors; Jon Blair, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Genesis/Genesis_1_1_1588264683.jpg?itok=9PrwEt8k
2957	Take The "A" Train	Bill Holman, arranger (The Tonight Show Band With Doc Severinsen)	Bill Holman, arranger (The Tonight Show Band With Doc Severinsen)	
2958	Deedles' Blues	Frank Foster, arranger (Diane Schuur & The Count Basie Orchestra)	Frank Foster, arranger (Diane Schuur & The Count Basie Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BFoster/Frank%2520Foster_1_1_1596101735.jpg?itok=UOyMLU5c
2959	King's Record Shop	Bill Johnson, art director (Rosanne Cash)	Bill Johnson, art director (Rosanne Cash)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BJohnson/Bill%2520Johnson_1_1_1581561675.jpg?itok=y3TtPo87
2960	Thelonious Monk - The Complete Riverside Recordings	Orrin Keepnews, album notes writer (Thelonious Monk)	Orrin Keepnews, album notes writer (Thelonious Monk)	
2961	Bad	Humberto Gatica & Bruce Swedien, engineers (Michael Jackson)	Humberto Gatica & Bruce Swedien, engineers (Michael Jackson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSwedien/Bruce%2520Swedien_1_1_1581617626.jpg?itok=FVbai9Dl
2962	Narada Michael Walden	Narada Michael Walden		
2963	Horowitz In Moscow	Vladimir Horowitz, artist; Thomas Frost, producer	Vladimir Horowitz, artist; Thomas Frost, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
2964	Beethoven: Symphony No. 9 In D Minor	Georg Solti, conductor (Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
2965	R. Strauss: Ariadne Auf Naxos	Agnes Baltsa, Kathleen Battle, Gary Lakes, Hermann Prey & Anna Tomowa-Sintow; James Levine, conductor; Cord Garben, producer (Vienna Philharmonic Orchestra)	Agnes Baltsa, Kathleen Battle, Gary Lakes, Hermann Prey & Anna Tomowa-Sintow; James Levine, conductor; Cord Garben, producer (Vienna Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kathleen%2BBattle/Kathleen%2520Battle_1_1_1581633027.jpg?itok=TzaAQd4j
2966	Hindemith: When Lilacs Last In The Dooryard Bloom'd	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	Robert Shaw, conductor (Atlanta Symphony Chorus; Atlanta Symphony Orchestra)	
2967	Mozart: Violin Concertos Nos. 2 And 4	Itzhak Perlman, artist (Vienna Philharmonic)	Itzhak Perlman, artist (Vienna Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
2968	Beethoven: The Complete Piano Trios	Vladimir Ashkenazy, Lynn Harrell & Itzhak Perlman, artists	Vladimir Ashkenazy, Lynn Harrell & Itzhak Perlman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
2969	Kathleen Battle - Salzburg Recital	Kathleen Battle - Salzburg Recital		
2970	Penderecki: Cello Concerto No. 2	Krzysztof Penderecki, composer	Krzysztof Penderecki, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Krzysztof%2BPenderecki/Krzysztof%2520Penderecki_1_1_1581629036.jpg?itok=X1ub6NJB
2971	Faure: Requiem/Durufle: Requiem	Jack Renner, engineer (Robert Shaw, conductor)	Jack Renner, engineer (Robert Shaw, conductor)	
2972	Higher Love	Steve Winwood	Russ Titelman & Steve Winwood, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BWinwood/Steve%2520Winwood_1_1_1596799256.jpg?itok=Xc1PcPBM
2973	That's What Friends Are For	Burt Bacharach & Carole Bayer Sager, songwriters (Dionne Warwick, Elton John, Gladys Knight & Stevie Wonder)	Burt Bacharach & Carole Bayer Sager, songwriters (Dionne Warwick, Elton John, Gladys Knight & Stevie Wonder)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burt%2BBacharach/Burt%2520Bacharach_1_1_1591113039.jpg?itok=N0i73S23
2974	Bruce Hornsby & The Range	Bruce Hornsby & The Range		
2975	The Broadway Album	Barbra Streisand	Barbra Streisand	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
2976	Top Gun Anthem	Harold Faltermeyer & Steve Stevens	Harold Faltermeyer & Steve Stevens	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BStevens/Steve%2520Stevens_1_1_1581559647.jpg?itok=WH118hpQ
2977	Down To The Moon	Andreas Vollenweider	Andreas Vollenweider	
2978	Back Where You Started	Tina Turner	Tina Turner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tina%2BTurner/Tina%2520Turner_1_1_1579278403.jpg?itok=vJ-mW-L4
2979	Addicted To Love	Robert Palmer	Robert Palmer	
2980	Missionary Man	The Eurythmics	The Eurythmics	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eurythmics/Eurythmics_1_1_1597156143.jpg?itok=xVlfi4ps
2981	Peter Gunn	The Art Of Noise Featuring Duane Eddy	The Art Of Noise Featuring Duane Eddy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Art%2BOf%2BNoise/Art%2520Of%2520Noise_1_1_1575368772.jpg?itok=9wjiwvGW
2982	Living In America	James Brown	James Brown	https://www.grammy.com/sites/com/files/styles/artist_circle/public/james_brown_1x1_medium1.jpg?itok=eVkLpL3V
2983	Kiss	Prince & The Revolution	Prince & The Revolution	https://www.grammy.com/sites/com/files/styles/artist_circle/public/prince_042020_0.jpg?itok=eQ9ByZQU
2984	And You Know That	Yellowjackets	Yellowjackets	
2985	Sweet Love	Anita Baker, Gary Bias & Louis A. Johnson, songwriters (Anita Baker)	Anita Baker, Gary Bias & Louis A. Johnson, songwriters (Anita Baker)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anita%2BBaker/Anita%2520Baker_1_1_1597743890.jpg?itok=FUWd9QJc
2986	Double Vision	David Sanborn & Bob James	David Sanborn & Bob James	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
2987	Timeless	Diane Schuur	Diane Schuur	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Diane%2BSchuur/Diane%2520Schuur_1_1_1581554259.jpg?itok=Y0j76ZRd
2988	Free Fall	2+2 Plus	2+2 Plus	
2989	Tutu	Miles Davis, soloist	Miles Davis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
2990	J Mood	Wynton Marsalis	Wynton Marsalis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
2991	The Tonight Show Band With Doc Severinsen	The Tonight Show Band With Doc Severinsen	The Tonight Show Band With Doc Severinsen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BSeverinsen/Doc%2520Severinsen_1_1_1597163757.jpg?itok=ysK4Wj_7
2992	Whoever's In New England	Reba McEntire	Reba McEntire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Reba%2BMcEntire/Reba%2520McEntire_1_1_1578387350.jpg?itok=UEMLeH_f
2993	Lost In The Fifties Tonight	Ronnie Milsap	Ronnie Milsap	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
2994	Grandpa (Tell Me 'Bout The Good Old Days)	The Judds	The Judds	
2995	Raisin' The Dickins	Ricky Skaggs	Ricky Skaggs	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
2996	Morning Like This	Sandi Patti	Sandi Patti	
2997	Triumph	Philip Bailey	Philip Bailey	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Philip%2BBailey/Philip%2520Bailey_1_1_1581618209.jpg?itok=YQxvaHYO
2998	They Say	Sandi Patti & Deniece Williams	Sandi Patti & Deniece Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deniece%2BWilliams/Deniece%2520Williams_1_1_1582724129.jpg?itok=PMHjDT_U
2999	I Surrender All	Deniece Williams	Deniece Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Deniece%2BWilliams/Deniece%2520Williams_1_1_1582724129.jpg?itok=PMHjDT_U
3000	Going Away	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
3001	Let My People Go	The Winans	The Winans	
3002	Le Lo Lai	Jose Feliciano	Jose Feliciano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BFeliciano/Jos%25C3%25A9%2520Feliciano_1_1_1581625803.jpg?itok=xqdsfMbW
3003	Escenas	Rubén Blades	Rubén Blades	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rub%25C3%25A9n%2BBlades/Rub%25C3%25A9n%2520Blades_1_1_1596119391.jpg?itok=gbBU_jpt
3004	Ay Te Dejo En San Antonio	Flaco Jimenez	Flaco Jimenez	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Flaco%2BJimenez/Flaco%2520Jimenez_1_1_1581554695.jpg?itok=bJ3lyzIw
3005	Showdown!	Robert Cray, Albert Collins & Johnny Copeland	Robert Cray, Albert Collins & Johnny Copeland	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Robert%2BCray/Robert%2520Cray_1_1_1576349647.jpg?itok=oN1m_QUH
3006	Riding The Midnight Train	Doc Watson	Doc Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
3007	Tribute To Steve Goodman	Al Bunetta, Dan Einstein & Hank Neuberger, producers; (Arlo Guthrie, John Hartford, Richie Havens, Bonnie Koloc, Nitty Gritty Dirt Band, John Prine and Others)	Al Bunetta, Dan Einstein & Hank Neuberger, producers; (Arlo Guthrie, John Hartford, Richie Havens, Bonnie Koloc, Nitty Gritty Dirt Band, John Prine and Others)	
3008	Another Polka Celebration	Eddie Blazonczyk's Versatones	Eddie Blazonczyk's Versatones	
3009	I Remember Warsaw	Jimmy Sturr & His Orchestra	Jimmy Sturr & His Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BSturr/Jimmy%2520Sturr_1_1_1597168389.jpg?itok=bCBNVLi2
3010	Babylon The Bandit	Steel Pulse	Steel Pulse	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steel%2BPulse/Steel%2520Pulse_1_1_1580335395.jpg?itok=Hn60-Yp1
3011	The Alphabet	(The Sesame Street Muppets)	(The Sesame Street Muppets)	
3012	Those Of You With Or Without Children, You'll Understand	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3013	Interviews From The Class Of '55 Recording Sessions	Johnny Cash, Carl Perkins, Jerry Lee Lewis, Roy Orbison, Sam Phillips, Rick Nelson & Chips Moman	Johnny Cash, Carl Perkins, Jerry Lee Lewis, Roy Orbison, Sam Phillips, Rick Nelson & Chips Moman	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3014	Follies In Concert	Thomas Z. Shepard, producer (Original 1986 Cast)	Thomas Z. Shepard, producer (Original 1986 Cast)	
3015	Out Of Africa	John Barry, composer (John Barry)	John Barry, composer (John Barry)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BBarry/John%2520Barry_1_1_1597166253.jpg?itok=9rE8j65y
3016	Dire Straits - Brothers In Arms	Dire Straits	Dire Straits	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dire%2BStraits/Dire%2520Straits_1_1_1575366346.jpg?itok=B-6vmT26
3017	Suite Memories	Pat Williams, arranger (Bill Watrous & Patrick Williams)	Pat Williams, arranger (Bill Watrous & Patrick Williams)	
3018	Somewhere	David Foster, arranger (Barbra Streisand)	David Foster, arranger (Barbra Streisand)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFoster/David%2520Foster_1_1_1578385531.jpg?itok=qKmTOWPh
3019	The Voice - The Columbia Years 1943-1952	Frank Conroy, Gary Giddins, Stephen Holden, Murray Kempton, Andrew Sarris, Jonathan Schwartz & Wilfrid Sheed, album notes writers (Frank Sinatra)	Frank Conroy, Gary Giddins, Stephen Holden, Murray Kempton, Andrew Sarris, Jonathan Schwartz & Wilfrid Sheed, album notes writers (Frank Sinatra)	
3020	Atlantic Rhythm And Blues 1947-1974, Vols. 1-7	(Brook Benton, Ray Charles, The Coasters, The Drifters, Roberta Flack, Aretha Franklin, Otis Redding & Others)	(Brook Benton, Ray Charles, The Coasters, The Drifters, Roberta Flack, Aretha Franklin, Otis Redding & Others)	
3021	Back In The High Life	Jason Corsaro & Tom Lord-Alge, engineers (Steve Winwood)	Jason Corsaro & Tom Lord-Alge, engineers (Steve Winwood)	
3022	Jimmy Jam & Terry Lewis	Jimmy Jam & Terry Lewis		
3023	Horowitz - The Studio Recordings, New York 1985	Vladimir Horowitz, artist; Thomas Frost, producer	Vladimir Horowitz, artist; Thomas Frost, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3024	Liszt: A Faust Symphony	Georg Solti, conductor (Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3025	Beethoven: Cello And Piano Sonata No. 4 In C & Variations	Emanuel Ax & Yo-Yo Ma, artists	Emanuel Ax & Yo-Yo Ma, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
3026	Mozart: Kathleen Battle Sings Mozart	(Andre Previn; Royal Philharmonic Orchestra)	(Andre Previn; Royal Philharmonic Orchestra)	
3027	Lutoslawski: Symphony No. 3	Witold Lutoslawski, composer	Witold Lutoslawski, composer	
3028	Thomas Frost	Thomas Frost		
3029	We Are The World	USA For Africa (Various Artists)	Quincy Jones, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3030	No Jacket Required	Phil Collins	Phil Collins & Hugh Padgham, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BCollins/Phil%2520Collins_1_1_1596706545.jpg?itok=MQR7SHdv
3031	Sade	Sade		
3032	Saving All My Love For You	Whitney Houston	Whitney Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whitney%2BHouston/Whitney%2520Houston_1_1_1594980040.jpg?itok=LS4iD1jw
3033	Miami Vice Theme	Jan Hammer	Jan Hammer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jan%2BHammer/Jan%2520Hammer_1_1_1581558479.jpg?itok=ZAwxDJYy
3034	One Of The Living	Tina Turner	Tina Turner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tina%2BTurner/Tina%2520Turner_1_1_1579278403.jpg?itok=vJ-mW-L4
3035	The Boys Of Summer	Don Henley	Don Henley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BHenley/Don%2520Henley_1_1_1591112918.jpg?itok=nM9J49U1
3036	Money For Nothing	Dire Straits	Dire Straits	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dire%2BStraits/Dire%2520Straits_1_1_1575366346.jpg?itok=B-6vmT26
3037	Escape	Jeff Beck	Jeff Beck	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeff%2BBeck/Jeff%2520Beck_1_1_1578385702.jpg?itok=7lpF3tjO
3038	Freeway Of Love	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3039	In Square Circle	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3040	Nightshift	Commodores	Commodores	
3041	Musician	Ernie Watts	Ernie Watts	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ernie%2BWatts/Ernie%2520Watts_1_1_1581556994.jpg?itok=Tvv5s6Lv
3042	Straight To The Heart	David Sanborn	David Sanborn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
3043	Cleo At Carnegie - The 10th Anniversary Concert	Cleo Laine	Cleo Laine	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cleo%2BLaine/Cleo%2520Laine_1_1_1597164372.jpg?itok=c9WdYh5y
3044	Another Night In Tunisia	Bobby McFerrin & Jon Hendricks	Bobby McFerrin & Jon Hendricks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BMcFerrin/Bobby%2520McFerrin_1_1_1575365223.jpg?itok=KTGGWtEl
3045	Vocalese	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
3046	Black Codes From The Underground	Wynton Marsalis, soloist	Wynton Marsalis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
3047	The Cotton Club - Original Motion Picture Soundtrack	John Barry & Bob Wilber	John Barry & Bob Wilber	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BBarry/John%2520Barry_1_1_1597166253.jpg?itok=9rE8j65y
3048	I Don't Know Why You Don't Want Me	Rosanne Cash	Rosanne Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rosanne%2BCash/Rosanne%2520Cash_1_1_1588845547.jpg?itok=mmORB3u0
3049	Lost In The Fifties Tonight (In The Still Of The Night)	Ronnie Milsap	Ronnie Milsap	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
3050	Why Not Me	The Judds	The Judds	
3051	Cosmic Square Dance	Chet Atkins & Mark Knopfler	Chet Atkins & Mark Knopfler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3052	Highwayman	Jimmy L. Webb, songwriter (Waylon Jennings, Willie Nelson, Johnny Cash & Kris Kristofferson)	Jimmy L. Webb, songwriter (Waylon Jennings, Willie Nelson, Johnny Cash & Kris Kristofferson)	
3053	Unguarded	Amy Grant	Amy Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
3054	How Excellent Is Thy Name	Larnelle Harris	Larnelle Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larnelle%2BHarris/Larnelle%2520Harris_1_1_1581611562.jpg?itok=0gxcT6Qs
3055	I've Just Seen Jesus	Sandi Patti & Larnelle Harris	Sandi Patti & Larnelle Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larnelle%2BHarris/Larnelle%2520Harris_1_1_1581611562.jpg?itok=0gxcT6Qs
3056	Martin	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
3057	Bring Back The Days Of Yea And Nay	Marvin Winans	Marvin Winans	
3058	Tomorrow	The Winans	The Winans	
3059	Come Sunday	Jennifer Holliday	Jennifer Holliday	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHolliday/Jennifer%2520Holliday_1_1_1597168123.jpg?itok=OErMNGSa
3060	Es Facil Amar	Lani Hall	Lani Hall	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lani%2BHall/Lani%2520Hall_1_1_1581555841.jpg?itok=Yah9hGhI
3061	Mambo Diablo	Tito Puente & His Latin Ensemble	Tito Puente & His Latin Ensemble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
3062	Solito	Eddie Palmieri	Eddie Palmieri	
3063	Simplemente Mujer	Vikki Carr	Vikki Carr	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vikki%2BCarr/Vikki%2520Carr_1_1_1581615224.jpg?itok=xZnGtxrE
3064	My Guitar Sings The Blues	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
3065	My Toot Toot	Rockin' Sidney	Rockin' Sidney	
3066	70 Years Of Hits	Frank Yankovic	Frank Yankovic	
3067	Cliff Hanger	Jimmy Cliff	Jimmy Cliff	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jimmy%2BCliff/Jimmy%2520Cliff_1_1_1581553673.jpg?itok=MvguXNBH
3068	Follow That Bird - Original Motion Picture Soundtrack	(Jim Henson's Muppets & The Sesame Street Cast)	(Jim Henson's Muppets & The Sesame Street Cast)	
3069	Whoopi Goldberg - Original Broadway Show Recording	Whoopi Goldberg	Whoopi Goldberg	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Whoopi%2BGoldberg/Whoopi%2520Goldberg_1_1_1581563075.jpg?itok=153TId9O
3070	Ma Rainey's Black Bottom	(Original Broadway Cast)	(Original Broadway Cast)	
3071	We Are The World - The Video Event	USA For Africa - Various Artists	Tom Trbovich, video director; Quincy Jones, video producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3072	Huey Lewis & The News - The Heart Of Rock 'n' Roll	Huey Lewis & The News	Bruce Gowers, video director	
3073	Beverly Hills Cop	Marc Benno, Harold Faltermeyer, Keith Forsey, Micki Free, Jon Gilutin, Hawk, Howard Hewett, Bunny Hull, Howie Rice, Sharon Robinson, Dan Sembello, Sue Sheridan, Richard C. Theisen II & Allee Willis, composers (Various Artists)	Marc Benno, Harold Faltermeyer, Keith Forsey, Micki Free, Jon Gilutin, Hawk, Howard Hewett, Bunny Hull, Howie Rice, Sharon Robinson, Dan Sembello, Sue Sheridan, Richard C. Theisen II & Allee Willis, composers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Micki%2BFree/Micki%2520Free_1_1_1581554603.jpg?itok=N6RE2_Z6
3074	Early A.M. Attitude	Dave Grusin & Lee Ritenour, arrangers (Dave Grusin & Lee Ritenour)	Dave Grusin & Lee Ritenour, arrangers (Dave Grusin & Lee Ritenour)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
3075	Sam Cooke Live At The Harlem Square Club, 1963	Peter Guralnick, album notes writer (Sam Cooke)	Peter Guralnick, album notes writer (Sam Cooke)	
3076	RCA/Met - 100 Singers - 100 Years	(Various Artists)	(Various Artists)	
3077	Brothers In Arms	Neil Dorfsman, engineer (Dire Straits)	Neil Dorfsman, engineer (Dire Straits)	
3078	Phil Collins & Hugh Padgham	Phil Collins & Hugh Padgham		
3079	Faure: Pelleas Et Melisande	Robert Shaw, conductor (Atlanta Symphony Orchestra)	Robert Shaw, conductor (Atlanta Symphony Orchestra)	
3148	Beat It	Michael Jackson	Michael Jackson & Quincy Jones, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
4094	Rachmaninoff: Piano Concerto No. 3	Van Cliburn, artist (Symphony Of The Air Orchestra)	Van Cliburn, artist (Symphony Of The Air Orchestra)	
3080	Schoenberg: Moses Und Aron	Philip Langridge & Franz Mazura; Georg Solti, conductor; James Mallinson, producer (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Philip Langridge & Franz Mazura; Georg Solti, conductor; James Mallinson, producer (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Philip%2BLangridge/Philip%2520Langridge_1_1_1597165258.jpg?itok=QM5pDvY4
3081	Elgar: Cello Concerto, Op. 85/Walton: Concerto For Cello & Orch.	Yo-Yo Ma, artist (London Symphony Orchestra)	Yo-Yo Ma, artist (London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
3082	Ravel: Gaspard De La Nuit; Pavane Pour Une Infante Defunte; Valses Nobles Et Sentimentales	Vladimir Ashkenazy, artist	Vladimir Ashkenazy, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
3083	Brahms: Cello And Piano Sonatas In E Minor And F	Emanuel Ax & Yo-Yo Ma, artists	Emanuel Ax & Yo-Yo Ma, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
3084	Stravinsky: L' Histoire Du Soldat (The Soldier's Tale - Suite) - (also) - Walton: Façade (An Instrumental Suite In The Original Scoring)	Stravinsky: L' Histoire Du Soldat (The Soldier's Tale - Suite) - (also) - Walton: Façade (An Instrumental Suite In The Original Scoring)		
3085	Lloyd Webber: Requiem	Andrew Lloyd Webber, composer	Andrew Lloyd Webber, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BLloyd%2BWebber/Andrew%2520Lloyd%2520Webber_1_1_1576344772.jpg?itok=8iG6F7y8
3086	What's Love Got To Do With It	Tina Turner	Terry Britten, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tina%2BTurner/Tina%2520Turner_1_1_1579278403.jpg?itok=vJ-mW-L4
3087	Can't Slow Down	Lionel Richie	James Anthony Carmichael & Lionel Richie, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lionel%2BRichie/Lionel%2520Richie_1_1_1578384783.jpg?itok=6uFBvX0V
3088	Cyndi Lauper	Cyndi Lauper		
3089	Against All Odds (Take A Look At Me Now)	Phil Collins	Phil Collins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BCollins/Phil%2520Collins_1_1_1596706545.jpg?itok=MQR7SHdv
3090	Jump (For My Love)	The Pointer Sisters	The Pointer Sisters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pointer%2BSisters/Pointer%2520Sisters_1_1_1581553578.jpg?itok=e1wr3-UF
3091	Ghostbusters (Instrumental)	Ray Parker, Jr.	Ray Parker, Jr.	
3092	Better Be Good To Me	Tina Turner	Tina Turner	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tina%2BTurner/Tina%2520Turner_1_1_1579278403.jpg?itok=vJ-mW-L4
3093	Dancing In The Dark	Bruce Springsteen	Bruce Springsteen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bruce%2BSpringsteen/Bruce%2520Springsteen_1_1_1584095281.jpg?itok=WvtRkIAH
3094	Purple Rain - Music From The Motion Picture	Prince & The Revolution	Prince & The Revolution	https://www.grammy.com/sites/com/files/styles/artist_circle/public/prince_042020_0.jpg?itok=eQ9ByZQU
3095	Cinema	Yes	Yes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yes/Yes_1_1_1581561832.jpg?itok=2H4CvuRE
3096	I Feel For You	Chaka Khan	Chaka Khan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
3097	Caribbean Queen (No More Love On The Run)	Billy Ocean	Billy Ocean	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BOcean/Billy%2520Ocean_1_1_1575364056.jpg?itok=nYZVbrmV
3098	Yah Mo B There	James Ingram & Michael McDonald	James Ingram & Michael McDonald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BIngram/James%2520Ingram_1_1_1581553801.jpg?itok=vXb25sIT
3099	Sound System	Herbie Hancock	Herbie Hancock	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
3100	First Circle	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
3101	In My Dreams	Emmylou Harris	Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
3102	Mama He's Crazy	The Judds	The Judds	
3103	Wheel Hoss	Ricky Skaggs	Ricky Skaggs	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ricky%2BSkaggs/Ricky%2520Skaggs_1_1_1581554744.jpg?itok=URhWHJuc
3104	City Of New Orleans	Steve Goodman, songwriter (Willie Nelson)	Steve Goodman, songwriter (Willie Nelson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BGoodman/Steve%2520Goodman_1_1_1581551713.jpg?itok=n5F3B_wZ
3105	Angels	Amy Grant	Amy Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
3106	Michael W. Smith	Michael W. Smith	Michael W. Smith	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BW.%2BSmith/Michael%2520W.%2520Smith_1_1_1581371564.jpg?itok=4xsPS22I
3107	Keep The Flame Burning	Debby Boone & Phil Driscoll	Debby Boone & Phil Driscoll	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Debby%2BBoone/Debby%2520Boone_1_1_1575373918.jpg?itok=j8EIzpps
3108	Sailin'	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
3109	Always Remember	Andrae Crouch	Andrae Crouch	
3110	Sailin' On The Sea Of Your Love	Shirley Caesar & Al Green	Shirley Caesar & Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
3111	Forgive Me	Donna Summer	Donna Summer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donna%2BSummer/Donna%2520Summer_1_1_1581552222.jpg?itok=3np3vg-z
3112	Always In My Heart (Siempre En Mi Corazon)	Placido Domingo	Placido Domingo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Placido%2BDomingo/Placido%2520Domingo_1_1_1591693620.jpg?itok=lD94G-Wv
3113	Palo Pa Rumba	Eddie Palmieri	Eddie Palmieri	
3114	Me Gustas Tal Como Eres	Luis Miguel & Sheena Easton	Luis Miguel & Sheena Easton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Luis%2BMiguel/Luis%2520Miguel_1_1_1581556466.jpg?itok=yzp0imhA
3115	Blues Explosion	John Hammond, Stevie Ray Vaughan & Double Trouble, Sugar Blue, Koko Taylor & The Blues Machine, Luther "Guitar Junior" Johnson, J.B. Hutto & The New Hawks	John Hammond, Stevie Ray Vaughan & Double Trouble, Sugar Blue, Koko Taylor & The Blues Machine, Luther "Guitar Junior" Johnson, J.B. Hutto & The New Hawks	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BHammond/John%2520Hammond_1_1_1575372183.jpg?itok=bfXMydM4
3116	Elizabeth Cotten Live!	Elizabeth Cotten	Elizabeth Cotten	
3117	Anthem	Black Uhuru	Black Uhuru	
3118	Where The Sidewalk Ends	Shel Silverstein	Shel Silverstein	
3119	Eat It	Weird Al Yankovic	Weird Al Yankovic	https://www.grammy.com/sites/com/files/styles/artist_circle/public/weird_al_yankovic_spotlight_510334176.png?itok=u7SwDHr0
3120	The Words Of Gandhi	Ben Kingsley	Ben Kingsley	
3121	Olympic Fanfare & Theme	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3122	The Natural	Randy Newman, composer (Randy Newman)	Randy Newman, composer (Randy Newman)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Randy%2BNewman/Randy%2520Newman_1_1_1578414625.jpg?itok=lN9Qxxrp
3123	Purple Rain	Lisa Coleman, Wendy Melvoin, John L. Nelson & Prince, composers (Prince & The Revolution)	Lisa Coleman, Wendy Melvoin, John L. Nelson & Prince, composers (Prince & The Revolution)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/prince_042020_0.jpg?itok=eQ9ByZQU
3124	Sunday In The Park With George	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Thomas Z. Shepard, producer (Original Cast Including Bernadette Peters, Mandy Patinkin & Others)	Stephen Sondheim, composer; Stephen Sondheim, lyricist; Thomas Z. Shepard, producer (Original Cast Including Bernadette Peters, Mandy Patinkin & Others)	
3125	David Bowie	David Bowie	David Bowie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BBowie/David%2520Bowie_1_1_1581552306.jpg?itok=zzZOO1tP
3126	Making Michael Jackson's Thriller	Michael Jackson	Michael Jackson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
3127	Nothin' But The Blues	Joe Williams	Joe Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BWilliams/Joe%2520Williams_1_1_1581658605.jpg?itok=20ieu03a
3128	Hot House Flowers	Wynton Marsalis, soloist	Wynton Marsalis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
3129	New York Scene	Art Blakey & The Jazz Messengers	Art Blakey & The Jazz Messengers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Art%2BBlakey/Art%2520Blakey_1_1_1581634263.jpg?itok=hrvM60qP
3130	88 Basie Street	Count Basie	Count Basie	
3131	Grace (Gymnastics Theme)	Quincy Jones & Jeremy Lubbock, arrangers (Quincy Jones)	Quincy Jones & Jeremy Lubbock, arrangers (Quincy Jones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3132	Hard Habit To Break	David Foster & Jeremy Lubbock, arrangers (Chicago)	David Foster & Jeremy Lubbock, arrangers (Chicago)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFoster/David%2520Foster_1_1_1578385531.jpg?itok=qKmTOWPh
3133	Automatic	Pointer Sisters (Anita Pointer, Ruth Pointer & June Pointer-Whitmore), arrangers (The Pointer Sisters)	Pointer Sisters (Anita Pointer, Ruth Pointer & June Pointer-Whitmore), arrangers (The Pointer Sisters)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pointer%2BSisters/Pointer%2520Sisters_1_1_1581553578.jpg?itok=e1wr3-UF
3134	She's So Unusual	Janet Perr, art director (Cyndi Lauper)	Janet Perr, art director (Cyndi Lauper)	
3135	Big Band Jazz	Gunther Schuller & Martin Williams, album notes writers (Paul Whiteman, Fletcher Henderson, Chick Webb, Tommy Dorsey, Count Basie, Benny Goodman & Others)	Gunther Schuller & Martin Williams, album notes writers (Paul Whiteman, Fletcher Henderson, Chick Webb, Tommy Dorsey, Count Basie, Benny Goodman & Others)	
3136	17	Humberto Gatica, engineer (Chicago)	Humberto Gatica, engineer (Chicago)	
3137	James Anthony Carmichael & Lionel Richie	James Anthony Carmichael & Lionel Richie		
3138	Amadeus	Neville Marriner, artist; John Strauss, producer	Neville Marriner, artist; John Strauss, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Neville%2BMarriner/Neville%2520Marriner_1_1_1597163031.jpg?itok=S02vE76M
3139	Prokofiev: Symphony No. 5 In B Flat	Leonard Slatkin, conductor (Saint Louis Symphony Orchestra)	Leonard Slatkin, conductor (Saint Louis Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BSlatkin/Leonard%2520Slatkin_1_1_1581623003.jpg?itok=g58yYZbQ
3140	Bizet: Carmen	Placido Domingo, Faith Esham, Julia Migenes & Ruggero Raimondi; Lorin Maazel, conductor; Michel Glotz, producer (Choeurs Et Maitrise De Radio France; Orchestre National De France)	Placido Domingo, Faith Esham, Julia Migenes & Ruggero Raimondi; Lorin Maazel, conductor; Michel Glotz, producer (Choeurs Et Maitrise De Radio France; Orchestre National De France)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Placido%2BDomingo/Placido%2520Domingo_1_1_1591693620.jpg?itok=lD94G-Wv
3141	Brahms: A German Requiem	James Levine, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	James Levine, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	
3142	Wynton Marsalis-Edita Gruberova-Handel, Purcell, Etc,	Wynton Marsalis, artist (English Chamber Orchestra)	Wynton Marsalis, artist (English Chamber Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
3143	Bach: The Unaccompanied Cello Suites	Yo-Yo Ma, artist	Yo-Yo Ma, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yo-Yo%2BMa/Yo-Yo%2520Ma_1_1_1581553648.jpg?itok=yLZy5PfU
3144	Beethoven: The Late String Quartets	Juilliard String Quartet (Earl Carlyss, Joel Krosnick, Robert Mann & Samuel Rhodes), artists	Juilliard String Quartet (Earl Carlyss, Joel Krosnick, Robert Mann & Samuel Rhodes), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juilliard%2BString%2BQuartet/Juilliard%2520String%2520Quartet_1_1_1575360665.jpg?itok=8v2l9Vwk
3145	Ravel: Songs Of Maurice Ravel	(Pierre Boulez; BBC Symphony Orchestra & Ensemble InterContemporain)	(Pierre Boulez; BBC Symphony Orchestra & Ensemble InterContemporain)	
3146	Barber: Antony And Cleopatra	Samuel Barber, composer	Samuel Barber, composer	
3149	Thriller	Michael Jackson	Michael Jackson & Quincy Jones, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
3150	Every Breath You Take	Sting, songwriter (The Police)	Sting, songwriter (The Police)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
3151	Culture Club	Culture Club		
3152	Flashdance - What A Feeling	Irene Cara	Irene Cara	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Irene%2BCara/Irene%2520Cara_1_1_1596101964.jpg?itok=ZyLvtRbH
3153	Being With You	George Benson	George Benson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3154	Love Is A Battlefield	Pat Benatar	Pat Benatar	
3155	Synchronicity	The Police	The Police	
3156	Brimstone And Treacle	Sting	Sting	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sting/Sting_1_1_1578385091.jpg?itok=W4VkSShX
3157	Chaka Khan	Chaka Khan	Chaka Khan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
3158	Billie Jean	Michael Jackson	Michael Jackson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
3159	Ain't Nobody	Rufus & Chaka Khan	Rufus & Chaka Khan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rufus/Rufus_1_1_1596790798.jpg?itok=FDAkq2Au
3160	Rockit	Herbie Hancock	Herbie Hancock	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbie%2BHancock/Herbie%2520Hancock_1_1_1596790289.jpg?itok=b1MAcr9T
3161	Travels	Pat Metheny Group	Pat Metheny Group	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny%2BGroup/Pat%2520Metheny%2520Group_1_1_1589915053.jpg?itok=YOJcjDH6
3162	A Little Good News	Anne Murray	Anne Murray	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne%2BMurray/Anne%2520Murray_1_1_1581558822.jpg?itok=dBGIF4ua
3163	I.O.U.	Lee Greenwood	Lee Greenwood	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lee%2BGreenwood/Lee%2520Greenwood_1_1_1581554697.jpg?itok=72f_rsKV
3164	The Closer You Get...	Alabama	Alabama	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alabama/Alabama_1_1_1584104764.jpg?itok=fgcgNsT5
3165	Fireball	The New South	The New South	
3166	Stranger In My House	Mike Reid, songwriter (Ronnie Milsap)	Mike Reid, songwriter (Ronnie Milsap)	
3167	Ageless Medley	Amy Grant	Amy Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
3168	Walls Of Glass	Russ Taff	Russ Taff	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Russ%2BTaff/Russ%2520Taff_1_1_1581562167.jpg?itok=GxwEfE2A
3169	More Than Wonderful	Sandi Patti & Larnelle Harris	Sandi Patti & Larnelle Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larnelle%2BHarris/Larnelle%2520Harris_1_1_1581611562.jpg?itok=0gxcT6Qs
3170	We Sing Praises	Sandra Crouch	Sandra Crouch	
3171	I'll Rise Again	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
3172	I'm So Glad I'm Standing Here Today	Barbara Mandrell & Bobby Jones	Barbara Mandrell & Bobby Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BJones/Bobby%2520Jones_1_1_1581629400.jpg?itok=c4Hb_S9h
3173	He's A Rebel	Donna Summer	Donna Summer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donna%2BSummer/Donna%2520Summer_1_1_1581552222.jpg?itok=3np3vg-z
3174	Me Enamore	Jose Feliciano	Jose Feliciano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BFeliciano/Jos%25C3%25A9%2520Feliciano_1_1_1581625803.jpg?itok=xqdsfMbW
3175	On Broadway	Tito Puente & His Latin Ensemble	Tito Puente & His Latin Ensemble	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
3176	Anselma	Los Lobos	Los Lobos	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Los%2BLobos/Los%2520Lobos_1_1_1575360208.jpg?itok=FEBbtgyX
3177	Blues 'N' Jazz	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
3178	I'm Here	Clifton Chenier & His Red Hot Louisiana Band	Clifton Chenier & His Red Hot Louisiana Band	
3179	E.T. The Extra-Terrestrial	Michael Jackson	Michael Jackson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
3180	Eddie Murphy: Comedian	Eddie Murphy	Eddie Murphy	
3181	Copland: A Lincoln Portrait	William Warfield	William Warfield	
3182	Love Theme From Flashdance	Giorgio Moroder, composer (Various Artists (Helen St. John))	Giorgio Moroder, composer (Various Artists (Helen St. John))	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Giorgio%2BMoroder/Giorgio%2520Moroder_1_1_1581551824.jpg?itok=fVU1G5nb
3183	Flashdance	Michael Boddicker, Irene Cara, Kim Carnes, Douglas Cotler, Keith Forsey, Richard Gilbert, Jerry Hey, Duane Hitchings, Craig Krampf, Ronald Magness, Dennis Matkosky, Giorgio Moroder, Phil Ramone, Michael Sembello & Shandi Sinnamon, composers (Various Artists)	Michael Boddicker, Irene Cara, Kim Carnes, Douglas Cotler, Keith Forsey, Richard Gilbert, Jerry Hey, Duane Hitchings, Craig Krampf, Ronald Magness, Dennis Matkosky, Giorgio Moroder, Phil Ramone, Michael Sembello & Shandi Sinnamon, composers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Irene%2BCara/Irene%2520Cara_1_1_1596101964.jpg?itok=ZyLvtRbH
3184	Cats (Complete Original Broadway Cast Recording)	Andrew Lloyd Webber, producer (Original Broadway Cast)	Andrew Lloyd Webber, producer (Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BLloyd%2BWebber/Andrew%2520Lloyd%2520Webber_1_1_1576344772.jpg?itok=8iG6F7y8
3185	Girls On Film/Hungry Like The Wolf	Duran Duran	Duran Duran	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Duran%2BDuran/Duran%2520Duran_1_1_1575363169.jpg?itok=R-x-vR8k
3186	Duran Duran	Duran Duran	Duran Duran	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Duran%2BDuran/Duran%2520Duran_1_1_1575363169.jpg?itok=R-x-vR8k
3187	The Best Is Yet To Come	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
3188	Top Drawer	Mel Tormé	Mel Tormé	
3189	Why Not!	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
3190	Think Of One	Wynton Marsalis, soloist	Wynton Marsalis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
3191	At The Vanguard	The Phil Woods Quartet	The Phil Woods Quartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BWoods/Phil%2520Woods_1_1_1581559751.jpg?itok=a7JVwQVu
3192	All In Good Time	Rob McConnell & The Boss Brass	Rob McConnell & The Boss Brass	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rob%2BMcConnell/Rob%2520McConnell_1_1_1597165181.jpg?itok=gOVB37cq
3193	Summer Sketches '82	Dave Grusin, arranger (Dave Grusin)	Dave Grusin, arranger (Dave Grusin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
3194	What's New	Nelson Riddle, arranger (Linda Ronstadt)	Nelson Riddle, arranger (Linda Ronstadt)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelson%2BRiddle/Nelson%2520Riddle_1_1_1597169423.jpg?itok=Rkhds5Dh
3195	Be Bop Medley	Chaka Khan & Arif Mardin, arrangers (Chaka Khan)	Chaka Khan & Arif Mardin, arrangers (Chaka Khan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chaka%2BKhan/Chaka%2520Khan_1_1_1598913537.jpg?itok=pEdUcxBU
3196	Speaking In Tongues	Robert Rauschenberg, art director (Talking Heads)	Robert Rauschenberg, art director (Talking Heads)	
3197	The Interplay Sessions	Orrin Keepnews, album notes writer (Bill Evans)	Orrin Keepnews, album notes writer (Bill Evans)	
3198	The Greatest Recordings Of Arturo Toscanini - Symphonies, Vol. I	(Arturo Toscanini)	(Arturo Toscanini)	
3199	Michael Jackson & Quincy Jones	Michael Jackson & Quincy Jones		
3200	Mahler: Symphony No. 9 In D	Georg Solti, artist; James Mallinson, producer	Georg Solti, artist; James Mallinson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3201	Verdi: La Traviata	Placido Domingo, Cornell MacNeil & Teresa Stratas; James Levine, conductor; Jay David Saks & Max Wilcox, producers (Metropolitan Opera Orchestra)	Placido Domingo, Cornell MacNeil & Teresa Stratas; James Levine, conductor; Jay David Saks & Max Wilcox, producers (Metropolitan Opera Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Placido%2BDomingo/Placido%2520Domingo_1_1_1591693620.jpg?itok=lD94G-Wv
3202	Haydn: The Creation	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3203	Brahms: Sonata For Cello And Piano In E Minor, Op. 38 And Sonata In F, Op. 99	Mstislav Rostropovich & Rudolf Serkin, artists	Mstislav Rostropovich & Rudolf Serkin, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mstislav%2BRostropovich/Mstislav%2520Rostropovich_1_1_1581564504.jpg?itok=8GG6U0VV
3204	Haydn: Trumpet Concerto In E Flat/L. Mozart: Trumpet  Concerto In D/Hummel: Trumpet Concerto In E Flat	Wynton Marsalis, artist (National Philharmonic Orchestra)	Wynton Marsalis, artist (National Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wynton%2BMarsalis/Wynton%2520Marsalis_1_1_1578387485.jpg?itok=92EIJpkT
3205	Beethoven: Piano Sonatas Nos. 12 & 13	Glenn Gould, artist	Glenn Gould, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glenn%2BGould/Glenn%2520Gould_1_1_1581551795.jpg?itok=K1HEBqat
3206	Leontyne Price & Marilyn Horne In Concert At The Met	(James Levine; Metropolitan Opera Orchestra)	(James Levine; Metropolitan Opera Orchestra)	
3207	Marc Aubort & Joanna Nickrenz	Marc Aubort & Joanna Nickrenz		
3208	Rosanna	Toto	Toto (Bobby Kimball, Steve Lukather, David Paich, Jeff Porcaro, Michael Porcaro & Steve Porcaro), producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toto/Toto_1_1_1581552180.jpg?itok=zeWhOeO_
3209	Toto IV	Toto	Toto (Bobby Kimball, Steve Lukather, David Paich, Jeff Porcaro, Michael Porcaro & Steve Porcaro), producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Toto/Toto_1_1_1581552180.jpg?itok=zeWhOeO_
3210	Always On My Mind	Wayne Carson, Johnny Christopher & Mark James, songwriters (Willie Nelson)	Wayne Carson, Johnny Christopher & Mark James, songwriters (Willie Nelson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mark%2BJames/Mark%2520James_1_1_1581630216.jpg?itok=hvqzhn-A
3211	Men At Work	Men At Work		
3212	You Should Hear How She Talks About You	Melissa Manchester	Melissa Manchester	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Melissa%2BManchester/Melissa%2520Manchester_1_1_1583859426.jpg?itok=W75SJrkL
3213	Truly	Lionel Richie	Lionel Richie	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lionel%2BRichie/Lionel%2520Richie_1_1_1578384783.jpg?itok=6uFBvX0V
3214	Up Where We Belong	Joe Cocker & Jennifer Warnes	Joe Cocker & Jennifer Warnes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BCocker/Joe%2520Cocker_1_1_1575373395.jpg?itok=IGkcir_W
3215	Chariots Of Fire Theme (Dance Version)	Ernie Watts	Ernie Watts	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ernie%2BWatts/Ernie%2520Watts_1_1_1581556994.jpg?itok=Tvv5s6Lv
3216	Shadows Of The Night	Pat Benatar	Pat Benatar	
3217	Hurts So Good	John Cougar Mellencamp	John Cougar Mellencamp	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BMellencamp/John%2520Mellencamp_1_1_1575371128.jpg?itok=fnDiYuUi
3218	Eye Of The Tiger	Survivor	Survivor	
3219	D.N.A.	A Flock Of Seagulls	A Flock Of Seagulls	
3220	And I Am Telling You I'm Not Going	Jennifer Holliday	Jennifer Holliday	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jennifer%2BHolliday/Jennifer%2520Holliday_1_1_1597168123.jpg?itok=OErMNGSa
3221	Sexual Healing	Marvin Gaye	Marvin Gaye	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marvin%2BGaye/Marvin%2520Gaye_1_1_1581553577.jpg?itok=8o1lBjpD
3222	Let It Whip	Dazz Band	Dazz Band	
3223	Wanna Be With You	Earth, Wind & Fire	Earth, Wind & Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Earth%252C%2BWind%2B%2526%2BFire/Earth%252C%2520Wind%2520%2526%2520Fire_1_1_1578384907.jpg?itok=v5EmyLDc
3224	Sexual Healing (Instrumental Version)	Marvin Gaye	Marvin Gaye	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marvin%2BGaye/Marvin%2520Gaye_1_1_1581553577.jpg?itok=8o1lBjpD
3225	Turn Your Love Around	Bill Champlin, Jay Graydon & Steve Lukather, songwriters (George Benson)	Bill Champlin, Jay Graydon & Steve Lukather, songwriters (George Benson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BChamplin/Bill%2520Champlin_1_1_1581554778.jpg?itok=wjpjDJUE
3226	Offramp	Pat Metheny	Pat Metheny	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BMetheny/Pat%2520Metheny_1_1_1594671562.jpg?itok=-Jjhlt_l
3227	Break It To Me Gently	Juice Newton	Juice Newton	
3228	Mountain Music	Alabama	Alabama	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Alabama/Alabama_1_1_1584104764.jpg?itok=fgcgNsT5
3229	Alabama Jubilee	Roy Clark	Roy Clark	
3230	Age To Age	Amy Grant	Amy Grant	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Amy%2BGrant/Amy%2520Grant_1_1_1581552251.jpg?itok=Ug3Q-kzB
3231	I'm Following You	Blackwood Brothers	Blackwood Brothers	
3232	Higher Plane	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
3233	Precious Lord	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
3234	He Set My Life To Music	Barbara Mandrell	Barbara Mandrell	
3235	Alright Again	Clarence "Gatemouth" Brown	Clarence "Gatemouth" Brown	
3236	Queen Ida & The Bon Temps Zydeco Band On Tour	Queen Ida	Queen Ida	
3237	Machito & His Salsa Big Band '82	Machito	Machito	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Machito/Machito_1_1_1597165143.jpg?itok=rdlEsjwa
3238	In Harmony 2	(Various Artists)	(Various Artists)	
3239	Live On The Sunset Strip	Richard Pryor	Richard Pryor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BPryor/Richard%2520Pryor_1_1_1581555156.jpg?itok=695RqheM
3240	Raiders Of The Lost Ark - The Movie On Record	(Various Artists)	(Various Artists)	
3241	Flying - Theme From E.T. The Extra-Terrestrial	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3242	Dreamgirls	Henry Krieger, composer; Tom Eyen, lyricist; David Foster, producer (Various Artists)	Henry Krieger, composer; Tom Eyen, lyricist; David Foster, producer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BFoster/David%2520Foster_1_1_1578385531.jpg?itok=qKmTOWPh
3243	Olivia Physical	Olivia Newton-John	Olivia Newton-John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Olivia%2BNewton-John/Olivia%2520Newton-John_1_1_1575370845.jpg?itok=SO4aU4ch
3244	Gershwin Live!	Sarah Vaughan	Sarah Vaughan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Sarah%2BVaughan/Sarah%2520Vaughan_1_1_1592556175.jpg?itok=WEwb95EV
3245	An Evening With George Shearing & Mel Tormé	Mel Tormé	Mel Tormé	
3246	Route 66	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
3247	We Want Miles	Miles Davis, soloist	Miles Davis, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
3248	More Live	Phil Woods Quartet	Phil Woods Quartet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BWoods/Phil%2520Woods_1_1_1581559751.jpg?itok=a7JVwQVu
3249	Warm Breeze	Count Basie	Count Basie	
3250	Flying	John Williams, arranger (John Williams)	John Williams, arranger (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3251	Get Closer	John Kosh & Ron Larson, art directors (Linda Ronstadt)	John Kosh & Ron Larson, art directors (Linda Ronstadt)	
3252	Bunny Berigan - Giants Of Jazz	John Chilton & Richard M. Sudhalter, album notes writers (Bunny Berigan)	John Chilton & Richard M. Sudhalter, album notes writers (Bunny Berigan)	
3253	The Tommy Dorsey/Frank Sinatra Sessions - Vols. 1 ,2 & 3	(Tommy Dorsey & Frank Sinatra)	(Tommy Dorsey & Frank Sinatra)	
3254	Toto	Toto		
3255	Bach: The Goldberg Variations	Glenn Gould, artist; Samuel H. Carter, producer	Glenn Gould, artist; Samuel H. Carter, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glenn%2BGould/Glenn%2520Gould_1_1_1581551795.jpg?itok=K1HEBqat
3256	Mahler: Sym. No. 7 In E Min. (Song Of The Night)	James Levine, conductor (Chicago Symphony Orchestra)	James Levine, conductor (Chicago Symphony Orchestra)	
3257	Berlioz: La Damnation De Faust	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3258	Brahms: The Sonatas For Clarinet & Piano, Op. 120	Richard Goode & Richard Stoltzman, artists	Richard Goode & Richard Stoltzman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BGoode/Richard%2520Goode_1_1_1581628770.jpg?itok=_Xhg-yl2
3259	Elgar: Violin Concerto In B Minor	Itzhak Perlman, artist (Chicago Symphony Orchestra)	Itzhak Perlman, artist (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3260	Verdi: Arias (Leontyne Price Sings Verdi)	(Zubin Mehta; Israel Philharmonic Orchestra)	(Zubin Mehta; Israel Philharmonic Orchestra)	
3261	Mahler: Symphony No. 7 In E Minor (Song Of The Night)	Paul Goodman, engineer (James Levine, conductor)	Paul Goodman, engineer (James Levine, conductor)	
3262	Bette Davis Eyes	Kim Carnes	Val Garay, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kim%2BCarnes/Kim%2520Carnes_1_1_1596100249.jpg?itok=XJ1LYIra
4095	Mozart: The Marriage Of Figaro	Erich Leinsdorf, conductor	Erich Leinsdorf, conductor	
3263	Double Fantasy	John Lennon & Yoko Ono	Jack Douglas, John Lennon & Yoko Ono, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLennon/John%2520Lennon_1_1_1591112918.jpg?itok=EIHqVdbg
3264	Sheena Easton	Sheena Easton		
3265	Lena Horne - The Lady And Her Music, Live On Broadway	Lena Horne	Lena Horne	
3266	Breakin' Away	Al Jarreau	Al Jarreau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BJarreau/Al%2520Jarreau_1_1_1575363983.jpg?itok=jrW9lWQV
3267	Boy From New York City	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
3268	The Theme From Hill Street Blues	Larry Carlton & Mike Post	Larry Carlton & Mike Post	
3269	Fire And Ice	Pat Benatar	Pat Benatar	
3270	Jessie's Girl	Rick Springfield	Rick Springfield	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rick%2BSpringfield/Rick%2520Springfield_1_1_1575363599.jpg?itok=YMR42hFr
3271	Don't Stand So Close To Me	The Police	The Police	
3272	Behind My Camel	The Police	The Police	
3273	Hold On I'm Comin'	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3274	One Hundred Ways	James Ingram	James Ingram	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BIngram/James%2520Ingram_1_1_1581553801.jpg?itok=vXb25sIT
3275	The Dude	Quincy Jones	Quincy Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3276	All I Need Is You	David Sanborn	David Sanborn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BSanborn/David%2520Sanborn_1_1_1584629239.jpg?itok=vGe0PuCc
3277	Just The Two Of Us	Ralph MacDonald, William Salter & Bill Withers, songwriters (Grover Washington, Jr., & Bill Withers)	Ralph MacDonald, William Salter & Bill Withers, songwriters (Grover Washington, Jr., & Bill Withers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BWithers/Bill%2520Withers_1_1_1575364519.jpg?itok=uzujWDSf
3278	Winelight	Grover Washington, Jr.	Grover Washington, Jr.	
3279	9 To 5	Dolly Parton	Dolly Parton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dolly%2BParton/Dolly%2520Parton_1_1_1581552316.jpg?itok=1Iad2upT
3280	(There's) No Gettin' Over Me	Ronnie Milsap	Ronnie Milsap	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
3281	Elvira	The Oak Ridge Boys	The Oak Ridge Boys	
3282	Country After All These Years	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3283	Priority	The Imperials	The Imperials	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_19.png?itok=2fncqXxp
3284	The Masters V	The Masters V	The Masters V	
3285	Don't Give Up	Andrae Crouch	Andrae Crouch	
3286	The Lord Will Make A Way	Al Green	Al Green	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BGreen/Al%2520Green_1_1_1598607243.jpg?itok=wuHFms9v
3287	There Must Be A Better World Somewhere	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
3288	Guajira Pa La Jeva	Clare Fischer	Clare Fischer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Clare%2BFischer/Clare%2520Fischer_1_1_1581555346.jpg?itok=ex7_fznz
3289	Sesame Country	(The Muppets, Glen Campbell, Crystal Gayle, Loretta Lynn, Tanya Tucker)	(The Muppets, Glen Campbell, Crystal Gayle, Loretta Lynn, Tanya Tucker)	
3290	Rev. Du Rite	Richard Pryor	Richard Pryor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BPryor/Richard%2520Pryor_1_1_1581555156.jpg?itok=695RqheM
3291	Donovan's Brain	Orson Welles	Orson Welles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Orson%2BWelles/Orson%2520Welles_1_1_1581627349.jpg?itok=R3x_MVEe
3292	Raiders Of The Lost Ark	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3293	Michael Nesmith In Elephant Parts	Michael Nesmith	Michael Nesmith	
3294	Digital III At Montreaux	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
3295	Blue Rondo A La Turk	Al Jarreau	Al Jarreau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BJarreau/Al%2520Jarreau_1_1_1575363983.jpg?itok=jrW9lWQV
3296	Until I Met You (Corner Pocket)	The Manhattan Transfer	The Manhattan Transfer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Manhattan%2BTransfer/Manhattan%2520Transfer_1_1_1589915024.jpg?itok=E-g0O95w
3297	Bye Bye Blackbird	John Coltrane, soloist	John Coltrane, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BColtrane/John%2520Coltrane_1_1_1581564654.jpg?itok=DCFWo04J
3298	Chick Corea & Gary Burton In Concert - Zurich, October 28, 1979	Gary Burton & Chick Corea	Gary Burton & Chick Corea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BBurton/Gary%2520Burton_1_1_1581554709.jpg?itok=h13WeAyX
3299	Walk On The Water	Gerry Mulligan	Gerry Mulligan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gerry%2BMulligan/Gerry%2520Mulligan_1_1_1591784750.jpg?itok=hq2I961q
3300	Velas	Quincy Jones & Johnny Mandel, arrangers (Quincy Jones)	Quincy Jones & Johnny Mandel, arrangers (Quincy Jones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3301	Ai No Corrida	Jerry Hey & Quincy Jones, arrangers (Quincy Jones)	Jerry Hey & Quincy Jones, arrangers (Quincy Jones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3302	A Nightingale Sang In Berkeley Square	Gene Puerling, arranger (The Manhattan Transfer)	Gene Puerling, arranger (The Manhattan Transfer)	
3303	Tattoo You	Peter Corriston, art director (The Rolling Stones)	Peter Corriston, art director (The Rolling Stones)	
3306	Gaucho	Jerry Garszva, Roger Nichols, Elliot Scheiner & Bill Schnee, engineers (Steely Dan)	Jerry Garszva, Roger Nichols, Elliot Scheiner & Bill Schnee, engineers (Steely Dan)	
3307	Mahler: Symphony No. 2 In C Minor	Georg Solti, artist; James Mallinson, producer	Georg Solti, artist; James Mallinson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3308	Janácek: From The House Of The Dead	Jiri Zahradnicek, Ivo Zidek & Vaclav Zitek; Charles Mackerras, conductor; James Mallinson, producer (Vienna Philharmonic Orchestra)	Jiri Zahradnicek, Ivo Zidek & Vaclav Zitek; Charles Mackerras, conductor; James Mallinson, producer (Vienna Philharmonic Orchestra)	
3309	Tchaikovsky: Piano Trio In A Minor	Vladimir Ashkenazy, Lynn Harrell & Itzhak Perlman, artists	Vladimir Ashkenazy, Lynn Harrell & Itzhak Perlman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
3310	Isaac Stern 60th Anniversary Celebration	Itzhak Perlman, Isaac Stern & Pinchas Zukerman, artists (New York Philharmonic)	Itzhak Perlman, Isaac Stern & Pinchas Zukerman, artists (New York Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3311	The Horowitz Concerts 1979/80	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3312	Live From Lincoln Center - Sutherland/Horne/Pavarotti	(Richard Bonynge; New York City Opera Orchestra)	(Richard Bonynge; New York City Opera Orchestra)	
3313	Sailing	Christopher Cross	Michael Omartian, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christopher%2BCross/Christopher%2520Cross_1_1_1581554585.jpg?itok=sDilUxBw
3314	Christopher Cross	Christopher Cross	Michael Omartian, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Christopher%2BCross/Christopher%2520Cross_1_1_1581554585.jpg?itok=sDilUxBw
3315	The Rose	Bette Midler	Bette Midler	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bette%2BMidler/Bette%2520Midler_1_1_1575359591.jpg?itok=7Wx-nTh_
3316	This Is It	Kenny Loggins	Kenny Loggins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BLoggins/Kenny%2520Loggins_1_1_1575371541.jpg?itok=7npKDoJS
3317	Guilty	Barbra Streisand & Barry Gibb	Barbra Streisand & Barry Gibb	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
3318	One On One	Bob James & Earl Klugh	Bob James & Earl Klugh	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BJames/Bob%2520James_1_1_1581554509.jpg?itok=hUiNB4jk
3319	Crimes Of Passion	Pat Benatar	Pat Benatar	
3320	Glass Houses	Billy Joel	Billy Joel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BJoel/Billy%2520Joel_1_1_1578384978.jpg?itok=QtM7Q8fq
3321	Against The Wind	Bob Seger & The Silver Bullet Band	Bob Seger & The Silver Bullet Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BSeger/Bob%2520Seger_1_1_1581551795.jpg?itok=ZuK6u856
3322	Reggatta De Blanc	The Police	The Police	
3323	Never Knew Love Like This Before	Stephanie Mills	Stephanie Mills	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephanie%2BMills/Stephanie%2520Mills_1_1_1599836028Muzooka.jpg?itok=FO6H8mgv
3324	Give Me The Night	George Benson	George Benson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3325	Shining Star	Manhattans	Manhattans	
3326	Off Broadway	George Benson	George Benson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3327	Could I Have This Dance?	Anne Murray	Anne Murray	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne%2BMurray/Anne%2520Murray_1_1_1581558822.jpg?itok=dBGIF4ua
3328	He Stopped Loving Her Today	George Jones	George Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BJones/George%2520Jones_1_1_1575365164.jpg?itok=Pjz_Fzc6
3329	That Lovin' You Feelin' Again	Emmylou Harris & Roy Orbison	Emmylou Harris & Roy Orbison	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
3330	Orange Blossom Special/Hoedown	Gilley's Urban Cowboy Band	Gilley's Urban Cowboy Band	
3331	On The Road Again	Willie Nelson, songwriter (Willie Nelson)	Willie Nelson, songwriter (Willie Nelson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
3332	The Lord's Prayer	Reba Rambo, Dony McGuire, B.J. Thomas, Andrae Crouch, Walter Hawkins, Tramaine Hawkins, Cynthia Clawson, The Archers	Reba Rambo, Dony McGuire, B.J. Thomas, Andrae Crouch, Walter Hawkins, Tramaine Hawkins, Cynthia Clawson, The Archers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dony%2BMcGuire/Dony%2520McGuire_1_1_1581560158.jpg?itok=JHfBY12b
3333	We Come To Worship	Blackwood Brothers	Blackwood Brothers	
3334	Rejoice	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
3335	Lord, Let Me Be An Instrument	James Cleveland & The Charles Fold Singers	James Cleveland & The Charles Fold Singers	
3336	With My Song I Will Praise Him	Debby Boone	Debby Boone	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Debby%2BBoone/Debby%2520Boone_1_1_1575373918.jpg?itok=j8EIzpps
3337	Rare Blues	(Various Artists)	(Various Artists)	
3338	La Onda Va Bien	Cal Tjader	Cal Tjader	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cal%2BTjader/Cal%2520Tjader_1_1_1581558294.jpg?itok=pIB-is3X
3339	In Harmony/A Sesame Street Record	(Various Artists)	(Various Artists)	
3340	No Respect	Rodney Dangerfield	Rodney Dangerfield	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rodney%2BDangerfield/Rodney%2520Dangerfield_1_1_1581616016.jpg?itok=9TgLT4mZ
3341	Gertrude Stein, Gertrude Stein, Gertrude Stein	Pat Carroll	Pat Carroll	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pat%2BCarroll/Pat%2520Carroll_1_1_1581629312.jpg?itok=Uwoyry1T
4096	Bjoerling In Opera	Bjoerling In Opera		
4097	Porgy And Bess	(Various Artists)	(Various Artists)	
3342	The Empire Strikes Back	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3343	Evita - Premier American Recording	Andrew Lloyd Webber, composer; Tim Rice, lyricist; Andrew Lloyd Webber & Tim Rice, producers (Various Artists)	Andrew Lloyd Webber, composer; Tim Rice, lyricist; Andrew Lloyd Webber & Tim Rice, producers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andrew%2BLloyd%2BWebber/Andrew%2520Lloyd%2520Webber_1_1_1576344772.jpg?itok=8iG6F7y8
3344	A Perfect Match - Ella And Basie	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
3345	Moody's Mood	George Benson	George Benson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3346	I Will Say Goodbye	Bill Evans, soloist	Bill Evans, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3347	We Will Meet Again	Bill Evans	Bill Evans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3348	On The Road	Count Basie	Count Basie	
3349	Dinorah, Dinorah	Jerry Hey & Quincy Jones, arrangers (George Benson)	Jerry Hey & Quincy Jones, arrangers (George Benson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3350	Trilogy: Past, Present And Future	David McClintick, album notes writer (Frank Sinatra)	David McClintick, album notes writer (Frank Sinatra)	
3351	Segovia - The EMI Recordings 1927-39	(Andres Segovia)	(Andres Segovia)	
3352	The Wall	James Guthrie, engineer (Pink Floyd)	James Guthrie, engineer (Pink Floyd)	
3353	Phil Ramone	Phil Ramone		
3354	Berg: Lulu (Complete Version)	Pierre Boulez, artist; Gunther Breest & Michael Horwath, producers	Pierre Boulez, artist; Gunther Breest & Michael Horwath, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
3355	Bruckner: Symphony No. 6 In A	Georg Solti, conductor (Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3356	Mozart: Requiem	Norbert Balatsch, chorus master; Carlo Maria Giulini, conductor (Philharmonia Chorus; Philharmonia Orchestra)	Norbert Balatsch, chorus master; Carlo Maria Giulini, conductor (Philharmonia Chorus; Philharmonia Orchestra)	
3357	Play Music For Two Violins (Moszkowski: Suite For Two Violins/Shostakovich: Duets/Prokofiev: Sonata For Two Violins)	Itzhak Perlman & Pinchas Zukerman, artists	Itzhak Perlman & Pinchas Zukerman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3358	Berg: Violin Concerto/Stravinsky: Violin Concerto In D	Itzhak Perlman, artist (Boston Symphony Orchestra)	Itzhak Perlman, artist (Boston Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3359	Brahms: Violin And Cello Concerto In A Minor (Double Concerto)	Itzhak Perlman & Mstislav Rostropovich, artists (Concertgebouw Orchestra)	Itzhak Perlman & Mstislav Rostropovich, artists (Concertgebouw Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3360	The Spanish Album	Itzhak Perlman, artist	Itzhak Perlman, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3361	Prima Donna, Vol. 5 - Great Soprano Arias From Handel To Britten	(Henry Lewis; Philharmonia Orchestra)	(Henry Lewis; Philharmonia Orchestra)	
3362	What A Fool Believes	The Doobie Brothers	Ted Templeman, producer	
3363	52nd Street	Billy Joel	Phil Ramone, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BJoel/Billy%2520Joel_1_1_1578384978.jpg?itok=QtM7Q8fq
3364	Rickie Lee Jones	Rickie Lee Jones	Rickie Lee Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/rickie_lee_jones.png?itok=kewxJNnl
3365	I'll Never Love This Way Again	Dionne Warwick	Dionne Warwick	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dionne%2BWarwick/Dionne%2520Warwick_1_1_1598445549.jpg?itok=5-l3UeVo
3366	Rise	Herb Alpert	Herb Alpert	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herb%2BAlpert/Herb%2520Alpert_1_1_1581628867.jpg?itok=45UhbQPe
3367	Hot Stuff	Donna Summer	Donna Summer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donna%2BSummer/Donna%2520Summer_1_1_1581552222.jpg?itok=3np3vg-z
3368	Gotta Serve Somebody	Bob Dylan	Bob Dylan	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BDylan/Bob%2520Dylan_1_1_1579182058.jpg?itok=VI5nSz8n
3369	Heartache Tonight	Eagles	Eagles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
3370	Rockestra Theme	Paul McCartney & Wings	Paul McCartney & Wings	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
3371	Deja Vu	Dionne Warwick	Dionne Warwick	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dionne%2BWarwick/Dionne%2520Warwick_1_1_1598445549.jpg?itok=5-l3UeVo
3372	Don't Stop 'til You Get Enough	Michael Jackson	Michael Jackson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BJackson/Michael%2520Jackson_1_1_1584089273.jpg?itok=8N4Ineev
3373	After The Love Has Gone	Earth, Wind & Fire	Earth, Wind & Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Earth%252C%2BWind%2B%2526%2BFire/Earth%252C%2520Wind%2520%2526%2520Fire_1_1_1578384907.jpg?itok=v5EmyLDc
3374	Boogie Wonderland	Earth, Wind & Fire	Earth, Wind & Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Earth%252C%2BWind%2B%2526%2BFire/Earth%252C%2520Wind%2520%2526%2520Fire_1_1_1578384907.jpg?itok=v5EmyLDc
3375	I Will Survive	Gloria Gaynor	Dino Fekaris & Freddie Perren, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gloria%2BGaynor/Gloria%2520Gaynor_1_1_1578387145.jpg?itok=pSaCbtAb
3376	Blue Kentucky Girl	Emmylou Harris	Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
3377	The Gambler	Kenny Rogers	Kenny Rogers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BRogers/Kenny%2520Rogers_1_1_1588264666.jpg?itok=pfLzJGyR
3378	The Devil Went Down To Georgia	The Charlie Daniels Band	The Charlie Daniels Band	https://www.grammy.com/sites/com/files/styles/artist_circle/public/image_from_ios_1.jpg?itok=o9UY5mZT
3379	Big Sandy/Leather Britches	Doc Watson & Merle Watson	Doc Watson & Merle Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
3380	You Decorated My Life	Debbie Hupp & Bob Morrison, songwriters (Kenny Rogers)	Debbie Hupp & Bob Morrison, songwriters (Kenny Rogers)	
3381	Heed The Call	The Imperials	The Imperials	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_19.png?itok=2fncqXxp
3382	Lift Up The Name Of Jesus	Blackwood Brothers	Blackwood Brothers	
3383	I'll Be Thinking Of You	Andrae Crouch	Andrae Crouch	
3384	Changing Times	Mighty Clouds Of Joy	Mighty Clouds Of Joy	
3385	You Gave Me Love (When Nobody Gave Me A Prayer)	B.J. Thomas	B.J. Thomas	
3386	Muddy "Mississippi" Waters Live	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3387	Irakere	Irakere	Irakere	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Irakere/Irakere_1_1_1581658609.jpg?itok=TKyUOn6x
3388	The Muppet Movie	(The Muppets)	(The Muppets)	
3389	Reality...What A Concept	Robin Williams	Robin Williams	
3390	Ages Of Man - Readings From Shakespeare	John Gielgud	John Gielgud	
3391	Superman Main Title Theme	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3392	Superman	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3393	Sweeney Todd	Stephen Sondheim, composer & lyricist; Thomas Z. Shepard, producer (Angela Lansbury & Len Cariou)	Stephen Sondheim, composer & lyricist; Thomas Z. Shepard, producer (Angela Lansbury & Len Cariou)	
3394	8:30	Weather Report	Weather Report	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Weather%2BReport/Weather%2520Report_1_1_1581557692.jpg?itok=uxND9DDW
3395	Fine And Mellow	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
3396	Jousts	Oscar Peterson, soloist	Oscar Peterson, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oscar%2BPeterson/Oscar%2520Peterson_1_1_1592209419.jpg?itok=dV8s6dYI
3397	Duet	Chick Corea & Gary Burton	Chick Corea & Gary Burton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
3398	Duke Ellington At Fargo, 1940 Live	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3399	Soulful Strut	Claus Ogerman, arranger (George Benson)	Claus Ogerman, arranger (George Benson)	
3400	Breakfast In America	Mike Doud & Mick Haggerty, art directors (Supertramp)	Mike Doud & Mick Haggerty, art directors (Supertramp)	
3401	Charlie Parker - The Complete Savoy Sessions	James Patrick & Bob Porter, album notes writers (Charlie Parker)	James Patrick & Bob Porter, album notes writers (Charlie Parker)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BPatrick/James%2520Patrick_1_1_1581640098.jpg?itok=acYuONCH
3402	Billie Holiday - Giants Of Jazz	(Billie Holiday)	(Billie Holiday)	
3403	Larry Butler	Larry Butler		
3404	Brahms: Symphonies (1-4)	Georg Solti, artist; James Mallinson, producer	Georg Solti, artist; James Mallinson, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3405	Copland: Appalachian Spring	Dennis Russell Davies, artist	Dennis Russell Davies, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dennis%2BRussell%2BDavies/Dennis%2520Russell%2520Davies_1_1_1597165269.jpg?itok=4bEIhaCT
3406	Bartók: Piano Cons. Nos. 1 & 2	Maurizio Pollini, artist (Chicago Symphony Orchestra)	Maurizio Pollini, artist (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maurizio%2BPollini/Maurizio%2520Pollini_1_1_1597164830.jpg?itok=Y_g2PN3H
3407	The Horowitz Concerts 1978/79	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3408	O Sole Mio - Favorite Neapolitan Songs	(Bologna Orchestra)	(Bologna Orchestra)	
3409	Sondheim: Sweeney Todd	Anthony Salvatore, engineer (Original Cast with Angela Lansbury & Len Cariou)	Anthony Salvatore, engineer (Original Cast with Angela Lansbury & Len Cariou)	
3410	Saturday Night Fever - Soundtrack	(Various Artists)	Bee Gees (Barry Gibb, Maurice Gibb & Robin Gibb), Broadway Eddie, Harry Wayne Casey, Richard Finch, Albhy Galuten, K.G. Productions, Ron Kersey, Ralph MacDonald, Arif Mardin, Bobby Martin, Bill Oakes, Freddie Perren, Karl Richardson, William Salter, David Shire & Thomas J. Valentino, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bee%2BGees/Bee%2520Gees_1_1_1591112992.jpg?itok=qWVlVFGB
3411	A Taste Of Honey	A Taste Of Honey		
3412	You Needed Me	Anne Murray	Anne Murray	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne%2BMurray/Anne%2520Murray_1_1_1581558822.jpg?itok=dBGIF4ua
3413	Copacabana (At The Copa)	Barry Manilow	Barry Manilow	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barry%2BManilow/Barry%2520Manilow_1_1_1594057041.jpg?itok=VBqOwoEQ
3414	Saturday Night Fever	Bee Gees	Bee Gees	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bee%2BGees/Bee%2520Gees_1_1_1591112992.jpg?itok=qWVlVFGB
3415	Children Of Sanchez	Chuck Mangione	Chuck Mangione	
3416	All 'n All	Earth, Wind & Fire	Earth, Wind & Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Earth%252C%2BWind%2B%2526%2BFire/Earth%252C%2520Wind%2520%2526%2520Fire_1_1_1578384907.jpg?itok=v5EmyLDc
3417	Runnin'	Earth, Wind & Fire	Earth, Wind & Fire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Earth%252C%2BWind%2B%2526%2BFire/Earth%252C%2520Wind%2520%2526%2520Fire_1_1_1578384907.jpg?itok=v5EmyLDc
3418	Here You Come Again	Dolly Parton	Dolly Parton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dolly%2BParton/Dolly%2520Parton_1_1_1581552316.jpg?itok=1Iad2upT
3419	Georgia On My Mind	Willie Nelson	Willie Nelson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
3420	Mamas Don't Let Your Babies Grow Up To Be Cowboys	Waylon Jennings & Willie Nelson	Waylon Jennings & Willie Nelson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Waylon%2BJennings/Waylon%2520Jennings_1_1_1575363981.jpg?itok=ZGBdkCXs
3421	One O'Clock Jump	Asleep At The Wheel	Asleep At The Wheel	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Asleep%2BAt%2BThe%2BWheel/Asleep%2520at%2520the%2520Wheel_1_1_1584635187.jpg?itok=xpo8mjmg
3422	What A Friend	Larry Hart	Larry Hart	
3423	Refreshing	The Happy Goodman Family	The Happy Goodman Family	
3424	Live In London	Andrae Crouch & The Disciples	Andrae Crouch & The Disciples	
3425	Live And Direct	Mighty Clouds Of Joy	Mighty Clouds Of Joy	
3426	Happy Man	B.J. Thomas	B.J. Thomas	
3427	I'm Ready	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3428	Homenaje a Beny More	Tito Puente	Tito Puente	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tito%2BPuente/Tito%2520Puente_1_1_1581360995.jpg?itok=BiFkIWMe
3429	The Muppet Show	(The Muppets)	(The Muppets)	
3430	A Wild And Crazy Guy	Steve Martin	Steve Martin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BMartin/Steve%2520Martin_1_1_1581553492.jpg?itok=JMNEF-0M
3431	Citizen Kane	Orson Welles	Orson Welles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Orson%2BWelles/Orson%2520Welles_1_1_1581627349.jpg?itok=R3x_MVEe
3432	Theme From Close Encounters Of The Third Kind	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3433	Close Encounters Of The Third Kind	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3434	Ain't Misbehavin'	Thomas Z. Shepard, producer (Various Artists)	Thomas Z. Shepard, producer (Various Artists)	
3435	All Fly Home	Al Jarreau	Al Jarreau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BJarreau/Al%2520Jarreau_1_1_1575363983.jpg?itok=jrW9lWQV
3436	Montreaux '77 - Oscar Peterson Jam	Oscar Peterson, soloist	Oscar Peterson, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oscar%2BPeterson/Oscar%2520Peterson_1_1_1592209419.jpg?itok=dV8s6dYI
3437	Live In Munich	Thad Jones & Mel Lewis	Thad Jones & Mel Lewis	
3438	The Wiz Main Title - Overture Part One	Robert (Bob) Freedman & Quincy Jones, arrangers (Various Artists)	Robert (Bob) Freedman & Quincy Jones, arrangers (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3439	Got To Get You Into My Life	Maurice White, arranger (Earth, Wind & Fire)	Maurice White, arranger (Earth, Wind & Fire)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maurice%2BWhite/Maurice%2520White_1_1_1581554058.jpg?itok=twOO9Xkq
3440	Stayin' Alive	(Bee Gees)	(Bee Gees)	
3441	Boys In The Trees	Tony Lane & Johnny B. Lee, art directors (Carly Simon)	Tony Lane & Johnny B. Lee, art directors (Carly Simon)	
3442	A Bing Crosby Collection, Vols. I & II	Michael Brooks, album notes writer (Bing Crosby)	Michael Brooks, album notes writer (Bing Crosby)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Michael%2BBrooks/Michael%2520Brooks_1_1_1581558904.jpg?itok=0Mqeeefx
3443	The Lester Young Story, Vol. 3	(Lester Young)	(Lester Young)	
3444	FM (No Static At All)	Roger Nichols & Al Schmitt, engineers (Steely Dan)	Roger Nichols & Al Schmitt, engineers (Steely Dan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
3445	Bee Gees, Albhy Galuten & Karl Richardson	Bee Gees, Albhy Galuten & Karl Richardson		
3446	Brahms: Concerto For Violin In D	Carlo Maria Giulini & Itzhak Perlman, artists; Christopher Bishop, producer	Carlo Maria Giulini & Itzhak Perlman, artists; Christopher Bishop, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3447	Beethoven: Symphonies (9) (Complete)	Herbert von Karajan, conductor (Berlin Philharmonic Orchestra)	Herbert von Karajan, conductor (Berlin Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbert%2Bvon%2BKarajan/Herbert%2520von%2520Karajan_1_1_1581553947.jpg?itok=ltfnPUW-
3448	Lehar: The Merry Widow	Julius Rudel, conductor; John Coveney & George Sponhaltz, producers (New York City Opera Orchestra)	Julius Rudel, conductor; John Coveney & George Sponhaltz, producers (New York City Opera Orchestra)	
3449	Beethoven: Missa Solemnis	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	Georg Solti, conductor (Chicago Symphony Chorus; Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3450	Beethoven: Sonatas For Violin And Piano	Vladimir Ashkenazy & Itzhak Perlman, artists	Vladimir Ashkenazy & Itzhak Perlman, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
3451	Rachmaninoff: Con. No. 3 In D Minor For Piano (Horowitz Golden Jubilee)	Vladimir Horowitz, artist (New York Philharmonic)	Vladimir Horowitz, artist (New York Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3452	The Horowitz Concerts 1977/78	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3453	Luciano Pavarotti - Hits From Lincoln Center	Luciano Pavarotti - Hits From Lincoln Center		
3454	Varese: Ameriques/Arcana/Ionisation (Boulez Conducts Varese)	Edward (Bud) T. Graham, Arthur Kendy & Ray Moore, engineers (Pierre Boulez, conductor)	Edward (Bud) T. Graham, Arthur Kendy & Ray Moore, engineers (Pierre Boulez, conductor)	
3455	Hotel California	Eagles	Bill Szymczyk, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
3456	Rumours	Fleetwood Mac	Ken Caillat, Richard Dashut & Fleetwood Mac (Lindsey Buckingham, Mick Fleetwood, Christine McVie, John McVie & Stevie Nicks), producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fleetwood%2BMac/Fleetwood%2520Mac_1_1_1579189992.jpg?itok=Olk5SO3Z
3457	Love Theme From A Star Is Born (Evergreen)	Barbra Streisand & Paul Williams, songwriters (Barbra Streisand)	Barbra Streisand & Paul Williams, songwriters (Barbra Streisand)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
3458	You Light Up My Life	Joe Brooks, songwriter (Debby Boone)	Joe Brooks, songwriter (Debby Boone)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BBrooks/Joe%2520Brooks_1_1_1581553558.jpg?itok=vDCKGW1h
3459	Debby Boone	Debby Boone		
3460	Nadia's Theme (The Young And The Restless)	Harry Betts, Perry Botkin Jr. & Barry De Vorzon, arrangers (Barry De Vorzon)	Harry Betts, Perry Botkin Jr. & Barry De Vorzon, arrangers (Barry De Vorzon)	
3461	New Kid In Town	Eagles, arrangers (Eagles)	Eagles, arrangers (Eagles)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
3462	Aja	Roger Nichols, Elliot Scheiner, Al Schmitt & Bill Schnee, engineers (Steely Dan)	Roger Nichols, Elliot Scheiner, Al Schmitt & Bill Schnee, engineers (Steely Dan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
3463	Simple Dreams	John Kosh, art director (Linda Ronstadt)	John Kosh, art director (Linda Ronstadt)	
3464	Bing Crosby - A Legendary Performer	George T. Simon, album notes writer (Bing Crosby)	George T. Simon, album notes writer (Bing Crosby)	
3465	Look To The Rainbow	Al Jarreau	Al Jarreau	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BJarreau/Al%2520Jarreau_1_1_1575363983.jpg?itok=jrW9lWQV
3466	The Giants	Oscar Peterson, soloist	Oscar Peterson, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oscar%2BPeterson/Oscar%2520Peterson_1_1_1592209419.jpg?itok=dV8s6dYI
3467	The Phil Woods Six - Live From The Showboat	Phil Woods	Phil Woods	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BWoods/Phil%2520Woods_1_1_1581559751.jpg?itok=a7JVwQVu
3468	Prime Time	Count Basie	Count Basie	
3469	Handy Man	James Taylor	James Taylor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BTaylor/James%2520Taylor_1_1_1584111744.jpg?itok=Jb0Mb8r0
3470	Star Wars	John Williams	John Williams	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3471	Don't Leave Me This Way	Thelma Houston	Thelma Houston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Thelma%2BHouston/Thelma%2520Houston_1_1_1581559664.jpg?itok=eqnP9PbD
3472	Unmistakably Lou	Lou Rawls	Lou Rawls	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lou%2BRawls/Lou%2520Rawls_1_1_1597164484.jpg?itok=LU9XRMFA
3473	Best Of My Love	Emotions	Emotions	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emotions/Emotions_1_1_1581641290.jpg?itok=bM6bSTkd
3474	Q	Brothers Johnson	Brothers Johnson	
3475	You Make Me Feel Like Dancing	Vini Poncia & Leo Sayer, songwriters (Leo Sayer)	Vini Poncia & Leo Sayer, songwriters (Leo Sayer)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leo%2BSayer/Leo%2520Sayer_1_1_1591113011.jpg?itok=NidUgjlZ
3476	Sail On	The Imperials	The Imperials	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_19.png?itok=2fncqXxp
3477	Just A Little Talk With Jesus	The Oak Ridge Boys	The Oak Ridge Boys	
3478	Wonderful!	Edwin Hawkins & The Edwin Hawkins Singers	Edwin Hawkins & The Edwin Hawkins Singers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Edwin%2BHawkins/Edwin%2520Hawkins_1_1_1581618310.jpg?itok=asaK95Rx
3479	James Cleveland Live At Carnegie Hall	James Cleveland	James Cleveland	
3480	Home Where I Belong	B.J. Thomas	B.J. Thomas	
3481	Don't It Make My Brown Eyes Blue	Crystal Gayle	Crystal Gayle	
3482	Lucille	Kenny Rogers	Kenny Rogers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kenny%2BRogers/Kenny%2520Rogers_1_1_1588264666.jpg?itok=pfLzJGyR
3483	Heaven's Just A Sin Away	The Kendalls	The Kendalls	
3484	Country Instrumentalist Of The Year	Hargus "Pig" Robbins	Hargus "Pig" Robbins	
3485	Hard Again	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3486	Dawn	Mongo Santamaria	Mongo Santamaria	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mongo%2BSantamaria/Mongo%2520Santamaria_1_1_1597167037.jpg?itok=sdMWg83J
3487	Aren't You Glad You're You	(Various Artists)	(Various Artists)	
3488	Let's Get Small	Steve Martin	Steve Martin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BMartin/Steve%2520Martin_1_1_1581553492.jpg?itok=JMNEF-0M
3489	The Belle Of Amherst	Julie Harris	Julie Harris	
3490	Star Wars - Main Title	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3491	Annie	Martin Charnin & Charles Strouse, composers; Larry Morton & Charles Strouse, producers (Andrea McCardle, Dorothy Loudon)	Martin Charnin & Charles Strouse, composers; Larry Morton & Charles Strouse, producers (Andrea McCardle, Dorothy Loudon)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charles%2BStrouse/Charles%2520Strouse_1_1_1581629380.jpg?itok=wHlbSXbh
3492	Concert Of The Century	Leonard Bernstein, Dietrich Fischer-Dieskau, Vladimir Horowitz, Yehudi Menuhin, Mstislav Rostropovich, Isaac Stern & Lyndon Woodside, artists; Thomas Frost, producer	Leonard Bernstein, Dietrich Fischer-Dieskau, Vladimir Horowitz, Yehudi Menuhin, Mstislav Rostropovich, Isaac Stern & Lyndon Woodside, artists; Thomas Frost, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
3493	Gershwin: Porgy And Bess	John De Main; Thomas Z. Shepard, producer (Houston Grand Opera Orchestra)	John De Main; Thomas Z. Shepard, producer (Houston Grand Opera Orchestra)	
3494	Schoenberg: Quartets For Strings (Complete)	Juilliard String Quartet (Earl Carlyss, Joel Krosnick, Robert Mann & Samuel Rhodes), artists	Juilliard String Quartet (Earl Carlyss, Joel Krosnick, Robert Mann & Samuel Rhodes), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juilliard%2BString%2BQuartet/Juilliard%2520String%2520Quartet_1_1_1575360665.jpg?itok=8v2l9Vwk
3495	Vivaldi: The Four Seasons	Itzhak Perlman, artist (London Philharmonic Orchestra)	Itzhak Perlman, artist (London Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Itzhak%2BPerlman/Itzhak%2520Perlman_1_1_1581553577.jpg?itok=6_Age2Bj
3496	Beethoven: Piano Sonata No. 18 In E Flat/Schumann: Fantasiestucke, Op. 12	Artur Rubinstein, artist	Artur Rubinstein, artist	
3497	Bach: Arias	(Academy Of St. Martin-In-The Fields)	(Academy Of St. Martin-In-The Fields)	
3498	Ravel: Bolero	Kenneth Wilkinson, engineer (Georg Solti, conductor)	Kenneth Wilkinson, engineer (Georg Solti, conductor)	
3499	This Masquerade	George Benson	Tommy LiPuma, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3500	Songs In The Key Of Life	Stevie Wonder	Stevie Wonder, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3501	I Write The Songs	Bruce Johnston, songwriter (Barry Manilow)	Bruce Johnston, songwriter (Barry Manilow)	
3502	Starland Vocal Band	Starland Vocal Band		
3503	Leprechaun's Dream	Chick Corea, arranger (Chick Corea)	Chick Corea, arranger (Chick Corea)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
3504	If You Leave Me Now	James William Guercio & Jimmie Haskell, arrangers (Chicago)	James William Guercio & Jimmie Haskell, arrangers (Chicago)	
3505	Afternoon Delight	Starland Vocal Band, arrangers (Starland Vocal Band)	Starland Vocal Band, arrangers (Starland Vocal Band)	
3506	Breezin'	Al Schmitt, engineer (George Benson)	Al Schmitt, engineer (George Benson)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
3507	Chicago X	John Berg, art director (Chicago)	John Berg, art director (Chicago)	
3508	The Changing Face Of Harlem - The Savoy Sessions	Dan Morgenstern, album notes writer (Various Artists)	Dan Morgenstern, album notes writer (Various Artists)	
3509	Stevie Wonder	Stevie Wonder		
3510	Fitzgerald And Pass...Again	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
3511	Basie And Zoot	Count Basie, soloist	Count Basie, soloist	
3512	The Leprechaun	Chick Corea	Chick Corea	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
3513	The Ellington Suites	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3514	Hasten Down The Wind	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
3515	Sophisticated Lady (She's A Different Lady)	Natalie Cole	Natalie Cole	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
3516	I Wish	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3517	You Don't Have To Be A Star (To Be In My Show)	Marilyn McCoo & Billy Davis, Jr.	Marilyn McCoo & Billy Davis, Jr.	
3518	Theme From Good King Bad	George Benson	George Benson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBenson/George%2520Benson_1_1_1578385429.jpg?itok=bzpUiUCb
3519	Lowdown	David Paich & Boz Scaggs, songwriters (Boz Scaggs)	David Paich & Boz Scaggs, songwriters (Boz Scaggs)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boz%2BScaggs/Boz%2520Scaggs_1_1_1594938725.jpg?itok=0QDexUEl
3520	How I Got Over	Mahalia Jackson	Mahalia Jackson	
3521	Elite Hotel	Emmylou Harris	Emmylou Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Emmylou%2BHarris/Emmylou%2520Harris_1_1_1596198478.jpg?itok=wsJVpP65
3522	(I'm A) Stand By My Woman Man	Ronnie Milsap	Ronnie Milsap	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
3523	The End Is Not In Sight (The Cowboy Tune)	Amazing Rhythm Aces	Amazing Rhythm Aces	
3524	Chester And Lester	Chet Atkins & Les Paul	Chet Atkins & Les Paul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3525	Broken Lady	Larry Gatlin, songwriter (Larry Gatlin)	Larry Gatlin, songwriter (Larry Gatlin)	
3526	The Astonishing, Outrageous, Amazing, Incredible, Unbelievable, Different World of Gary S. Paxton	Gary S. Paxton	Gary S. Paxton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BS.%2BPaxton/Gary%2520S.%2520Paxton_1_1_1597170727.jpg?itok=rGW8GtUu
3527	Where The Soul Never Dies	The Oak Ridge Boys	The Oak Ridge Boys	
3528	Mark Twang	John Hartford	John Hartford	
3529	Unfinished Masterpiece	Eddie Palmieri	Eddie Palmieri	
3530	Prokofiev: Peter And The Wolf/Saint-Saens: Carnival Of The Animals	Karl Bohm & Hermione Gingold	Karl Bohm & Hermione Gingold	
3531	Bicentennial Nigger	Richard Pryor	Richard Pryor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BPryor/Richard%2520Pryor_1_1_1581555156.jpg?itok=695RqheM
3532	Great American Documents	Helen Hayes, Orson Welles, Henry Fonda & James Earl Jones	Helen Hayes, Orson Welles, Henry Fonda & James Earl Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Orson%2BWelles/Orson%2520Welles_1_1_1581627349.jpg?itok=R3x_MVEe
3533	Bellavia	Chuck Mangione, composer (Chuck Mangione)	Chuck Mangione, composer (Chuck Mangione)	
3534	Car Wash	Norman Whitfield, composer (Various Artists)	Norman Whitfield, composer (Various Artists)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Norman%2BWhitfield/Norman%2520Whitfield_1_1_1581610317.jpg?itok=Hz_Z_2dA
3535	Bubbling Brown Sugar	Luigi Creatore & Hugo Peretti, producers (Original Broadway Cast)	Luigi Creatore & Hugo Peretti, producers (Original Broadway Cast)	
3536	Beethoven: The Five Piano Concertos	Daniel Barenboim, conductor; Artur Rubinstein, artist; Max Wilcox, producer	Daniel Barenboim, conductor; Artur Rubinstein, artist; Max Wilcox, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Daniel%2BBarenboim/Daniel%2520Barenboim_1_1_1581625860.jpg?itok=97-UY1BX
3537	Strauss: Also Sprach Zarathustra	(Chicago Symphony Orchestra)	(Chicago Symphony Orchestra)	
3538	Rachmaninoff: The Bells	(London Symphony Chorus; London Symphony Orchestra)	(London Symphony Chorus; London Symphony Orchestra)	
3539	The Art Of Courtly Love	David Munrow, artist	David Munrow, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BMunrow/David%2520Munrow_1_1_1581559578.jpg?itok=tMz9gg9V
3540	Horowitz Concerts 1975/76	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3541	Herbert: Music Of Victor Herbert	Herbert: Music Of Victor Herbert		
3542	Gershwin: Rhapsody In Blue	Milton Cherin, Edward (Bud) T. Graham & Ray Moore, engineers (George Gershwin 1925 Piano Roll; Michael Tilson Thomas cond. Columbia Jazz Band)	Milton Cherin, Edward (Bud) T. Graham & Ray Moore, engineers (George Gershwin 1925 Piano Roll; Michael Tilson Thomas cond. Columbia Jazz Band)	
3543	Love Will Keep Us Together	Captain & Tennille	Daryl Dragon, producer	
3544	Still Crazy After All These Years	Paul Simon	Phil Ramone & Paul Simon, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BSimon/Paul%2520Simon_1_1_1578385319.jpg?itok=H2xb3gsd
3545	Send In The Clowns	Stephen Sondheim, songwriter (Judy Collins)	Stephen Sondheim, songwriter (Judy Collins)	
3546	Natalie Cole	Natalie Cole		
3547	The Rockford Files	Pete Clarence Carpenter & Mike Post, arrangers (Mike Post)	Pete Clarence Carpenter & Mike Post, arrangers (Mike Post)	
3548	Misty	Ray Stevens, arranger (Ray Stevens)	Ray Stevens, arranger (Ray Stevens)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BStevens/Ray%2520Stevens_1_1_1581552303.jpg?itok=QDM889F3
3549	Between The Lines	Larry Alexander, Brooks Arthur & Russ Payne, engineers (Janis Ian)	Larry Alexander, Brooks Arthur & Russ Payne, engineers (Janis Ian)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Larry%2BAlexander/Larry%2520Alexander_1_1_1581630309.jpg?itok=ZgGVYeRF
3550	Honey	Jim Ladwig, art director (Ohio Players)	Jim Ladwig, art director (Ohio Players)	
3551	Blood On The Tracks	Pete Hamill, album notes writer (Bob Dylan)	Pete Hamill, album notes writer (Bob Dylan)	
3552	Footlifters	Gunther Schuller, album notes writer (Gunther Schuller)	Gunther Schuller, album notes writer (Gunther Schuller)	
3553	Oscar Peterson And Dizzy Gillespie	Dizzy Gillespie, soloist	Dizzy Gillespie, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dizzy%2BGillespie/Dizzy%2520Gillespie_1_1_1592919057.jpg?itok=cE9ZhAu-
3554	No Mystery	Chick Corea & Return To Forever	Chick Corea & Return To Forever	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chick%2BCorea/Chick%2520Corea_1_1_1578385141.jpg?itok=gpVAWwCc
3555	Images	Michel Legrand & Phil Woods	Michel Legrand & Phil Woods	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Phil%2BWoods/Phil%2520Woods_1_1_1581559751.jpg?itok=a7JVwQVu
3556	At Seventeen	Janis Ian	Janis Ian	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Janis%2BIan/Janis%2520Ian_1_1_1578385122.jpg?itok=xZjXctgV
3557	Lyin' Eyes	Eagles	Eagles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eagles/Eagles_1_1_1581552244.jpg?itok=0GyT6tV3
3558	The Hustle	Van McCoy	Van McCoy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Van%2BMcCoy/Van%2520McCoy_1_1_1597165905.jpg?itok=W5WzEyn8
3559	This Will Be	Natalie Cole	Natalie Cole	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Natalie%2BCole/Natalie%2520Cole_1_1_1591112950.jpg?itok=A9t_I3Ba
3560	Living For The City	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
3561	Fly, Robin, Fly	Silver Convention	Silver Convention	
3562	Where Is The Love	Harry Wayne Casey, Willie Clarke, Richard Finch & Betty Wright, songwriters (Betty Wright)	Harry Wayne Casey, Willie Clarke, Richard Finch & Betty Wright, songwriters (Betty Wright)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Betty%2BWright/Betty%2520Wright_1_1_1575360287.jpg?itok=1OkUONwX
3563	Take Me Back	Andrae Crouch & The Disciples	Andrae Crouch & The Disciples	
3564	I Can't Help It (If I'm Still In Love With You)	Linda Ronstadt	Linda Ronstadt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/lindaronstadt-spotlight-89212366.png?itok=DO_KCk0i
3565	Blue Eyes Crying In The Rain	Willie Nelson	Willie Nelson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Willie%2BNelson/Willie%2520Nelson_1_1_1578385381.jpg?itok=Dc-WqO_x
3566	Lover Please	Kris Kristofferson & Rita Coolidge	Kris Kristofferson & Rita Coolidge	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kris%2BKristofferson/Kris%2520Kristofferson_1_1_1599567520Muzooka.jpg?itok=Tq5Gb2GO
3567	The Entertainer	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3568	(Hey Won't You Play) Another Somebody Done Somebody Wrong Song	Larry Butler & Chips Moman, songwriters (B.J. Thomas)	Larry Butler & Chips Moman, songwriters (B.J. Thomas)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chips%2BMoman/Chips%2520Moman_1_1_1597163513.jpg?itok=g92ndqfT
3569	Jesus, We Just Want To Thank You	The Bill Gaither Trio	The Bill Gaither Trio	
3571	The Muddy Waters Woodstock Album	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3572	Sun Of Latin Music	Eddie Palmieri	Eddie Palmieri	
3573	The Little Prince	Richard Burton	Richard Burton	
3574	Is It Something I Said?	Richard Pryor	Richard Pryor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BPryor/Richard%2520Pryor_1_1_1581555156.jpg?itok=695RqheM
3575	Give 'Em Hell Harry	James Whitmore	James Whitmore	
3576	Jaws	John Williams, composer (John Williams)	John Williams, composer (John Williams)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BWilliams/John%2520Williams_1_1_1597170495.jpg?itok=GsnrkP98
3577	The Wiz	Charlie Smalls, composer; Jerry Wexler, producer (Stephanie Mills, Dee Dee Bridgewater)	Charlie Smalls, composer; Jerry Wexler, producer (Stephanie Mills, Dee Dee Bridgewater)	
3578	Beethoven: Symphonies (9) Complete	Georg Solti, artist; Raymond Minshull, producer	Georg Solti, artist; Raymond Minshull, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3579	Ravel: Daphnis Et Chloe (Complete Ballet)	(New York Philharmonic)	(New York Philharmonic)	
3580	Mozart: Cosi Fan Tutte	Colin Davis; Erik Smith, producer (Royal Opera House Orchestra - Covent Garden)	Colin Davis; Erik Smith, producer (Royal Opera House Orchestra - Covent Garden)	
3581	Schubert: Trios Nos. 1 In B Flat, Op. 99 And 2 In E Flat, Op. 100 (Piano Trios)	Pierre Fournier, Artur Rubinstein & Henryk Szeryng, artists	Pierre Fournier, Artur Rubinstein & Henryk Szeryng, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henryk%2BSzeryng/Henryk%2520Szeryng_1_1_1597165049.jpg?itok=j8Ljx6qk
3582	Ravel: Concerto For Left Hand And Concerto For Piano In G/Faure: Fantaisie For Piano And Orchestra	Alicia De Larrocha, artist (London Philharmonic)	Alicia De Larrocha, artist (London Philharmonic)	
3583	Bach: Sonatas And Partitas For Violin Unaccompanied	Nathan Milstein, artist	Nathan Milstein, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nathan%2BMilstein/Nathan%2520Milstein_1_1_1597163874.jpg?itok=DIw0j6I4
3584	Mahler: Kindertotenlieder	(Israel Philharmonic Orchestra)	(Israel Philharmonic Orchestra)	
3585	I Honestly Love You	Olivia Newton-John	John Farrar, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Olivia%2BNewton-John/Olivia%2520Newton-John_1_1_1575370845.jpg?itok=SO4aU4ch
3586	Fulfillingness' First Finale	Stevie Wonder	Stevie Wonder, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3587	The Way We Were	Alan Bergman, Marilyn Bergman & Marvin Hamlisch, songwriters (Barbra Streisand)	Alan Bergman, Marilyn Bergman & Marvin Hamlisch, songwriters (Barbra Streisand)	
3588	Marvin Hamlisch	Marvin Hamlisch		
3589	Threshold	Pat Williams, arranger (Pat Williams)	Pat Williams, arranger (Pat Williams)	
3590	Down To You	Joni Mitchell & Tom Scott, arrangers (Joni Mitchell)	Joni Mitchell & Tom Scott, arrangers (Joni Mitchell)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
3591	Band On The Run	Geoff E. Emerick, engineer (Paul McCartney & Wings)	Geoff E. Emerick, engineer (Paul McCartney & Wings)	
3592	Come And Gone	Ed Thrasher & Christopher Whorf, art directors (Mason Proffit)	Ed Thrasher & Christopher Whorf, art directors (Mason Proffit)	
3593	For The Last Time	Charles R. Townsend, album notes writer (Bob Wills & His Texas Playboys)	Charles R. Townsend, album notes writer (Bob Wills & His Texas Playboys)	
3594	The Hawk Flies	Dan Morgenstern, album notes writer (Coleman Hawkins)	Dan Morgenstern, album notes writer (Coleman Hawkins)	
3595	Korngold: The Classic Erich Wolfgang Korngold	Rory Guy, album notes writer (Hoelscher/Mattes)	Rory Guy, album notes writer (Hoelscher/Mattes)	
3596	Thom Bell	Thom Bell		
3597	First Recordings!	Charlie Parker, soloist	Charlie Parker, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BParker/Charlie%2520Parker_1_1_1575370263.jpg?itok=6cuctHhT
3598	The Trio	Joe Pass, Oscar Peterson & Niels Pedersen	Joe Pass, Oscar Peterson & Niels Pedersen	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Oscar%2BPeterson/Oscar%2520Peterson_1_1_1592209419.jpg?itok=dV8s6dYI
3599	Thundering Herd	Woody Herman	Woody Herman	
3600	Ain't Nothing Like The Real Thing	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3601	Boogie On Reggae Woman	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3602	Tell Me Something Good	Rufus	Rufus	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rufus/Rufus_1_1_1596790798.jpg?itok=FDAkq2Au
3603	The Sound Of Philadelphia	MFSB	MFSB	
3604	In The Ghetto	James Cleveland & The Southern California Community Choir	James Cleveland & The Southern California Community Choir	
3605	Love Song	Anne Murray	Anne Murray	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anne%2BMurray/Anne%2520Murray_1_1_1581558822.jpg?itok=dBGIF4ua
3606	Please Don't Tell Me How The Story Ends	Ronnie Milsap	Ronnie Milsap	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ronnie%2BMilsap/Ronnie%2520Milsap_1_1_1596797352.jpg?itok=57PvBMaN
3607	Fairytale	The Pointer Sisters	The Pointer Sisters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pointer%2BSisters/Pointer%2520Sisters_1_1_1581553578.jpg?itok=e1wr3-UF
3608	The Atkins-Travis Traveling Show	Chet Atkins & Merle Travis	Chet Atkins & Merle Travis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3609	A Very Special Love Song	Billy Sherrill & Norris Wilson, songwriters (Charlie Rich)	Billy Sherrill & Norris Wilson, songwriters (Charlie Rich)	
3610	How Great Thou Art	Elvis Presley	Elvis Presley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elvis%2BPresley/ELVIS%2520PRESLEY_1_1_1591112954.jpg?itok=FMXMJvAW
3611	The Baptism Of Jesse Taylor	The Oak Ridge Boys	The Oak Ridge Boys	
3612	Two Days In November	Merle Watson & Doc Watson	Merle Watson & Doc Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
3613	Winnie The Pooh And Tigger Too	Sterling Holloway, Sebastian Cabot & Paul Winchell	Sterling Holloway, Sebastian Cabot & Paul Winchell	
3614	That Nigger's Crazy	Richard Pryor	Richard Pryor	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BPryor/Richard%2520Pryor_1_1_1581555156.jpg?itok=695RqheM
3615	Good Evening	Dudley Moore & Peter Cook	Dudley Moore & Peter Cook	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dudley%2BMoore/Dudley%2520Moore_1_1_1581630915.jpg?itok=R_YdDr_t
3616	Tubular Bells - Theme From The Exorcist	Mike Oldfield, composer (Mike Oldfield)	Mike Oldfield, composer (Mike Oldfield)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mike%2BOldfield/Mike%2520Oldfield_1_1_1575370065.jpg?itok=3T_DkRO2
3617	Raisin	Robert Brittan & Judd Woldin, composers; Thomas Z. Shepard, producer (Virginia Capers, Joe Morton, Ernestine Jackson, Robert Jackson, Deborah Allen, Helen Martin)	Robert Brittan & Judd Woldin, composers; Thomas Z. Shepard, producer (Virginia Capers, Joe Morton, Ernestine Jackson, Robert Jackson, Deborah Allen, Helen Martin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Judd%2BWoldin/Judd%2520Woldin_1_1_1581562921.jpg?itok=DyRGB_nm
3618	Berlioz: Symphonie Fantastique	Georg Solti, artist; David Harvey, producer	Georg Solti, artist; David Harvey, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3619	Puccini: La Boheme	Georg Solti; Richard Mohr, producer (London Philharmonic)	Georg Solti; Richard Mohr, producer (London Philharmonic)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3620	Berlioz: The Damnation Of Faust	(Ambrosian Singers, London Symphony Chorus & Wandsworth School Boys Choir; London Symphony Orchestra)	(Ambrosian Singers, London Symphony Chorus & Wandsworth School Boys Choir; London Symphony Orchestra)	
3621	Brahms: Trios (Complete)/Schumann: Trio No. 1 In D Minor	Pierre Fournier, Artur Rubinstein & Henryk Szeryng, artists	Pierre Fournier, Artur Rubinstein & Henryk Szeryng, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henryk%2BSzeryng/Henryk%2520Szeryng_1_1_1597165049.jpg?itok=j8Ljx6qk
3622	Shostakovich: Violin Concerto No. 1	David Oistrakh, artist (New Philharmonia)	David Oistrakh, artist (New Philharmonia)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/David%2BOistrakh/David%2520Oistrakh_1_1_1597180380.jpg?itok=lh6_Ixmg
3623	Albeniz: Iberia	Alicia De Larrocha, artist	Alicia De Larrocha, artist	
3624	Leontyne Price Sings Richard Strauss	Leontyne Price Sings Richard Strauss		
3625	Innervisions	Stevie Wonder	Stevie Wonder, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3626	Bette Midler	Bette Midler		
3627	Summer In The City	Quincy Jones, arranger (Quincy Jones)	Quincy Jones, arranger (Quincy Jones)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3628	Live And Let Die	George Martin, arranger (Paul McCartney & Wings)	George Martin, arranger (Paul McCartney & Wings)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgemartin-spotlight-514811100.png?itok=b-Se_ovM
3629	Tommy	Wilkes And Braun, art director (London Symphony Orchestra/Chamber Choir)	Wilkes And Braun, art director (London Symphony Orchestra/Chamber Choir)	
3630	God Is In The House	Dan Morgenstern, album notes writer (Art Tatum)	Dan Morgenstern, album notes writer (Art Tatum)	
3631	Hindemith: Sonatas For Piano	Glenn Gould, album notes writer (Glenn Gould, piano)	Glenn Gould, album notes writer (Glenn Gould, piano)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glenn%2BGould/Glenn%2520Gould_1_1_1581551795.jpg?itok=K1HEBqat
3632	Supersax Plays Bird	Supersax	Supersax	
3633	Giant Steps	Woody Herman	Woody Herman	
3634	You Are The Sunshine Of My Life	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3635	Neither One Of Us (Wants To Be The First To Say Goodbye)	Gladys Knight & The Pips	Gladys Knight & The Pips	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gladys%2BKnight/Gladys%2520Knight_1_1_1575359715.jpg?itok=5ulEHeck
3636	Also Sprach Zarathustra (2001)	Eumir Deodato	Eumir Deodato	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eumir%2BDeodato/Eumir%2520Deodato_1_1_1596445034.jpg?itok=DWCw4oEC
3637	Master Of Eyes	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3638	Superstition	Stevie Wonder	Stevie Wonder	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stevie%2BWonder/Stevie%2520Wonder_1_1_1581552061.jpg?itok=nuRak4iN
3639	Midnight Train To Georgia	Gladys Knight & The Pips	Gladys Knight & The Pips	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gladys%2BKnight/Gladys%2520Knight_1_1_1575359715.jpg?itok=5ulEHeck
3640	Hang On Sloopy	Ramsey Lewis	Ramsey Lewis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramsey%2BLewis/Ramsey%2520Lewis_1_1_1575362694.jpg?itok=OIxa-CF8
3641	Loves Me Like A Rock	Dixie Hummingbirds	Dixie Hummingbirds	
3642	Let Me Be There	Olivia Newton-John	Olivia Newton-John	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Olivia%2BNewton-John/Olivia%2520Newton-John_1_1_1575370845.jpg?itok=SO4aU4ch
3643	Behind Closed Doors	Charlie Rich	Charlie Rich	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BRich/Charlie%2520Rich_1_1_1596794674.jpg?itok=d1E8-sXW
3644	From The Bottle To The Bottom	Kris Kristofferson & Rita Coolidge	Kris Kristofferson & Rita Coolidge	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Kris%2BKristofferson/Kris%2520Kristofferson_1_1_1599567520Muzooka.jpg?itok=Tq5Gb2GO
3645	Dueling Banjos	Steve Mandell & Eric Weissberg	Steve Mandell & Eric Weissberg	
3646	Let's Just Praise The Lord	The Bill Gaither Trio	The Bill Gaither Trio	
3647	Release Me (From My Sin)	Blackwood Brothers	Blackwood Brothers	
3648	Then And Now	Doc Watson	Doc Watson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Doc%2BWatson/Doc%2520Watson_1_1_1581561835.jpg?itok=7xnqBiAY
3649	Sesame Street Live	(Sesame Street Cast)	(Sesame Street Cast)	
3650	Los Cochinos	Cheech & Chong	Cheech & Chong	
3651	Jonathan Livingston Seagull	Richard Harris	Richard Harris	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BHarris/Richard%2520Harris_1_1_1597055317.jpg?itok=g1vr5qj-
3652	Last Tango In Paris	Gato Barbieri, composer (Chuck Mangione and also Herb Alpert)	Gato Barbieri, composer (Chuck Mangione and also Herb Alpert)	
3653	A Little Night Music	Stephen Sondheim, composer; Goddard Lieberson, producer (Glynis Johns,Len Cariou,Hermoine Gingold,Victoria  Mallory, Patricia Elliott, Teri Ralston)	Stephen Sondheim, composer; Goddard Lieberson, producer (Glynis Johns,Len Cariou,Hermoine Gingold,Victoria  Mallory, Patricia Elliott, Teri Ralston)	
3654	Bartók: Concerto For Orchestra	Pierre Boulez, artist; Thomas Z. Shepard, producer	Pierre Boulez, artist; Thomas Z. Shepard, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Pierre%2BBoulez/Pierre%2520Boulez_1_1_1581628599.jpg?itok=e0nGSLW9
3655	Walton: Belshazzer's Feast	(London Symphony Chorus; London Symphony Orchestra)	(London Symphony Chorus; London Symphony Orchestra)	
3656	Joplin: The Red Back Book	Gunther Schuller, artist	Gunther Schuller, artist	
3657	Beethoven: Concerti (5) For Piano And Orchestra	Vladimir Ashkenazy, artist (Chicago Symphony Orchestra)	Vladimir Ashkenazy, artist (Chicago Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BAshkenazy/Vladimir%2520Ashkenazy_1_1_1581558450.jpg?itok=GPn9fhiw
3658	Scriabin: Horowitz Plays Scriabin	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3659	Puccini: Heroines	(Sir Edward Downes; New Philharmonia Orchestra)	(Sir Edward Downes; New Philharmonia Orchestra)	
3660	The First Time Ever I Saw Your Face	Roberta Flack	Joel Dorn, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Roberta%2BFlack/Roberta%2520Flack_1_1_1575365614.jpg?itok=xIenBn49
3661	The Concert For Bangla Desh	George Harrison, Ravi Shankar, Bob Dylan, Leon Russell, Ringo Starr, Billy Preston, Eric Clapton & Klaus Voormann	George Harrison & Phil Spector, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BHarrison/George%2520Harrison_1_1_1578385501.jpg?itok=e1pFJtVR
3662	America	America		
3663	Theme From The French Connection	Don Ellis, arranger (Don Ellis Big Band)	Don Ellis, arranger (Don Ellis Big Band)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Don%2BEllis/Don%2520Ellis_1_1_1591238190.jpg?itok=w8bOqf0i
3664	Moods	Armin Steiner, engineer (Neil Diamond)	Armin Steiner, engineer (Neil Diamond)	
3665	The Siegel-Schwall Band	Acy R. Lehman, art director (Siegel-Schwall Band)	Acy R. Lehman, art director (Siegel-Schwall Band)	
3666	Tom T. Hall's Greatest Hits	Tom T. Hall, album notes writer (Tom T. Hall)	Tom T. Hall, album notes writer (Tom T. Hall)	
3667	Vaughan Williams: Symphony No. 2 (A London Symphony)	James Lyons, album notes writer (Andre Previn, conductor)	James Lyons, album notes writer (Andre Previn, conductor)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/James%2BLyons/James%2520Lyons_1_1_1581611585.jpg?itok=8yaW5RGS
3668	Alone At Last	Gary Burton, soloist	Gary Burton, soloist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Gary%2BBurton/Gary%2520Burton_1_1_1581554709.jpg?itok=h13WeAyX
3669	First Light	Freddie Hubbard	Freddie Hubbard	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Freddie%2BHubbard/Freddie%2520Hubbard_1_1_1597176884.jpg?itok=6cRAoEZj
3670	Toga Brava Suite	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3671	I Am Woman	Helen Reddy	Helen Reddy	
3672	Without You	Harry Nilsson	Harry Nilsson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Harry%2BNilsson/Harry%2520Nilsson_1_1_1581555876.jpg?itok=L0rdURXG
3673	Outa-Space	Billy Preston	Billy Preston	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BPreston/Billy%2520Preston_1_1_1581629089.jpg?itok=iTOf8v94
3674	Black Moses	Isaac Hayes	Isaac Hayes	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BHayes/Isaac%2520Hayes_1_1_1581560941.jpg?itok=kLp31ETO
3675	Young, Gifted And Black	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3676	Me And Mrs. Jones	Billy Paul	Billy Paul	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Billy%2BPaul/Billy%2520PAUL_1_1_1581629256.jpg?itok=N69hA_Ue
3677	Papa Was A Rollin' Stone	The Temptations	The Temptations	
3678	Happiest Girl In The Whole USA	Donna Fargo	Donna Fargo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Donna%2BFargo/Donna%2520Fargo_1_1_1581560878.jpg?itok=YSdqsazW
3679	Charley Pride Sings Heart Songs	Charley Pride	Charley Pride	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charley%2BPride/Charley%2520Pride_1_1_1581553435.jpg?itok=QqdQrWk1
3680	Class Of '57	The Statler Brothers	The Statler Brothers	
3681	Charlie McCoy/The Real McCoy	Charlie McCoy	Charlie McCoy	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charlie%2BMcCoy/Charlie%2520McCoy_1_1_1597163270.jpg?itok=E-efcb6j
3682	Kiss An Angel Good Mornin'	Ben Peters, songwriter (Charley Pride)	Ben Peters, songwriter (Charley Pride)	
3683	He Touched Me	Elvis Presley	Elvis Presley	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Elvis%2BPresley/ELVIS%2520PRESLEY_1_1_1591112954.jpg?itok=FMXMJvAW
3684	L-O-V-E	Blackwood Brothers	Blackwood Brothers	
3685	The London Muddy Waters Session	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3686	The Electric Company	Rita Moreno & Bill Cosby	Rita Moreno & Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Rita%2BMoreno/Rita%2520Moreno_1_1_1581554692.jpg?itok=KhI6g-ZM
3687	FM And AM	George Carlin	George Carlin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BCarlin/George%2520Carlin_1_1_1581556826.jpg?itok=nNDxviTK
3688	Lenny	(Original Cast)	(Original Cast)	
3689	Brian's Song	Michel Legrand, composer (Michel Legrand)	Michel Legrand, composer (Michel Legrand)	
3690	The Godfather	Nino Rota, composer (Nino Rota)	Nino Rota, composer (Nino Rota)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nino%2BRota/Nino%2520Rota_1_1_1581556485.jpg?itok=bx4JQnzB
3691	Don't Bother Me, I Can't Cope	Micki Grant, composer; Jerry Ragavoy, producer (Alex Bradford, Hope Clarke, Bobby Hill)	Micki Grant, composer; Jerry Ragavoy, producer (Alex Bradford, Hope Clarke, Bobby Hill)	
3692	Mahler: Symphony No. 8 In E Flat (Symphony Of A Thousand)	Georg Solti, artist; David Harvey, producer	Georg Solti, artist; David Harvey, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3693	Mahler: Symphony No. 7 In E Minor	(Chicago Symphony Orchestra)	(Chicago Symphony Orchestra)	
3694	Berlioz: Benvenuto Cellini	Colin Davis; Erik Smith, producer (BBC Symphony Orchestra)	Colin Davis; Erik Smith, producer (BBC Symphony Orchestra)	
3695	Julian And John (Works By Lawes, Carulli, Albeniz, Granados)	Julian Bream & John Christopher Williams, artists	Julian Bream & John Christopher Williams, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BBream/Julian%2520Bream_1_1_1581629919.jpg?itok=b2MwMsXC
3696	Brahms: Piano Concerto No. 2 In B Flat	Artur Rubinstein, artist (Philadelphia Orchestra)	Artur Rubinstein, artist (Philadelphia Orchestra)	
3697	Horowitz Plays Chopin	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3698	Brahms: Die Schone Magelone	Brahms: Die Schone Magelone		
3699	Mahler: Symphony No. 8 (Symphony Of A Thousand)	Gordon Parry & Kenneth Wilkinson, engineers (Georg Solti, conductor)	Gordon Parry & Kenneth Wilkinson, engineers (Georg Solti, conductor)	
3700	It's Too Late	Carole King	Lou Adler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carole%2BKing/Carole%2520King_1_1_1578385473.jpg?itok=W5y3jRey
3701	Tapestry	Carole King	Lou Adler, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carole%2BKing/Carole%2520King_1_1_1578385473.jpg?itok=W5y3jRey
3702	You've Got A Friend	Carole King, songwriter (Carole King)	Carole King, songwriter (Carole King)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Carole%2BKing/Carole%2520King_1_1_1578385473.jpg?itok=W5y3jRey
3703	Carly Simon	Carly Simon		
3704	Theme From Shaft	Johnny Allen & Isaac Hayes, arrangers (Isaac Hayes)	Johnny Allen & Isaac Hayes, arrangers (Isaac Hayes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BHayes/Isaac%2520Hayes_1_1_1581560941.jpg?itok=kLp31ETO
3705	Uncle Albert/Admiral Halsey	Paul McCartney, arranger (Paul & Linda McCartney)	Paul McCartney, arranger (Paul & Linda McCartney)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
3706	Pollution	Gene Brownell, photographer; Dean O. Torrence, art director (Pollution)	Gene Brownell, photographer; Dean O. Torrence, art director (Pollution)	
3707	Sam, Hard And Heavy	Sam Samudio, album notes writer (Sam Samudio)	Sam Samudio, album notes writer (Sam Samudio)	
3708	Carpenters	Carpenters	Carpenters	
3709	Smackwater Jack	Quincy Jones	Quincy Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3710	Bridge Over Troubled Water	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3711	A Natural Man	Lou Rawls	Lou Rawls	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lou%2BRawls/Lou%2520Rawls_1_1_1597164484.jpg?itok=LU9XRMFA
3712	Proud Mary	Ike & Tina Turner	Ike & Tina Turner	
3713	Ain't No Sunshine	Bill Withers, songwriter (Bill Withers)	Bill Withers, songwriter (Bill Withers)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BWithers/Bill%2520Withers_1_1_1575364519.jpg?itok=uzujWDSf
3714	Put Your Hand In The Hand Of The Man From Galilee	Shirley Caesar	Shirley Caesar	https://www.grammy.com/sites/com/files/styles/artist_circle/public/shirley_caesar_spotlight_543440012.png?itok=GvEA0Lyt
3715	Help Me Make It Through The Night	Sammi Smith	Sammi Smith	
3716	When You're Hot, You're Hot	Jerry Reed	Jerry Reed	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jerry%2BReed/Jerry%2520Reed_1_1_1597179593.jpg?itok=ctcj1eBI
3717	After The Fire Is Gone	Conway Twitty & Loretta Lynn	Conway Twitty & Loretta Lynn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Conway%2BTwitty/Conway%2520Twitty_1_1_1599744716Muzooka.jpg?itok=THGrhK6i
3718	Snowbird	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3719	Did You Think To Pray	Charley Pride	Charley Pride	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charley%2BPride/Charley%2520Pride_1_1_1581553435.jpg?itok=QqdQrWk1
3720	Let Me Live	Charley Pride	Charley Pride	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Charley%2BPride/Charley%2520Pride_1_1_1581553435.jpg?itok=QqdQrWk1
3721	They Call Me Muddy Waters	Muddy Waters	Muddy Waters	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Muddy%2BWaters/Muddy%2520Waters_1_1_1581565499.jpg?itok=HtSZROdq
3722	Theme From Summer Of '42	Michel Legrand, composer (Michel Legrand)	Michel Legrand, composer (Michel Legrand)	
3723	Shaft	Isaac Hayes, composer (Isaac Hayes)	Isaac Hayes, composer (Isaac Hayes)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BHayes/Isaac%2520Hayes_1_1_1581560941.jpg?itok=kLp31ETO
3724	Godspell	Stephen Schwartz, composer; Stephen Schwartz, producer (Original Cast)	Stephen Schwartz, composer; Stephen Schwartz, producer (Original Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stephen%2BSchwartz/Stephen%2520Schwartz_1_1_1581564186.jpg?itok=AR2hk_XA
3725	Bill Cosby Talks To Kids About Drugs	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3728	The Bill Evans Album	Bill Evans Trio	Bill Evans Trio	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3729	New Orleans Suite	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3730	Horowitz Plays Rachmaninoff (Etudes-Tableaux Piano Music; Sonatas)	Vladimir Horowitz, artist; Thomas Frost & Richard Killough, producers	Vladimir Horowitz, artist; Thomas Frost & Richard Killough, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3731	Mahler: Symphony No. 1 In D	(Chicago Symphony Orchestra)	(Chicago Symphony Orchestra)	
3732	Villa-Lobos: Concerto For Guitar	Julian Bream, artist (London Symphony Orchestra)	Julian Bream, artist (London Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BBream/Julian%2520Bream_1_1_1581629919.jpg?itok=b2MwMsXC
3733	Debussy: Quartet In G Minor/Ravel: Quartet In F	Juilliard String Quartet (Claus Adam, Earl Carlyss, Robert Mann & Samuel Rhodes), artists	Juilliard String Quartet (Claus Adam, Earl Carlyss, Robert Mann & Samuel Rhodes), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juilliard%2BString%2BQuartet/Juilliard%2520String%2520Quartet_1_1_1575360665.jpg?itok=8v2l9Vwk
3734	Verdi: Aida	Erich Leinsdorf; Richard Mohr, producer (John Aldis Choir; London Symphony Orchestra)	Erich Leinsdorf; Richard Mohr, producer (John Aldis Choir; London Symphony Orchestra)	
3735	Leontyne Price Sings Robert Schumann	Leontyne Price Sings Robert Schumann		
3736	Theme From "Z"	Henry Mancini, arranger (Henry Mancini)	Henry Mancini, arranger (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3737	Indianola Mississippi Seeds	Ivan Nagy, photographer (B.B. King)	Ivan Nagy, photographer (B.B. King)	
3738	The World's Greatest Blues Singer	Chris Albertson, album notes writer (Bessie Smith)	Chris Albertson, album notes writer (Bessie Smith)	
3739	I'll Never Fall In Love Again	Dionne Warwick	Dionne Warwick	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dionne%2BWarwick/Dionne%2520Warwick_1_1_1598445549.jpg?itok=5-l3UeVo
3740	Everything Is Beautiful	Ray Stevens	Ray Stevens	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BStevens/Ray%2520Stevens_1_1_1581552303.jpg?itok=QDM889F3
3741	Close To You	Carpenters	Carpenters	
3742	Theme From "Z" And Other Film Music	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3743	Don't Play That Song	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3744	The Thrill Is Gone	B.B. King	B.B. King	https://www.grammy.com/sites/com/files/styles/artist_circle/public/bbking-spotlight-166779471.png?itok=TaNC-gCJ
3745	Didn't I (Blow Your Mind This Time)	The Delfonics	The Delfonics	
3746	Patches	Ronald Dunbar & General Johnson, songwriters (Clarence Carter)	Ronald Dunbar & General Johnson, songwriters (Clarence Carter)	
3747	Every Man Wants To Be Free	Edwin Hawkins Singers	Edwin Hawkins Singers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Edwin%2BHawkins/Edwin%2520Hawkins_1_1_1581618310.jpg?itok=asaK95Rx
3748	Rose Garden	Lynn Anderson	Lynn Anderson	
3749	For The Good Times	Ray Price	Ray Price	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BPrice/Ray%2520Price_1_1_1581629316.jpg?itok=Zk7D5rGT
3750	If I Were A Carpenter	Johnny Cash And June Carter	Johnny Cash And June Carter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3751	Me And Jerry	Jerry Reed & Chet Atkins	Jerry Reed & Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jerry%2BReed/Jerry%2520Reed_1_1_1597179593.jpg?itok=ctcj1eBI
3752	My Woman, My Woman, My Wife	Marty Robbins, songwriter (Marty Robbins)	Marty Robbins, songwriter (Marty Robbins)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marty%2BRobbins/Marty%2520Robbins_1_1_1581564893.jpg?itok=rTExcNqk
3753	Talk About The Good Times	The Oak Ridge Boys	The Oak Ridge Boys	
3754	Good Feelin'	T-Bone Walker	T-Bone Walker	
3755	Airport Love Theme	Alfred Newman, composer (Alfred Newman)	Alfred Newman, composer (Alfred Newman)	
3756	Let It Be	George Harrison, John Lennon, Paul McCartney & Ringo Starr, composers (The Beatles)	George Harrison, John Lennon, Paul McCartney & Ringo Starr, composers (The Beatles)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BHarrison/George%2520Harrison_1_1_1578385501.jpg?itok=e1pFJtVR
3757	Company	Stephen Sondheim, composer; Thomas Z. Shepard, producer (Dean Jones, Barbara Barrie, George Coe, Teri Rolston, John Cunningham, Beth Howland)	Stephen Sondheim, composer; Thomas Z. Shepard, producer (Dean Jones, Barbara Barrie, George Coe, Teri Rolston, John Cunningham, Beth Howland)	
3758	Sesame Street	(The Muppets)	(The Muppets)	
3759	The Devil Made Me Buy This Dress	Flip Wilson	Flip Wilson	
3760	Why I Oppose The War In Vietnam	Martin Luther King Jr.	Martin Luther King Jr.	
3761	Alone	Bill Evans	Bill Evans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3762	Bitches Brew	Miles Davis	Miles Davis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
3763	Stravinsky: Le Sacre Du Printemps	(Cleveland Orchestra)	(Cleveland Orchestra)	
3764	Brahms: Double Concerto (Concerto In A Minor For Violin And Cello)	(Cleveland Orchestra)	(Cleveland Orchestra)	
3765	Schubert: Lieder	Schubert: Lieder		
3766	Ives: New Music Of Charles Ives	(Gregg Smith Singers; Columbia Chamber Ensemble)	(Gregg Smith Singers; Columbia Chamber Ensemble)	
3767	Aquarius/Let The Sunshine In (The Flesh Failures)	5th Dimension	Bones Howe, producer	
3768	Blood, Sweat And Tears	Blood, Sweat And Tears	James William Guercio, producer	
3769	Games People Play	Joe South, songwriter (Joe South)	Joe South, songwriter (Joe South)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BSouth/Joe%2520South_1_1_1597163783.jpg?itok=kg-9VNol
3771	Love Theme From Romeo And Juliet	Henry Mancini, arranger (Henry Mancini)	Henry Mancini, arranger (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3772	Spinning Wheel	Fred Lipsius, arranger (Blood, Sweat And Tears)	Fred Lipsius, arranger (Blood, Sweat And Tears)	
3773	Abbey Road	Geoff E. Emerick & Philip McDonald, engineers (The Beatles)	Geoff E. Emerick & Philip McDonald, engineers (The Beatles)	
3774	America The Beautiful	(Gary McFarland)	(Gary McFarland)	
3775	Nashville Skyline	Johnny Cash, album notes writer (Bob Dylan)	Johnny Cash, album notes writer (Bob Dylan)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3776	Is That All There Is?	Peggy Lee	Peggy Lee	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peggy%2BLee/Peggy%2520Lee_1_1_1597170757.jpg?itok=JE5Wxs9L
3777	Everybody's Talkin'	Harry Nilsson	Harry Nilsson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Harry%2BNilsson/Harry%2520Nilsson_1_1_1581555876.jpg?itok=L0rdURXG
3778	Variations On A Theme By Eric Satie	Blood, Sweat And Tears	Blood, Sweat And Tears	
3779	Share Your Love With Me	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3780	The Chokin' Kind	Joe Simon	Joe Simon	
3781	It's Your Thing	Isley Brothers	Isley Brothers	
3782	Color Him Father	Richard Spencer, songwriter (The Winstons)	Richard Spencer, songwriter (The Winstons)	
3783	Stand By Your Man	Tammy Wynette	Tammy Wynette	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tammy%2BWynette/Tammy%2520Wynette_1_1_1581553638.jpg?itok=TcUA1XDM
3784	A Boy Named Sue	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3785	MacArthur Park	Waylon Jennings & The Kimberlys	Waylon Jennings & The Kimberlys	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Waylon%2BJennings/Waylon%2520Jennings_1_1_1575363981.jpg?itok=ZGBdkCXs
3786	The Nashville Brass Featuring Danny Davis Play More Nashville Sounds	Nashville Brass With Danny Davis	Nashville Brass With Danny Davis	
3787	Ain't That Beautiful Singing	Jake Hess	Jake Hess	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jake%2BHess/Jake%2520Hess_1_1_1597163227.jpg?itok=P11286gQ
3788	In Gospel Country	Porter Wagoner & The Blackwood Brothers	Porter Wagoner & The Blackwood Brothers	
3789	Clouds	Joni Mitchell	Joni Mitchell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joni%2BMitchell/Joni%2520Mitchell_1_1_1596100199.jpg?itok=z3JTTtqh
3790	Midnight Cowboy	John Barry, composer (John Barry)	John Barry, composer (John Barry)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BBarry/John%2520Barry_1_1_1597166253.jpg?itok=9rE8j65y
3791	Butch Cassidy And The Sundance Kid	Burt Bacharach, composer (Burt Bacharach)	Burt Bacharach, composer (Burt Bacharach)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burt%2BBacharach/Burt%2520Bacharach_1_1_1591113039.jpg?itok=N0i73S23
3792	Promises, Promises	Burt Bacharach & Hal David, composers; Henry Jerome & Phil Ramone, producers (Jerry Orbach, Jill O'Hara, Edward Winter, Donna McKecknie, A .L. Hines, Marian Mercer, Paul Reed)	Burt Bacharach & Hal David, composers; Henry Jerome & Phil Ramone, producers (Jerry Orbach, Jill O'Hara, Edward Winter, Donna McKecknie, A .L. Hines, Marian Mercer, Paul Reed)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burt%2BBacharach/Burt%2520Bacharach_1_1_1591113039.jpg?itok=N0i73S23
3793	Peter, Paul And Mommy	Peter, Paul And Mary	Peter, Paul And Mary	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%252C%2BPaul%2BAnd%2BMary/Peter%252C%2520Paul%2520and%2520Mary_1_1_1581553680.jpg?itok=uTzNcbWd
3794	Bill Cosby	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3795	We Love You Call Collect	Art Linkletter & Diane Linkletter	Art Linkletter & Diane Linkletter	
3796	Willow Weep For Me	Wes Montgomery	Wes Montgomery	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wes%2BMontgomery/Wes%2520Montgomery_1_1_1575370691.jpg?itok=_lmg2vv1
3797	Walking In Space	Quincy Jones	Quincy Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3798	Switched-On-Bach	Walter Carlos, artist; Rachel Elkind, producer	Walter Carlos, artist; Rachel Elkind, producer	
3799	Boulez Conducts Debussy, Vol. 2 "Images Pour Orchestre"	(Cleveland Orchestra)	(Cleveland Orchestra)	
3800	Gabrieli: Antiphonal Music Of Gabrieli	Chicago Brass Ensemble, Cleveland Brass Ensemble & Philadelphia Brass Ensemble, artists	Chicago Brass Ensemble, Cleveland Brass Ensemble & Philadelphia Brass Ensemble, artists	
3801	Wagner: Siegfried	Herbert von Karajan; Otto Gerdes, producer (Berlin Philharmonic Orchestra)	Herbert von Karajan; Otto Gerdes, producer (Berlin Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herbert%2Bvon%2BKarajan/Herbert%2520von%2520Karajan_1_1_1581553947.jpg?itok=ltfnPUW-
3802	Berio: Sinfonia	(Swingle Singers; New York Philharmonic)	(Swingle Singers; New York Philharmonic)	
3803	Barber: Two Scenes From Antony And Cleopatra/Knoxville: Summer Of 1915	(New Philharmonia)	(New Philharmonia)	
3804	Switched-on Bach	Walter Carlos, engineer (Walter Carlos)	Walter Carlos, engineer (Walter Carlos)	
3805	Mrs. Robinson	Simon And Garfunkel	Roy Halee & Simon And Garfunkel (Art Garfunkel & Paul Simon), producers	
3806	By The Time I Get To Phoenix	Glen Campbell	Al De Lory, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Glen%2BCampbell/Glen%2520Campbell_1_1_1598615569.jpg?itok=n3Jc20ht
3807	Little Green Apples	Bobby Russell, songwriter (Roger Miller AND ALSO O.C. Smith)	Bobby Russell, songwriter (Roger Miller AND ALSO O.C. Smith)	
3808	Jose Feliciano	Jose Feliciano		
3809	Classical Gas	Mike Post, arranger (Mason Williams)	Mike Post, arranger (Mason Williams)	
3810	Mac Arthur Park	Jimmy L. Webb, arranger (Richard Harris)	Jimmy L. Webb, arranger (Richard Harris)	
3811	Wichita Lineman	Hugh Davies & Joe Polito, engineers (Glen Campbell)	Hugh Davies & Joe Polito, engineers (Glen Campbell)	
3812	Underground	Horn Grinner Studios, photographer; John Berg & Richard Mantel, art directors (Thelonious Monk)	Horn Grinner Studios, photographer; John Berg & Richard Mantel, art directors (Thelonious Monk)	
3813	Johnny Cash At Folsom Prison	Johnny Cash, album notes writer (Johnny Cash)	Johnny Cash, album notes writer (Johnny Cash)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3814	Do You Know The Way To San Jose?	Dionne Warwick	Dionne Warwick	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dionne%2BWarwick/Dionne%2520Warwick_1_1_1598445549.jpg?itok=5-l3UeVo
3815	Light My Fire	Jose Feliciano	Jose Feliciano	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jose%2BFeliciano/Jos%25C3%25A9%2520Feliciano_1_1_1581625803.jpg?itok=xqdsfMbW
3816	Mission Impossible/Norwegian Wood Medley	Alan Copeland Singers	Alan Copeland Singers	
3817	Chain Of Fools	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3818	(Sittin' On) The Dock Of The Bay	Otis Redding	Otis Redding	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Otis%2BRedding/Otis%2520Redding_1_1_1581553653.jpg?itok=l0CaYLgz
3819	Cloud Nine	The Temptations	The Temptations	
3820	Harper Valley P.T.A.	Jeannie C. Riley	Jeannie C. Riley	
3821	Folsom Prison Blues	Johnny Cash	Johnny Cash	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3822	Beautiful Isle Of Somewhere	Jake Hess	Jake Hess	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jake%2BHess/Jake%2520Hess_1_1_1597163227.jpg?itok=P11286gQ
3823	The Happy Gospel Of The Happy Goodmans	The Happy Goodman Family	The Happy Goodman Family	
3824	The Soul Of Me	Dottie Rambo	Dottie Rambo	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dottie%2BRambo/Dottie%2520Rambo_1_1_1581552301.jpg?itok=ssa1cMnu
3825	The Graduate	Dave Grusin & Paul Simon, composers (Simon And Garfunkel)	Dave Grusin & Paul Simon, composers (Simon And Garfunkel)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dave%2BGrusin/Dave%2520Grusin_1_1_1591261102.jpg?itok=s4GeD_Sf
3826	Hair	Galt MacDermott, James Rado & Gerome Ragni, composers; Andy Wiswell, producer (Ronnie Dyson, Gerome Ragni, Steve Curry, Lamont Washington, Diane Keaton, Melba Moore, James Rado)	Galt MacDermott, James Rado & Gerome Ragni, composers; Andy Wiswell, producer (Ronnie Dyson, Gerome Ragni, Steve Curry, Lamont Washington, Diane Keaton, Melba Moore, James Rado)	
3827	To Russell, My Brother, Whom I Slept With	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3828	Lonesome Cities	Rod McKuen	Rod McKuen	
3829	Bill Evans At The Montreux Jazz Festival	Bill Evans Trio	Bill Evans Trio	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3830	And His Mother Called Him Bill	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3831	Boulez Conducts Debussy (La Mer; Prelude A L'Apres-Midi D'Un Faune; Jeux)	(New Philharmonia Orchestra)	(New Philharmonia Orchestra)	
3832	Glory Of Gabrieli Vol. II - Canzonas For Brass, Winds, Strings And Organ	E. Power Biggs, Vittorio Negri & Edward Tarr Brass Ensemble, artists	E. Power Biggs, Vittorio Negri & Edward Tarr Brass Ensemble, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/E.%2BPower%2BBiggs/E.%2520Power%2520Biggs_1_1_1597166195.jpg?itok=osyWH5_y
3833	Horowitz On Television (Chopin, Scriabin, Scarlatti, Horowitz)	Horowitz On Television (Chopin, Scriabin, Scarlatti, Horowitz)		
3834	The Glory Of Gabrieli	(Gregg Smith Singers & Texas Boys Choir)	(Gregg Smith Singers & Texas Boys Choir)	
3835	Rossini: Rarities	(RCA Italiana Opera Orchestra)	(RCA Italiana Opera Orchestra)	
3836	Up, Up And Away	5th Dimension	Marc Gordon & Johnny Rivers, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marc%2BGordon/Marc%2520Gordon_1_1_1581629305.jpg?itok=4IiRmFSP
3837	Sgt. Pepper's Lonely Hearts Club Band	The Beatles	George Martin, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBeatles/The%2520Beatles_1_1_1591112972.jpg?itok=KFRZmETY
3838	Mission: Impossible	Lalo Schifrin, composer (Lalo Schifrin)	Lalo Schifrin, composer (Lalo Schifrin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalo%2BSchifrin/Lalo%2520Schifrin_1_1_1592918715.jpg?itok=MnWukFK-
3839	Ode To Billie Joe	Bobbie Gentry	Bobbie Gentry	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobbie%2BGentry/Bobbie%2520Gentry_1_1_1581612260.jpg?itok=sGki0NRA
3840	Chet Atkins Picks The Best	Chet Atkins	Chet Atkins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chet%2BAtkins/Chet%2520Atkins_1_1_1597170990.jpg?itok=LsD8ActA
3841	Cabaret	Fred Ebb & John Kander, composers; Goddard Lieberson, producer (Joel Grey, Lotte Lenya, Jill Haworth, Jack Gilford , Bert Convy)	Fred Ebb & John Kander, composers; Goddard Lieberson, producer (Joel Grey, Lotte Lenya, Jill Haworth, Jack Gilford , Bert Convy)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Fred%2BEbb/Fred%2520Ebb_1_1_1597165942.jpg?itok=9a7mapls
3842	Revenge	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3843	Bobbie Gentry	Bobbie Gentry		
3844	Mercy, Mercy, Mercy	Cannonball Adderley Quintet	Cannonball Adderley Quintet	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cannonball%2BAdderley/Cannonball%2520Adderley_1_1_1581557902.jpg?itok=Zf_DrrRm
3845	Far East Suite	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3846	Respect	Aretha Franklin	Aretha Franklin	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Aretha%2BFranklin/Aretha%2520Franklin_1_1_1591112963.jpg?itok=w4h0Oc8A
3847	Dead End Street	Lou Rawls	Lou Rawls	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lou%2BRawls/Lou%2520Rawls_1_1_1597164484.jpg?itok=LU9XRMFA
3848	Soul Man	Sam And Dave	Sam And Dave	
3849	More Grand Old Gospel	Porter Wagoner And The Blackwood Brothers Quartet	Porter Wagoner And The Blackwood Brothers Quartet	
3850	I Don't Wanna Play House	Tammy Wynette	Tammy Wynette	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tammy%2BWynette/Tammy%2520Wynette_1_1_1581553638.jpg?itok=TcUA1XDM
3851	Jackson	Johnny Cash & June Carter	Johnny Cash & June Carter	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Johnny%2BCash/Johnny%2520Cash_1_1_1581553523.jpg?itok=M0sTVaoF
3852	Gallant Men	Everett M. Dirksen	Everett M. Dirksen	
3853	Dr. Seuss: How The Grinch Stole Christmas	Boris Karloff	Boris Karloff	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Boris%2BKarloff/Boris%2520Karloff_1_1_1581564926.jpg?itok=tUF40LQY
3854	Alfie	Burt Bacharach, arranger (Burt Bacharach)	Burt Bacharach, arranger (Burt Bacharach)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burt%2BBacharach/Burt%2520Bacharach_1_1_1591113039.jpg?itok=N0i73S23
3855	The Glorious Sound Of Brass	Edward (Bud) T. Graham, engineer (Philadelphia Brass Ensemble)	Edward (Bud) T. Graham, engineer (Philadelphia Brass Ensemble)	
3856	Bob Dylan's Greatest Hits	Roland Scherman, photographer; John Berg & Bob (Robert) Cato, art directors (Bob Dylan)	Roland Scherman, photographer; John Berg & Bob (Robert) Cato, art directors (Bob Dylan)	
3857	Suburban Attitudes In Country Verse	John D. Loudermilk, album notes writer (John D. Loudermilk)	John D. Loudermilk, album notes writer (John D. Loudermilk)	
3858	Stravinsky: Firebird And Petrouchka Suites	(Columbia Symphony Orchestra)	(Columbia Symphony Orchestra)	
3859	West Meets East	Yehudi Menuhin & Ravi Shankar, artists	Yehudi Menuhin & Ravi Shankar, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Yehudi%2BMenuhin/Yehudi%2520Menuhin_1_1_1581614981.jpg?itok=Rj1S0C0f
3860	Horowitz In Concert (Haydn, Schumann, Scriabin, Debussy, Mozart, Chopin)	Horowitz In Concert (Haydn, Schumann, Scriabin, Debussy, Mozart, Chopin)		
3861	Mahler: Symphony No. 8 In E Flat Major (Symphony Of A Thousand)	(London Symphony Choir; London Symphony Orchestra)	(London Symphony Choir; London Symphony Orchestra)	
3862	Orff: Catulli Carmina	(Temple University Choir; Philadelphia Orchestra)	(Temple University Choir; Philadelphia Orchestra)	
3863	Prima Donna, Volume 2	(RCA Italiana Opera Orchestra)	(RCA Italiana Opera Orchestra)	
3864	Strangers In The Night	Frank Sinatra	Jimmy Bowen, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
3865	A Man And His Music	Frank Sinatra	Sonny Burke, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
3866	Michelle	John Lennon & Paul McCartney, songwriters (The Beatles)	John Lennon & Paul McCartney, songwriters (The Beatles)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/John%2BLennon/John%2520Lennon_1_1_1591112918.jpg?itok=EIHqVdbg
3867	Batman Theme	Neal Hefti, composer (Neal Hefti)	Neal Hefti, composer (Neal Hefti)	
3868	If He Walked Into My Life	Eydie Gorme	Eydie Gorme	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eydie%2BGorme/Eydie%2520Gorme_1_1_1581619286.jpg?itok=bWYwC8TL
3869	What Now My Love	Herb Alpert And The Tijuana Brass	Herb Alpert And The Tijuana Brass	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Herb%2BAlpert/Herb%2520Alpert_1_1_1581628867.jpg?itok=45UhbQPe
3870	A Man And A Woman	Anita Kerr Singers	Anita Kerr Singers	
3871	Somewhere My Love (Lara's Theme From Dr. Zhivago)	Ray Conniff Singers	Ray Conniff Singers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ray%2BConniff/Ray%2520Conniff_1_1_1597156726.jpg?itok=hqtHsKfD
3872	Dr. Zhivago	Maurice Jarre, composer (Maurice Jarre)	Maurice Jarre, composer (Maurice Jarre)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Maurice%2BJarre/Maurice%2520Jarre_1_1_1581614415.jpg?itok=_hJVroVX
3873	Mame	Jerry Herman, composer (Angela Lansbury, Bea Arthur, Jane Connell, Charles Braswell, Jerry Lanning, Frankie Michaels)	Jerry Herman, composer (Angela Lansbury, Bea Arthur, Jane Connell, Charles Braswell, Jerry Lanning, Frankie Michaels)	
3874	Wonderfulness	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3875	Edward R. Murrow - A Reporter Remembers Vol. I The War Years	Edward R. Murrow	Edward R. Murrow	
3876	Dr. Seuss Presents - "If I Ran The Zoo" And "Sleep Book"	Marvin Miller	Marvin Miller	
3877	Sinatra At The Sands	Stan Cornyn, album notes writer (Frank Sinatra)	Stan Cornyn, album notes writer (Frank Sinatra)	
3878	Goin' Out Of My Head	Wes Montgomery	Wes Montgomery	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Wes%2BMontgomery/Wes%2520Montgomery_1_1_1575370691.jpg?itok=_lmg2vv1
3879	In The Beginning God	Duke Ellington, composer (Duke Ellington)	Duke Ellington, composer (Duke Ellington)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3880	Winchester Cathedral	New Vaudeville Band	New Vaudeville Band	
3881	Eleanor Rigby	Paul McCartney	Paul McCartney	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Paul%2BMcCartney/Paul%2520McCartney_1_1_1591112977.jpg?itok=E0dSZgtJ
3882	Monday, Monday	Mamas And The Papas	Mamas And The Papas	
3883	Crying Time	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
3884	Hold It Right There	Ramsey Lewis	Ramsey Lewis	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramsey%2BLewis/Ramsey%2520Lewis_1_1_1575362694.jpg?itok=OIxa-CF8
3885	Blues In The Street	Cortelia Clark	Cortelia Clark	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Cortelia%2BClark/Cortelia%2520Clark_1_1_1597163308.jpg?itok=GHINI291
3886	Grand Old Gospel	Porter Wagoner And The Blackwood Brothers	Porter Wagoner And The Blackwood Brothers	
3887	Almost Persuaded	David Houston	David Houston	
3888	Don't Touch Me	Jeannie Seely	Jeannie Seely	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jeannie%2BSeely/Jeannie%2520Seely_1_1_1581560136.jpg?itok=w5x6bc3_
3889	Confessions Of A Broken Man	Les Leverette, photographer; Robert M. Jones, art director (Porter Wagoner)	Les Leverette, photographer; Robert M. Jones, art director (Porter Wagoner)	
3890	Revolver	Klaus Voormann, graphic designer	Klaus Voormann, graphic designer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Klaus%2BVoormann/Klaus%2520Voormann_1_1_1575364615.jpg?itok=2-3ZVx4S
3891	Ives: Symphony No. 1 In D Minor	Morton Gould, artist; Howard Scott, producer	Morton Gould, artist; Howard Scott, producer	
3892	Mahler: Symphony No. 6 In A Minor	(Boston Symphony Orchestra)	(Boston Symphony Orchestra)	
3893	Boston Symphony Chamber Players - Works Of Mozart, Brahms, Beethoven, Fine, Copland, Carter, Piston	Boston Symphony Chamber Players, artist	Boston Symphony Chamber Players, artist	
3894	Baroque Guitar (Works Of Bach, Sanz, Weiss, Etc.)	Baroque Guitar (Works Of Bach, Sanz, Weiss, Etc.)		
3895	Wagner: Die Walkure	Georg Solti (Vienna Philharmonic Orchestra)	Georg Solti (Vienna Philharmonic Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/georgsolti-spotlight-78824961.png?itok=rNrB7-r2
3896	Handel: Messiah	(Robert Shaw Chorale; Robert Shaw Orchestra)	(Robert Shaw Chorale; Robert Shaw Orchestra)	
3897	Ives: Music For Chorus	(Ithaca College Concert Choir, Gregg Smith Singers & Texas Boys Choir; Columbia Chamber Orchestra)	(Ithaca College Concert Choir, Gregg Smith Singers & Texas Boys Choir; Columbia Chamber Orchestra)	
3898	Prima Donna (Works Of Barber, Purcell, Etc.)	(RCA Italiana Opera Orchestra)	(RCA Italiana Opera Orchestra)	
3899	September Of My Years	Frank Sinatra	Sonny Burke, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
3900	Horowitz At Carnegie Hall - An Historic Return	Vladimir Horowitz, artist; Thomas Frost, producer	Vladimir Horowitz, artist; Thomas Frost, producer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3901	The Shadow Of Your Smile (Love Theme From "The Sandpiper")	Johnny Mandel & Paul Francis Webster, songwriters (Tony Bennett)	Johnny Mandel & Paul Francis Webster, songwriters (Tony Bennett)	
3902	My Name Is Barbra	Barbra Streisand	Barbra Streisand	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
3903	It Was A Very Good Year	Frank Sinatra	Frank Sinatra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
3904	We Dig Mancini	Anita Kerr Singers	Anita Kerr Singers	
3905	Anyone For Mozart?	Ward Swingle (The Swingle Singers)	Ward Swingle (The Swingle Singers)	
3906	The Sandpiper	Johnny Mandel, composer (Robert Armbruster Orchestra)	Johnny Mandel, composer (Robert Armbruster Orchestra)	
3907	On A Clear Day	Burton Lane & Alan J. Lerner, composers (Barbara Harris, John Cullum, Tito Vandis, Byron Webster, William Daniels)	Burton Lane & Alan J. Lerner, composers (Barbara Harris, John Cullum, Tito Vandis, Byron Webster, William Daniels)	
3908	Why Is There Air?	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3909	John F. Kennedy - As We Remember Him	(John F. Kennedy)	(John F. Kennedy)	
3910	Tom Jones	Tom Jones		
3911	Dr. Seuss Presents "Fox In Sox" And "Green Eggs And Ham"	Marvin Miller	Marvin Miller	
3912	The "In" Crowd	Ramsey Lewis Trio	Ramsey Lewis Trio	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ramsey%2BLewis/Ramsey%2520Lewis_1_1_1575362694.jpg?itok=OIxa-CF8
3913	Ellington '66	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
3914	Jazz Suite On The Mass Texts	Lalo Schifrin, composer (Paul Horn)	Lalo Schifrin, composer (Paul Horn)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalo%2BSchifrin/Lalo%2520Schifrin_1_1_1592918715.jpg?itok=MnWukFK-
3915	King Of The Road	Roger Miller	Roger Miller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/roger_miller_spotlight_74283732.png?itok=Gkzh8MeO
3916	I Know A Place	Petula Clark	Petula Clark	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petula%2BClark/Petula%2520Clark_1_1_1581553619.jpg?itok=-3LIZRWh
3917	Flowers On The Wall	The Statler Brothers	The Statler Brothers	
3918	Papa's Got A Brand New Bag	James Brown	James Brown	https://www.grammy.com/sites/com/files/styles/artist_circle/public/james_brown_1x1_medium1.jpg?itok=eVkLpL3V
3919	An Evening With Belafonte/Makeba	Harry Belafonte & Miriam Makeba	Harry Belafonte & Miriam Makeba	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Harry%2BBelafonte/Harry%2520Belafonte_1_1_1589451349.jpg?itok=5vo1qrtP
3920	Southland Favorites	George Beverly Shea And The Anita Kerr Singers	George Beverly Shea And The Anita Kerr Singers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/George%2BBeverly%2BShea/George%2520Beverly%2520Shea_1_1_1597166461.jpg?itok=ntIKnoV-
3921	The Return Of Roger Miller	Roger Miller	Roger Miller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/roger_miller_spotlight_74283732.png?itok=Gkzh8MeO
3922	Queen Of The House	Jody Miller	Jody Miller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jody%2BMiller/Jody%2520Miller_1_1_1581560750.jpg?itok=iVXokpFx
3923	Bartók: Concerto No. 2 For Violin/Stravinsky: Concerto For Violin	George Estes, art director (Erich Leinsdorf, conductor; Joseph Silverstein, violin)	George Estes, art director (Erich Leinsdorf, conductor; Joseph Silverstein, violin)	
3924	Ives: Symphony No. 4	(American Symphony Orchestra)	(American Symphony Orchestra)	
3925	Bartók: The Six String Quartets - Nos. 1-6	Juilliard String Quartet (Claus Adam, Isidore Cohen, Raphael Hillyer & Robert Mann), artists	Juilliard String Quartet (Claus Adam, Isidore Cohen, Raphael Hillyer & Robert Mann), artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Juilliard%2BString%2BQuartet/Juilliard%2520String%2520Quartet_1_1_1575360665.jpg?itok=8v2l9Vwk
3926	Beethoven: Piano Concerto No. 4 In G	Artur Rubinstein, artist (Boston Symphony Orchestra)	Artur Rubinstein, artist (Boston Symphony Orchestra)	
3927	Stravinsky: Symphony Of Psalms/Poulenc: Gloria	(Robert Shaw Chorale; RCA Victor Symphony Orchestra)	(Robert Shaw Chorale; RCA Victor Symphony Orchestra)	
3928	Strauss: Salome (Dance Of The Seven Veils, Interlude, Final Scene)/The Egyptian Helen (Awakening Scene)	(Boston Symphony Orchestra)	(Boston Symphony Orchestra)	
3929	Bach: Goldberg Variations	Bach: Goldberg Variations		
3930	The Girl From Ipanema	Stan Getz & Astrud Gilberto	Stan Getz & Astrud Gilberto	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BGetz/Stan%2520Getz_1_1_1581618079.jpg?itok=1uHIRekD
3931	Getz/Gilberto	Stan Getz & João Gilberto	Stan Getz & João Gilberto	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BGetz/Stan%2520Getz_1_1_1581618079.jpg?itok=1uHIRekD
3932	Bernstein: Symphony No. 3 "Kaddish"	Leonard Bernstein, artist	Leonard Bernstein, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
3933	Hello, Dolly!	Jerry Herman, songwriter (Louis Armstrong)	Jerry Herman, songwriter (Louis Armstrong)	
3934	The Pink Panther Theme	Henry Mancini, composer (Henry Mancini)	Henry Mancini, composer (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3935	People	Barbra Streisand	Barbra Streisand	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
3936	Guitar From Ipanema	Laurindo Almeida	Laurindo Almeida	
3937	The Cat	Lalo Schifrin, composer (Lalo Schifrin)	Lalo Schifrin, composer (Lalo Schifrin)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Lalo%2BSchifrin/Lalo%2520Schifrin_1_1_1592918715.jpg?itok=MnWukFK-
3938	The Pink Panther	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3939	A Hard Day's Night	The Beatles	The Beatles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/The%2BBeatles/The%2520Beatles_1_1_1591112972.jpg?itok=KFRZmETY
3940	The Swingle Singers Going Baroque	Ward Swingle (The Swingle Singers)	Ward Swingle (The Swingle Singers)	
3941	Mary Poppins	Richard M. Sherman & Robert B. Sherman, composers (Julie Andrews & Dick Van Dyke)	Richard M. Sherman & Robert B. Sherman, composers (Julie Andrews & Dick Van Dyke)	
3942	Funny Girl	Bob Merrill & Jule Styne, composers (Barbra Streisand, Sydney Chaplin, Danny Meehan, Kay Medford, Jean Stapleton, John Lankston)	Bob Merrill & Jule Styne, composers (Barbra Streisand, Sydney Chaplin, Danny Meehan, Kay Medford, Jean Stapleton, John Lankston)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BMerrill/Bob%2520Merrill_1_1_1581627574.jpg?itok=lS13xM9w
3943	I Started Out As A Child	Bill Cosby	Bill Cosby	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BCosby/Bill%2520Cosby_1_1_1597331692.jpg?itok=hHQJAkRP
3944	BBC Tribute To John F. Kennedy	That Was The Week That Was (Cast)	That Was The Week That Was (Cast)	
3945	The Chipmunks Sing The Beatles	Dave Hassinger, engineer (The Chipmunks)	Dave Hassinger, engineer (The Chipmunks)	
3946	Saint-Saens: Carnival Of The Animals/Britten: Young Persons Guide To The Orchestra	Robert M. Jones, art director (Arthur Fiedler, conductor)	Robert M. Jones, art director (Arthur Fiedler, conductor)	
3947	Downtown	Petula Clark	Petula Clark	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Petula%2BClark/Petula%2520Clark_1_1_1581553619.jpg?itok=-3LIZRWh
3948	How Glad I Am	Nancy Wilson	Nancy Wilson	https://www.grammy.com/sites/com/files/styles/artist_circle/public/transparent_square_15.png?itok=9iY7Y3e0
3949	We'll Sing In The Sunshine	Gale Garnett	Gale Garnett	
3950	Great Gospel Songs	Tennessee Ernie Ford	Tennessee Ernie Ford	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tennessee%2BErnie%2BFord/Tennessee%2520Ernie%2520Ford_1_1_1581565069.jpg?itok=4eO-EQAu
3951	The Beatles	The Beatles		
3952	Dang Me	Roger Miller	Roger Miller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/roger_miller_spotlight_74283732.png?itok=Gkzh8MeO
3953	Dang Me/Chug-A-Lug	Roger Miller	Roger Miller	https://www.grammy.com/sites/com/files/styles/artist_circle/public/roger_miller_spotlight_74283732.png?itok=Gkzh8MeO
3954	Here Comes My Baby	Dottie West	Dottie West	
3955	Mexico (Legacy Collection)	Carleton Beals & Stanton Catlin, album notes writers (Carlos Chavez)	Carleton Beals & Stanton Catlin, album notes writers (Carlos Chavez)	
3956	Mahler: Symphony No. 5/Berg: Wozzeck Excerpts	(Boston Symphony Orchestra)	(Boston Symphony Orchestra)	
3957	Beethoven: Trio No. 1 In E Flat, Op. 1 #1	Jascha Heifetz & Gregor Piatigorsky, artists	Jascha Heifetz & Gregor Piatigorsky, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jascha%2BHeifetz/Jascha%2520Heifetz_1_1_1581627209.jpg?itok=3KkpEUVD
3958	It Was A Lover And His Lass	Noah Greenberg, artist	Noah Greenberg, artist	
3959	Prokofiev: Violin Concerto No. 1 In D	Isaac Stern, artist (Philadelphia Orchestra)	Isaac Stern, artist (Philadelphia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BStern/Isaac%2520Stern_1_1_1592919222.jpg?itok=VCu1LAnc
3960	Vladimir Horowitz Plays Beethoven, Debussy, Chopin	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3961	Britten: A Ceremony Of Carols	(Robert Shaw Chorale)	(Robert Shaw Chorale)	
3962	Berlioz: Nuits D'Ete (Song Cycle)/Falla: El Amor Brujo	(Chicago Symphony Orchestra)	(Chicago Symphony Orchestra)	
3963	Britten: Young Person's Guide To The Orchestra	Douglas Larter, engineer (Carlo Maria Giulini, conductor)	Douglas Larter, engineer (Carlo Maria Giulini, conductor)	
3964	The Age Of Bel Canto: Operatic Scenes (Boyngne, cond.)	The Age Of Bel Canto: Operatic Scenes (Boyngne, cond.)		
3965	Days Of Wine And Roses	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
3966	The Barbra Streisand Album	Barbra Streisand	Barbra Streisand	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Barbra%2BStreisand/Barbra%2520Streisand_1_1_1597142976.jpg?itok=QWDCDpvy
3967	More - Theme From Mondo Cane	Norman Newell, Nino Oliviero & Riz Ortolani, composers (Vic Dana)	Norman Newell, Nino Oliviero & Riz Ortolani, composers (Vic Dana)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Riz%2BOrtolani/Riz%2520Ortolani_1_1_1581611091.jpg?itok=4fEOOGmu
3968	Wives And Lovers	Jack Jones	Jack Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BJones/Jack%2520Jones_1_1_1581612404.jpg?itok=-FM6V4aP
3969	Conversations With Myself	Bill Evans	Bill Evans	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bill%2BEvans/Bill%2520Evans_1_1_1575367048.jpg?itok=la6AbYSj
3970	Encore: Woody Herman, 1963	Woody Herman	Woody Herman	
3971	Gravy Waltz	Steve Allen & Ray Brown, composers (Steve Allen)	Steve Allen & Ray Brown, composers (Steve Allen)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Steve%2BAllen/Steve%2520Allen_1_1_1581552293.jpg?itok=eJ2fUc2c
3972	This Time By Basie! Hits Of The 50's And 60's	Count Basie	Count Basie	
3973	Java	Al Hirt	Al Hirt	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Al%2BHirt/Al%2520Hirt_1_1_1591238276.jpg?itok=TLa_VC0t
3974	I Can't Stop Loving You	Quincy Jones, arranger (Count Basie)	Quincy Jones, arranger (Count Basie)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Quincy%2BJones/Quincy%2520Jones_1_1_1596789836.jpg?itok=54PdILuC
3975	Blowin' In The Wind	Peter, Paul And Mary	Peter, Paul And Mary	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%252C%2BPaul%2BAnd%2BMary/Peter%252C%2520Paul%2520and%2520Mary_1_1_1581553680.jpg?itok=uTzNcbWd
3976	Bach's Greatest Hits	Ward Swingle (The Swingle Singers)	Ward Swingle (The Swingle Singers)	
3977	She Loves Me	Jerry Bock & Sheldon Harnick, composers (Barbara Cook, Barbara Baxley, Jack Cassidy, Daniel Massey, Nathaniel Frey, Ralph Williams, Jo Wilder)	Jerry Bock & Sheldon Harnick, composers (Barbara Cook, Barbara Baxley, Jack Cassidy, Daniel Massey, Nathaniel Frey, Ralph Williams, Jo Wilder)	
3978	Evening Of Elizabethan Music	Julian Bream, artist	Julian Bream, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Julian%2BBream/Julian%2520Bream_1_1_1581629919.jpg?itok=b2MwMsXC
3979	Tchaikovsky: Piano Concerto No. 1 In B Flat Minor	Artur Rubinstein, artist (Boston Symphony Orchestra)	Artur Rubinstein, artist (Boston Symphony Orchestra)	
3980	The Sound Of Horowitz	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3981	Puccini: Madama Butterfly	Erich Leinsdorf (RCA Italiana Opera Orchestra)	Erich Leinsdorf (RCA Italiana Opera Orchestra)	
3982	Great Scenes From Gershwin's Porgy And Bess	(RCA Orchestra)	(RCA Orchestra)	
3983	Liszt: Concerto No. 1 For Piano & Orchestra (Bernstein, cond.; N.Y. Philharmonic)	Liszt: Concerto No. 1 For Piano & Orchestra (Bernstein, cond.; N.Y. Philharmonic)		
3984	Hello Mudduh, Hello Faddah	Allan Sherman	Allan Sherman	
3985	Who's Afraid Of Virginia Woolf?	(Uta Hagen, Arthur Hill, George Grizzard & Melinda Dillon)	(Uta Hagen, Arthur Hill, George Grizzard & Melinda Dillon)	
3986	Charade	James Malloy, engineer (Henry Mancini)	James Malloy, engineer (Henry Mancini)	
3987	The Civil War, Vol. II	Robert Fine, engineer (Frederick Fennell)	Robert Fine, engineer (Frederick Fennell)	
3988	The Ellington Era	Stanley Dance & Leonard Feather, album notes writers (Duke Ellington)	Stanley Dance & Leonard Feather, album notes writers (Duke Ellington)	
3989	Bernstein Conducts For Young People	Leonard Bernstein	Leonard Bernstein	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
3990	Deep Purple	April Stevens And Nino Tempo	April Stevens And Nino Tempo	
3991	Detroit City	Bobby Bare	Bobby Bare	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bobby%2BBare/Bobby%2520Bare_1_1_1581556738.jpg?itok=URsQhtm3
3992	Busted	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
3993	Dominique	Soeur Sourire	Soeur Sourire	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Soeur%2BSourire/Soeur%2520Sourire_1_1_1581657272.jpg?itok=OeoAQIUh
3994	Ward Swingle (The Swingle Singers)	Ward Swingle (The Swingle Singers)		
3995	I Left My Heart In San Francisco	Tony Bennett	Tony Bennett	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Tony%2BBennett/Tony%2520Bennett_1_1_1584465343.jpg?itok=Zk2PcPhY
3996	The First Family	Vaughn Meader	Bob Booker & Earle Doud, producers	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vaughn%2BMeader/Vaughn%2520Meader_1_1_1597175580.jpg?itok=uHrgSdH4
3997	Columbia Records Presents Vladimir Horowitz	Vladimir Horowitz, artist	Vladimir Horowitz, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vladimir%2BHorowitz/Vladimir%2520Horowitz_1_1_1597176026.jpg?itok=QiT9d29e
3998	What Kind Of Fool Am I	Leslie Bricusse & Anthony Newley, songwriters (Sammy Davis, Jr. AND ALSO Anthony Newley)	Leslie Bricusse & Anthony Newley, songwriters (Sammy Davis, Jr. AND ALSO Anthony Newley)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Anthony%2BNewley/Anthony%2520Newley_1_1_1597166006.jpg?itok=HD2wWp0j
3999	Ella Swings Brightly With Nelson Riddle	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4000	Desafinado	Stan Getz	Stan Getz	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BGetz/Stan%2520Getz_1_1_1581618079.jpg?itok=1uHIRekD
4001	Adventures In Jazz	Stan Kenton	Stan Kenton	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BKenton/Stan%2520Kenton_1_1_1597163352.jpg?itok=4P32sJpl
4002	Cast Your Fate To The Wind	Vince Guaraldi, composer (Vince Guaraldi Trio)	Vince Guaraldi, composer (Vince Guaraldi Trio)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Vince%2BGuaraldi/Vince%2520Guaraldi_1_1_1581552291.jpg?itok=CjCB_dOB
4003	Fly Me To The Moon Bossa Nova	Joe Harnell	Joe Harnell	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Joe%2BHarnell/Joe%2520Harnell_1_1_1597163415.jpg?itok=YxqteTRC
4004	The Colorful Peter Nero	Peter Nero	Peter Nero	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%2BNero/Peter%2520Nero_1_1_1581628668.jpg?itok=V6ltUGx1
4005	Baby Elephant Walk	Henry Mancini, arranger (Henry Mancini)	Henry Mancini, arranger (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
4006	If I Had A Hammer	Peter, Paul And Mary	Peter, Paul And Mary	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Peter%252C%2BPaul%2BAnd%2BMary/Peter%252C%2520Paul%2520and%2520Mary_1_1_1581553680.jpg?itok=uTzNcbWd
4008	No Strings	Richard Rodgers, composer (Richard Kiley, Diahann Carroll, Bernice Mass, Noelle Adam, Don Chastain, Mitchell Gregg, Noelle Adam)	Richard Rodgers, composer (Richard Kiley, Diahann Carroll, Bernice Mass, Noelle Adam, Don Chastain, Mitchell Gregg, Noelle Adam)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BRodgers/Richard%2520Rodgers_1_1_1597164869.jpg?itok=z1UmC6Z5
4009	Stravinsky: The Firebird Ballet	(Columbia Symphony Orchestra)	(Columbia Symphony Orchestra)	
4010	The Heifetz-Piatigorsky Concerts With Primrose, Pennario And Guests	Jascha Heifetz, Gregor Piatigorsky & William Primrose, artists	Jascha Heifetz, Gregor Piatigorsky & William Primrose, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jascha%2BHeifetz/Jascha%2520Heifetz_1_1_1581627209.jpg?itok=3KkpEUVD
4011	Stravinsky: Violin Concerto In D	Isaac Stern, artist (Columbia Symphony Orchestra)	Isaac Stern, artist (Columbia Symphony Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BStern/Isaac%2520Stern_1_1_1592919222.jpg?itok=VCu1LAnc
4012	Wagner: Gotterdamerung - Brunnhilde's Immolation Scene/Wesendonck Songs	(New York Philharmonic)	(New York Philharmonic)	
4013	Stravinsky: The Flood	Igor Stravinsky, composer	Igor Stravinsky, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Igor%2BStravinsky/Igor%2520Stravinsky_1_1_1575369427.jpg?itok=YUD9LSWw
4014	The Intimate Bach	Marvin Schwartz, art director (Laurindo Almeida, Virginia Majewski & Vincent de Rosa)	Marvin Schwartz, art director (Laurindo Almeida, Virginia Majewski & Vincent de Rosa)	
4015	Lena...Lovely And Alive	Robert M. Jones, art director (Lena Horne)	Robert M. Jones, art director (Lena Horne)	
4016	The Story-Teller: A Session With Charles Laughton	Charles Laughton	Charles Laughton	
4017	Hatari	Al Schmitt, engineer (Henry Mancini)	Al Schmitt, engineer (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/alschmitt-spotlight-509785650.png?itok=w_EsLH1P
4018	The Civil War, Vol. I	Robert Fine, engineer (Martin Gabel & Frederick Fennell)	Robert Fine, engineer (Martin Gabel & Frederick Fennell)	
4019	Saint-Saens: Carnival Of The Animals/Britten: Young Person's Guide To The Orchestra	Leonard Bernstein	Leonard Bernstein	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
4020	Alley Cat	Bent Fabric	Bent Fabric	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bent%2BFabric/Bent%2520Fabric_1_1_1597162961.jpg?itok=23DIEIBy
4021	Funny Way Of Laughin'	Burl Ives	Burl Ives	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Burl%2BIves/Burl%2520Ives_1_1_1596100447.jpg?itok=GSm3dx38
4022	Great Songs Of Love And Faith	Mahalia Jackson	Mahalia Jackson	
4023	Robert Goulet	Robert Goulet		
4024	Judy At Carnegie Hall	Judy Garland	Judy Garland	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Judy%2BGarland/Judy%2520Garland_1_1_1597163251.jpg?itok=IVW92S7_
4025	Stravinsky Conducts 1960: Le Sacre Du Printemps; Petrouchka	Igor Stravinsky, artist	Igor Stravinsky, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Igor%2BStravinsky/Igor%2520Stravinsky_1_1_1575369427.jpg?itok=YUD9LSWw
4026	African Waltz	Galt MacDermott, composer (Cannonball Adderly)	Galt MacDermott, composer (Cannonball Adderly)	
4027	Lollipops And Roses	Jack Jones	Jack Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jack%2BJones/Jack%2520Jones_1_1_1581612404.jpg?itok=-FM6V4aP
4028	Andre Previn Plays Harold Arlen	Andre Previn	Andre Previn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/andreprevin-spotlight-541547177.png?itok=It63Jlcm
4029	Up A Lazy River	Si Zentner	Si Zentner	
4030	Breakfast At Tiffany's	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
4031	High Flying	Lambert, Hendricks And Ross	Lambert, Hendricks And Ross	
4032	Great Band With Great Voices	Johnny Mann Singers	Johnny Mann Singers	
4033	How To Succeed In Business Without Really Trying	Frank Loesser, composer (Robert Morse, Rudy Vallee, Charles Nelson Reilly, Bonnie Scott, Claudette Southerland, Sammy Smith)	Frank Loesser, composer (Robert Morse, Rudy Vallee, Charles Nelson Reilly, Bonnie Scott, Claudette Southerland, Sammy Smith)	
4034	An Evening With Mike Nichols And Elaine May	Mike Nichols And Elaine May	Mike Nichols And Elaine May	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Mike%2BNichols/Mike%2520Nichols_1_1_1581559361.jpg?itok=p8oAXWag
4035	Humor In Music	Leonard Bernstein	Leonard Bernstein	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Leonard%2BBernstein/Leonard%2520Bernstein_1_1_1575373720.jpg?itok=K2d4Fg05
4036	Stan Freberg Presents The United States Of America	John Kraus, engineer (Stan Freberg)	John Kraus, engineer (Stan Freberg)	
4037	Puccini: Madame Butterfly	Marvin Schwartz, art director (Gabriele Santini, conductor)	Marvin Schwartz, art director (Gabriele Santini, conductor)	
4038	Let's Twist Again	Chubby Checker	Chubby Checker	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Chubby%2BChecker/Chubby%2520Checker_1_1_1575373459.jpg?itok=2ulBSe1u
4039	Big Bad John	Jimmy Dean	Jimmy Dean	
4040	Hit The Road Jack	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
4041	Belafonte Folk Singers At Home And Abroad	Belafonte Folk Singers	Belafonte Folk Singers	
4042	Everytime I Feel The Spirit	Mahalia Jackson	Mahalia Jackson	
4043	Peter Nero	Peter Nero		
4044	Ravel: Daphnis Et Chloe	(Boston Symphony Orchestra)	(Boston Symphony Orchestra)	
4045	Beethoven: Serenade, Op. 8/Kodaly: Duo For Violin And Cello, Op. 7	Jascha Heifetz, Gregor Piatigorsky & William Primrose, artists	Jascha Heifetz, Gregor Piatigorsky & William Primrose, artists	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jascha%2BHeifetz/Jascha%2520Heifetz_1_1_1581627209.jpg?itok=3KkpEUVD
4046	Bartók: Violin Concerto No. 1	Isaac Stern, artist (Philadelphia Orchestra)	Isaac Stern, artist (Philadelphia Orchestra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Isaac%2BStern/Isaac%2520Stern_1_1_1592919222.jpg?itok=VCu1LAnc
4047	Reverie For Spanish Guitar	Laurindo Almeida, artist	Laurindo Almeida, artist	
4048	Bach: B Minor Mass	(Robert Shaw Chorale; Robert Shaw Orchestra)	(Robert Shaw Chorale; Robert Shaw Orchestra)	
4051	Stravinsky: Movements For Piano And Orchestra	Igor Stravinsky, composer	Igor Stravinsky, composer	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Igor%2BStravinsky/Igor%2520Stravinsky_1_1_1575369427.jpg?itok=YUD9LSWw
4052	The Theme From A Summer Place	Percy Faith & His Orchestra	Percy Faith & His Orchestra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Percy%2BFaith/Percy%2520Faith_1_1_1597165242.jpg?itok=dFp-KK5i
4053	The Button-Down Mind Of Bob Newhart	Bob Newhart	Bob Newhart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BNewhart/Bob%2520Newhart_1_1_1597173403.jpg?itok=2eVVcalO
4054	Theme From Exodus	Ernest Gold, songwriter (Ernest Gold)	Ernest Gold, songwriter (Ernest Gold)	
4055	Mack The Knife	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4056	Mack The Knife - Ella In Berlin	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4057	The Genius Of Ray Charles	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
4058	Mr. Lucky	Henry Mancini, arranger (Henry Mancini)	Henry Mancini, arranger (Henry Mancini)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
4059	Dance With Basie	Count Basie	Count Basie	
4060	We Got Us	Eydie Gorme & Steve Lawrence	Eydie Gorme & Steve Lawrence	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Eydie%2BGorme/Eydie%2520Gorme_1_1_1581619286.jpg?itok=bWYwC8TL
4061	Songs Of The Cowboy	Norman Luboff Choir	Norman Luboff Choir	
4062	Blues And The Beat	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
4063	Bartók: Music For Strings, Percussion And Celeste	(Chicago Symphony Orchestra)	(Chicago Symphony Orchestra)	
4064	Conversations With The Guitar	Laurindo Almeida, artist	Laurindo Almeida, artist	
4065	The Spanish Guitars Of Laurindo Almeida	Laurindo Almeida, artist	Laurindo Almeida, artist	
4066	A Program Of Song - Leontyne Price Recital	A Program Of Song - Leontyne Price Recital		
4067	Puccini: Turandot	Erich Leinsdorf (Rome Opera Orchestra)	Erich Leinsdorf (Rome Opera Orchestra)	
4068	Copland: Orchestral Suite From Tender Land Suite	Aaron Copland, composer	Aaron Copland, composer	
4069	Exodus	Ernest Gold, composer (Ernest Gold)	Ernest Gold, composer (Ernest Gold)	
4070	Can Can	Frank Sinatra And Original Cast	Cole Porter, composer.	
4071	The Sound Of Music	Oscar Hammerstein II & Richard Rodgers, composers (Mary Martin And Original Broadway Cast)	Oscar Hammerstein II & Richard Rodgers, composers (Mary Martin And Original Broadway Cast)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Richard%2BRodgers/Richard%2520Rodgers_1_1_1597164869.jpg?itok=z1UmC6Z5
4072	The Button-Down Mind Strikes Back!	Bob Newhart	Bob Newhart	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Bob%2BNewhart/Bob%2520Newhart_1_1_1597173403.jpg?itok=2eVVcalO
4073	Jonathan And Darlene Edwards In Paris	Jonathan & Darlene Edwards (Jo Stafford And Paul Weston)	Jonathan & Darlene Edwards (Jo Stafford And Paul Weston)	
4074	FDR Speaks	(Franklin Delano Roosevelt)	(Franklin Delano Roosevelt)	
4075	El Paso	Marty Robbins	Marty Robbins	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Marty%2BRobbins/Marty%2520Robbins_1_1_1581564893.jpg?itok=rTExcNqk
4076	Let The Good Times Roll	Ray Charles	Ray Charles	https://www.grammy.com/sites/com/files/styles/artist_circle/public/ray_charles_spotlight_107293349.png?itok=57kc2vwB
4077	Swing Dat Hammer	Harry Belafonte	Harry Belafonte	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Harry%2BBelafonte/Harry%2520Belafonte_1_1_1589451349.jpg?itok=5vo1qrtP
4078	Let's All Sing With The Chipmunks	(David Seville And The Chipmunks) Ross Bagdasarian, Sr.	(David Seville And The Chipmunks) Ross Bagdasarian, Sr.	
4079	Ella Fitzgerald Sings The George And Ira Gershwin Songbook	Luis P. (Val) Valentin, engineer (Ella Fitzgerald)	Luis P. (Val) Valentin, engineer (Ella Fitzgerald)	
4080	The Old Payola Roll Blues	John Kraus, engineer (Stan Freberg)	John Kraus, engineer (Stan Freberg)	
4081	Latin A La Lee	Marvin Schwartz, art director (Peggy Lee)	Marvin Schwartz, art director (Peggy Lee)	
4082	Bob Newhart	Bob Newhart		
4083	Sketches Of Spain	Miles Davis & Gil Evans, composers (Gil Evans And Miles Davis)	Miles Davis & Gil Evans, composers (Gil Evans And Miles Davis)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Miles%2BDavis/Miles%2520Davis_1_1_1581552165.jpg?itok=rqT0OH5J
4084	Come Dance With Me	Frank Sinatra	Frank Sinatra	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
4085	The Battle Of New Orleans	Jimmy Driftwood, songwriter (Jimmy Driftwood)	Jimmy Driftwood, songwriter (Jimmy Driftwood)	
4086	But Not For Me	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4087	Anatomy Of A Murder	Duke Ellington	Duke Ellington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/dukeellington-spotlight-627471294.png?itok=JcHFIXXP
4088	Like Young	David Rose And His Orchestra With Andre Previn	David Rose And His Orchestra With Andre Previn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/andreprevin-spotlight-541547177.png?itok=It63Jlcm
4089	Battle Hymn Of The Republic	(Mormon Tabernacle Choir)	(Mormon Tabernacle Choir)	
4090	Ella Swings Lightly	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4091	I Dig Chicks	Jonah Jones	Jonah Jones	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Jonah%2BJones/Jonah%2520Jones_1_1_1597166345.jpg?itok=3gTJZ0jd
4092	Debussy: Images For Orchestra	(Boston Symphony Orchestra)	(Boston Symphony Orchestra)	
4093	Beethoven: Sonatas No. 21 In C (Waldstein) And No. 18 In E Flat	Artur Rubinstein, artist	Artur Rubinstein, artist	
4098	Redhead	Gwen Verdon (Gwen Verdon, Richard Kiley, Leonard Stone, Doris Rich, Cynthia Latham, Joy Nichols, Bob Dixon, Pat Ferrier)	Gwen Verdon (Gwen Verdon, Richard Kiley, Leonard Stone, Doris Rich, Cynthia Latham, Joy Nichols, Bob Dixon, Pat Ferrier)	
4099	Inside Shelley Berman	Shelley Berman	Shelley Berman	
4100	The Battle Of Kookamonga	Homer And Jethro	Homer And Jethro	
4101	A Lincoln Portrait	Carl Sandburg	Carl Sandburg	
4102	Midnight Flyer	Nat "King" Cole	Nat "King" Cole	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nat%2B%2522King%2522%2BCole/Nat%2520King%2520Cole_1_1_1581553643.jpg?itok=pgeDKjdI
4103	What A Diff'rence A Day Makes	Dinah Washington	Dinah Washington	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Dinah%2BWashington/Dinah%2520Washington_1_1_1597170035.jpg?itok=yC81qTiw
4104	The Kingston Trio At Large	The Kingston Trio	The Kingston Trio	
4105	Peter And The Wolf	Peter Ustinov (Herbert von Karajan, cond.)	Peter Ustinov (Herbert von Karajan, cond.)	
4106	Victory At Sea, Vol. I	Lewis W. Layton, engineer (Robert Russell Bennett, conductor)	Lewis W. Layton, engineer (Robert Russell Bennett, conductor)	
4107	Alvin's Harmonica	Ted (Theodore) Keep, engineer (David Seville)	Ted (Theodore) Keep, engineer (David Seville)	
4108	Belafonte At Carnegie Hall	Robert Simpson, engineer (Harry Belafonte)	Robert Simpson, engineer (Harry Belafonte)	
4109	Shostakovich: Symphony No. 5	Robert M. Jones, art director (Howard Mitchell, conductor)	Robert M. Jones, art director (Howard Mitchell, conductor)	
4110	Bobby Darin	Bobby Darin		
4111	Nel Blu Dipinto Di Blu (Volare)	Domenico Modugno	Domenico Modugno	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Domenico%2BModugno/Domenico%2520Modugno_1_1_1581618128.jpg?itok=1HYG0_R2
4112	The Music From Peter Gunn	Henry Mancini	Henry Mancini	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Henry%2BMancini/Henry%2520Mancini_1_1_1581553583.jpg?itok=oMIyl-mj
4113	Ella Fitzgerald Sings The Irving Berlin Song Book	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4114	Catch A Falling Star	Perry Como	Perry Como	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Perry%2BComo/Perry%2520Como_1_1_1581559628.jpg?itok=xXPgpx0P
4115	Billy May's Big Fat Brass	Billy May	Billy May	
4116	Basie	Count Basie	Count Basie	
4117	That Old Black Magic	Keely Smith, Louis Prima	Keely Smith, Louis Prima	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Keely%2BSmith/Keely%2520Smith_1_1_1581562758.jpg?itok=lhBBIIkW
4118	Ella Fitzgerald Sings The Duke Ellington Song Book	Ella Fitzgerald	Ella Fitzgerald	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Ella%2BFitzgerald/Ella%2520Fitzgerald_1_1_1581553574.jpg?itok=TlaBTqZP
4119	The Chipmunk Song	David Seville & The Chipmunks (Ross Bagdasarian, Sr.)	David Seville & The Chipmunks (Ross Bagdasarian, Sr.)	
4120	Tom Dooley	The Kingston Trio	The Kingston Trio	
4121	Duets With A Spanish Guitar	Sherwood Hall III, engineer (Laurindo Almeida, guitar; Salli Terri, vocals)	Sherwood Hall III, engineer (Laurindo Almeida, guitar; Salli Terri, vocals)	
4122	Only The Lonely	Frank Sinatra, art director (Frank Sinatra)	Frank Sinatra, art director (Frank Sinatra)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Frank%2BSinatra/Frank%2520Sinatra_1_1_1581552147.jpg?itok=-iX5YZhY
4123	Cross Country Suite	Nelson Riddle, composer (Nelson Riddle)	Nelson Riddle, composer (Nelson Riddle)	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Nelson%2BRiddle/Nelson%2520Riddle_1_1_1597169423.jpg?itok=Rkhds5Dh
4124	The Music Man	Meredith Willson, composer (Robert Preston, Barbara Cook, David Burns, Eddie Hodges, Pert Kelton, Helen Raymond)	Meredith Willson, composer (Robert Preston, Barbara Cook, David Burns, Eddie Hodges, Pert Kelton, Helen Raymond)	
4125	Gigi	Andre Previn	Andre Previn	https://www.grammy.com/sites/com/files/styles/artist_circle/public/andreprevin-spotlight-541547177.png?itok=It63Jlcm
4126	The Best Of The Stan Freberg Shows	Stan Freberg	Stan Freberg	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Stan%2BFreberg/Stan%2520Freberg_1_1_1581657340.jpg?itok=i4sEj-e8
4127	Gaiete Parisienne	(Hollywood Bowl Orchestra)	(Hollywood Bowl Orchestra)	
4128	Tchaikovsky: Piano Concerto No. 1 In B Flat Minor, Op. 23	Van Cliburn, artist (Symphony Of The Air Orchestra)	Van Cliburn, artist (Symphony Of The Air Orchestra)	
4129	Segovia Golden Jubilee	Andres Segovia, artist	Andres Segovia, artist	https://www.grammy.com/sites/com/files/styles/artist_circle/public/muzooka/Andres%2BSegovia/Andr%25C3%25A9s%2520Segovia_1_1_1581614482.jpg?itok=MF1dxFw9
4130	Beethoven: Quartet 130	Hollywood String Quartet (Alvin Dinkin, Paul Shure, Eleanor Aller Slatkin & Felix Slatkin), artists	Hollywood String Quartet (Alvin Dinkin, Paul Shure, Eleanor Aller Slatkin & Felix Slatkin), artists	
4131	Operatic Recital	Operatic Recital		
4132	Virtuoso	Roger Wagner, choir director	Roger Wagner, choir director	
\.


--
-- PostgreSQL database dump complete
--

