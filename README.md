# AWS ECS Deployment

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![NGINX](https://img.shields.io/badge/NGINX-009639?style=for-the-badge&logo=nginx&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![ECR](https://img.shields.io/badge/ECR-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![ECS](https://img.shields.io/badge/ECS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)

## Overview

This project demonstrates a CI/CD pipeline for deploying a static website to AWS ECS (Elastic Container Service) using GitHub Actions. The workflow automatically builds a Docker container, pushes it to Amazon ECR (Elastic Container Registry), and deploys it to an ECS service.

## Architecture

- **Frontend**: Simple static website with HTML and CSS
- **Container**: NGINX Alpine serving static content
- **CI/CD**: GitHub Actions workflow for automated deployment
- **Infrastructure**: AWS ECS Fargate for container orchestration
- **Registry**: AWS ECR for Docker image storage

## Deployment Process

1. Code changes are pushed to the main branch
2. GitHub Actions workflow is triggered
3. Docker image is built and tagged
4. Image is pushed to Amazon ECR
5. ECS service is updated with the new image
6. Application is deployed on Fargate containers

## Repository Structure

```
.
├── .github/workflows    # GitHub Actions workflow definitions
├── assets/img          # Image assets for the website
├── Dockerfile          # NGINX container configuration
├── index.html          # Main HTML file
├── style.css           # CSS styling
└── task-definition.json # AWS ECS task definition
```

## Setup Requirements

- AWS Account with appropriate permissions
- GitHub repository secrets:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_REGION`
  - `ECR_REPOSITORY_URI`
  - `ECS_CLUSTER`
  - `ECS_SERVICE`

## License

See the [LICENSE](LICENSE) file for details.