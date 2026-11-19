Nexora – User Acceptance Testing (UAT) Report

1. Objective

The purpose of UAT was to verify that the Salesforce implementation of the Nexora Sales Operations & CRM Performance Intelligence project meets its intended functional and business requirements.

2. UAT Test Results

| Test ID | Test Description | Expected Result | Actual Result | Status |
|---|---|---|---|---|
| UAT-01 | Record completeness | 30 opportunities available | All 30 records present | PASS |
| UAT-02A | OPP001 field validation | Imported values match source data | All five checked fields matched | PASS |
| UAT-02B | OPP030 field validation | Imported values match source data | All four checked fields matched | PASS |
| UAT-03A | Report record count | 30 records displayed | 30 records displayed | PASS |
| UAT-03B | Report stage grouping | Records grouped correctly by stage | Six groups, counts total 30 | PASS |
| UAT-03C | Report chart | All six stages represented | All six stages visible | PASS |
| UAT-04A | Dashboard component visibility | Both components visible | Both components visible | PASS |
| UAT-04B | Dashboard chart | All six stages represented | All six stages visible | PASS |
| UAT-04C | Dashboard table | Opportunity details displayed | Records and details visible | PASS |
| UAT-04D | Dashboard table scrolling | Table supports convenient scrolling | Internal widget scrolling did not work | OBSERVATION |
| UAT-05A | Opportunity identification | Target opportunity can be located | OPP030 located successfully | PASS |
| UAT-05B | Business decision support | Identify overdue follow-up and recommend action | Immediate follow-up identified as necessary | PASS |

3. Sample Record Validation

OPP001
- Amount: ₹2,50,000
- Stage: Qualification
- Status: Open
- Sales Representative: Asha
- Next Follow-up Date: 08/11/2026

All five checked values matched the original Nexora dataset.

OPP030
- Amount: ₹9,00,000
- Sales Representative: Meera
- Status: Open
- Next Follow-up Date: 25/07/2026

All four checked values matched the original Nexora dataset.

4. Opportunity Stage Distribution

The Salesforce report displayed the following distribution:

| Opportunity Stage | Record Count |
|---|---:|
| Qualification | 4 |
| Needs Analysis | 5 |
| Negotiation | 5 |
| Won | 6 |
| Lost | 4 |
| Proposal/Price Quote | 6 |
| Total | 30 |

The stage counts add up to the full set of 30 opportunities.

5. Usability Observation

The Salesforce dashboard displayed both the stage distribution chart and opportunity table.

The table displayed opportunity information, but its internal scrolling did not work during testing. The underlying Salesforce report remained accessible and displayed all 30 records.

This was recorded as a minor dashboard usability observation. It did not prevent access to the complete report data.

6. Business Recommendation

OPP030 was identified as an overdue follow-up opportunity.

With a follow-up date of 25 July 2026 and an open value of ₹9,00,000, the recommended action is for the sales representative to contact the customer immediately, confirm the opportunity status and update the next follow-up date.

7. UAT Conclusion

The Salesforce implementation passed the main UAT checks for record completeness, selected record validation, report configuration, dashboard visibility and business usability.

One minor dashboard table scrolling observation was recorded for future improvement.

The testing confirms that the implemented Salesforce environment supports the intended Nexora opportunity monitoring and sales follow-up activities.

Note: Detailed field-level validation was performed on two sample records. The UAT did not constitute a field-by-field audit of all 30 opportunities.