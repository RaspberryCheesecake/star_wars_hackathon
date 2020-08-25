FROM pablo1n7/tatooine:3.4
RUN pip install anvil-uplink
ENTRYPOINT jupyter nbconvert --to notebook --inplace --execute star_wars_hackathon/PyConUK/demo_CNN.ipynb --ExecutePreprocessor.timeout=None
# two problems: how to keep container going so Anvil uplink continues?
# and how to connect container to internet from inside my laptop - is this in fact working?