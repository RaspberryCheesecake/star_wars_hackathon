FROM pablo1n7/tatooine:3.4
RUN pip install anvil-uplink
ENTRYPOINT jupyter nbconvert --to notebook --execute star_wars_hackathon/PyConUK/demo_CNN.ipynb --ExecutePreprocessor.timeout=None
