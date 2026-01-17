# Anomaly Detection

Anomalies are patterns in the data that do not conform to a well-defined notion
of normal behaviour.

Techniques used to detection anomalies typically require training before using
on new data.

This [Jupyter Notebook](http://jupyter.org/) reproduces the results from [Oana
Niculaescu](https://www.linkedin.com/in/oana-niculaescu-1aa72b53/)'s article in
[XRDS](https://xrds.acm.org/), [Applying Data Science for Anomaly and Change
Point Detection](http://xrds.acm.org/article.cfm?aid=3265925).

## Prerequisites

This project uses [uv](https://docs.astral.sh/uv/) for Python package
management.

Install uv:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Setup

Install project dependencies:

```bash
uv sync
```

## Build

To start [Jupyter Notebook](http://jupyter.org/) in background (will open
browser):

```bash
uv run jupyter notebook &
```

To stop Jupyter notebooks:

```bash
uv run jupyter notebook stop
```

## Output

To output a notebook as HTML:

```bash
uv run jupyter nbconvert --execute --to html anomaly-detection.ipynb
```

To output a notebook as PDF or LaTeX:

```bash
uv run jupyter nbconvert --execute --to latex \
  --template article.tplx anomaly-detection.ipynb
```

## Customise

To further customise output of a notebook, see

* [NB Format (PDF)](https://media.readthedocs.org/pdf/nbformat/latest/nbformat.pdf)
* [Customizing nbconvert (blog)](http://markus-beuckelmann.de/blog/customizing-nbconvert-pdf.html)
* [uv package manager](https://docs.astral.sh/uv/)
