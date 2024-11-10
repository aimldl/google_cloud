# Custom Document Extraction with Document AI Workbench
* Created 2024-11-10 (Sun)
* Updated 2024-11-10 (Sun)

Cloud Skills Boost > [Custom Document Extraction with Document AI Workbench](https://www.cloudskillsboost.google/focuses/87655?catalog_rank=%7B%22rank%22%3A13%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=39349203) [1 hour], Intermediate

1. Enable the Document AI API
```bash
# Enable the Document AI API
gcloud services enable documentai.googleapis.com

# Install the Python client libraries for Document AI
pip3 install --upgrade google-cloud-documentai
```

2. Create an Custom Document Extractor processor
3. Define processor fields
4. Upload a sample document W2_XL_input_clean_2950.pdf

5. Label a document
6. Build processor version using foundation model
7. Use generative AI to auto-label documents
8. Import prelabeled training documents
9. Train the processor
