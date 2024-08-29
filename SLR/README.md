# Systematic Literature Review

We used a systematic approach to incorporate theoretical perspectives into empirical findings. Following the guidelines of Kitchenham and Charters [1][2], we chose the SLR approach to review the existing literature and understand current knowledge on SECO for CPS development. We used the litstudy Python package to retrieve papers from databases, while Google Sheets were used for planning, conducting the review, data extraction, and data analysis.

## Search String and Sources

The search string structure, based on Kitchenham and Charters guidelines [1], is as follows:

("software ecosystem") AND ("cyber-physical system") AND ("challenges" OR "issues")

This string is formulated as a conjunctive logic proposition of three sets of search terms, which are then combined in a disjunctive logic proposition. Since this work focuses on the challenges and issues of SECO for CPS development, the search string was designed to return only relevant results. The effectiveness of these search strings was evaluated based on how well the returned results related to the RQs.

Given the interdisciplinary nature of the SLR, we performed an automatic search on leading research databases to ensure comprehensive literature coverage. The databases were selected based on guidelines and suggestions from previous studies [3, 4]. The selected electronic databases for our study include IEEE Xplore, Scopus, ACM Digital Library, Web of Science, Science Direct, and Springer Link. These databases are widely used in the software engineering domain and support advanced query searches.

## Selection Criteria (IC/EC)

This step begins with:
- **i)** a set of unique papers collected from the selected databases, and 
- **ii)** a set of inclusion and exclusion criteria (IC/EC) applied to these papers.

We defined IC/EC to determine whether a paper should be included in the SLR or excluded. Each paper collected by queries executed on the selected databases was evaluated based on its title and abstract [T/A] or, if necessary, the full text [All], as outlined below:

- **Inclusion Criteria (IC):**
  - We include secondary studies [T/A]
  - We include papers from high-ranked journals (Q1/Q2 Scimago) and conferences (GRIN-GII-SCIE) [T/A]
  - We include tool papers mentioning SECO for CPS in the abstract, title, and keywords [T/A]
  - We include challenges paper [All]

- **Exclusion Criteria (EC):**
  - We exclude book chapters and books in their entirety [T/A]
  - We exclude summaries of workshops/conferences [T/A]
  - We exclude Bachelor, Master, and PhD theses [T/A]
  - We exclude abstract-only papers, WIP papers, conferences, reviews, and editorials [T/A]
  - We exclude papers without available full text and non-English papers [T/A]
  - We exclude papers published before 2006 [5] [T/A]
  - We exclude non-peer-reviewed papers, case reports, case series, technical reports, and web pages [T/A]
  - We exclude papers from low-ranked journals (higher than Q1/Q2 Scimago) and conferences (GRIN-GII-SCIE) [T/A]
  - We exclude tool papers that focus only on the SECO challenge or CPS challenge [All]

## Primary Studies Selection

In the initial database search, 302 papers were found. After removing 30 duplicates, 272 papers were chosen for the IC/EC assessment.

We decided not to conduct a snowballing to maintain reproducibility and avoid making it difficult for other researchers to replicate the review. This more subjective method can be considered for future works.

By applying IC/EC to the titles and abstracts, we identified 49 papers for full reading. Finally, 28 papers were selected as primary studies.

## Qualitative/Quantitative Data Processing

To collect quantitative data from the primary studies, we created a Google spreadsheet template to streamline data extraction and synthesis. Each paper was reviewed by two authors and categorized by its metadata (e.g., title, year, venue), main contributions, CPS case study or example availability, SECO tools availability, related challenges and their connection to RQs, and application domains (at least one or domain-independent).

As quality criteria for selecting primary studies, we included papers published in refereed sources that address SECO challenges and issues in CPS development. Following the guidelines in [6], we defined a quality checklist for data synthesis and analysis. Given the immaturity of the research field and the lack of review papers on this topic, we chose not to exclude any papers initially. Quality assessment was conducted after selecting the primary studies to verify if the publications discussed issues related to each quality metric. The criteria used for quality assessment in this study were based on [6] and are **Reporting**, **Rigor**, **Credibility**, and **Relevance**.

## Reference

[1] Kitchenham, B. A., & Charters, S. (2007). Guidelines for performing Systematic Literature Reviews in Software Engineering (Techreport EBSE 2007-001)

[2] Lin\aaker, J., Sulaman, S. M., Maiani de Mello, R., & Höst, M. (2015). Guidelines for Conducting Surveys in Software Engineering. Department of Computer Science, Lund University. 

[3] Stavru, S. (2014). A critical examination of recent industrial surveys on agile method usage. Journal of Systems and Software, 94, 87–97.

[4] Dyba, T., Dingsoyr, T., & Hanssen, G. K. (2007). Applying Systematic Reviews to Diverse Study Types: An Experience Report. First International Symposium on Empirical Software Engineering and Measurement (ESEM 2007), 225–234. https://doi.org/10.1109/ESEM.2007.59 

[5] Petersen, K., Vakkalanka, S., & Kuzniarz, L. (2015). Guidelines for conducting systematic mapping studies in software engineering: An update. Inf. Softw. Technol., 64, 1–18.

[6] Zhou, Y., Zhang, H., Huang, X., Yang, S., Babar, M. A., & Tang, H. (2015). Quality assessment of systematic reviews in software engineering: a tertiary study. Proceedings of the 19th International Conference on Evaluation and Assessment in Software Engineering. https://doi.org/10.1145/2745802.2745815
