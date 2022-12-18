{
 "cells": [
  {
   "attachments": {
    "de1920de-121e-47c3-a61f-e905386713bf.png": {
     "image/png": "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"
    }
   },
   "cell_type": "markdown",
   "id": "c9f7daae",
   "metadata": {
    "papermill": {
     "duration": 0.022927,
     "end_time": "2022-12-18T11:53:44.714411",
     "exception": false,
     "start_time": "2022-12-18T11:53:44.691484",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## 생존여부 예측모델 만들기\n",
    "### 학습용 데이터 (X_train, y_train)을 이용하여 생존 예측 모형을 만든 후, 이를 평가용 데이터(X_test)에 적용하여 얻은 예측값을 다음과 같은 형식의 CSV파일로 생성하시오(제출한 모델의 성능은 accuracy 평가지표에 따라 채점)\n",
    "\n",
    "(가) 제공 데이터 목록\n",
    "- y_train: 생존여부(학습용)\n",
    "- X_trian, X_test : 승객 정보 (학습용 및 평가용)\n",
    "\n",
    "(나) 데이터 형식 및 내용\n",
    "- y_trian (712명 데이터)\n",
    "\n",
    "**시험환경 세팅은 예시문제와 동일한 형태의 X_train, y_train, X_test 데이터를 만들기 위함임**\n",
    "\n",
    "### 유의사항\n",
    "- 성능이 우수한 예측모형을 구축하기 위해서는 적절한 데이터 전처리, 피처엔지니어링, 분류알고리즘, 하이퍼파라미터 튜닝, 모형 앙상블 등이 수반되어야 한다.\n",
    "- 수험번호.csv파일이 만들어지도록 코드를 제출한다.\n",
    "- 제출한 모델의 성능은 accuracy로 평가함\n",
    "\n",
    "csv 출력형태\n",
    "\n",
    "![image.png](attachment:de1920de-121e-47c3-a61f-e905386713bf.png)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "6a22f608",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:44.764396Z",
     "iopub.status.busy": "2022-12-18T11:53:44.762120Z",
     "iopub.status.idle": "2022-12-18T11:53:45.040107Z",
     "shell.execute_reply": "2022-12-18T11:53:45.038848Z"
    },
    "papermill": {
     "duration": 0.303569,
     "end_time": "2022-12-18T11:53:45.040266",
     "exception": false,
     "start_time": "2022-12-18T11:53:44.736697",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n",
      "randomForest 4.6-14\n",
      "\n",
      "Type rfNews() to see new features/changes/bug fixes.\n",
      "\n",
      "\n",
      "Attaching package: ‘randomForest’\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    combine\n",
      "\n",
      "\n",
      "\n",
      "Attaching package: ‘ModelMetrics’\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:base’:\n",
      "\n",
      "    kappa\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)\n",
    "library(randomForest)\n",
    "library(ModelMetrics)\n",
    "df<-read.csv('../input/titanic/train.csv')\n",
    "test<-read.csv('../input/titanic/test.csv')\n",
    "y_test<-read.csv('../input/titanic/gender_submission.csv')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "61944613",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:45.128756Z",
     "iopub.status.busy": "2022-12-18T11:53:45.106056Z",
     "iopub.status.idle": "2022-12-18T11:53:45.166802Z",
     "shell.execute_reply": "2022-12-18T11:53:45.165524Z"
    },
    "papermill": {
     "duration": 0.095795,
     "end_time": "2022-12-18T11:53:45.166950",
     "exception": false,
     "start_time": "2022-12-18T11:53:45.071155",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>PassengerId</dt><dd>0</dd><dt>Survived</dt><dd>0</dd><dt>Pclass</dt><dd>0</dd><dt>Name</dt><dd>0</dd><dt>Sex</dt><dd>0</dd><dt>Age</dt><dd>177</dd><dt>SibSp</dt><dd>0</dd><dt>Parch</dt><dd>0</dd><dt>Ticket</dt><dd>0</dd><dt>Fare</dt><dd>0</dd><dt>Cabin</dt><dd>0</dd><dt>Embarked</dt><dd>0</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[PassengerId] 0\n",
       "\\item[Survived] 0\n",
       "\\item[Pclass] 0\n",
       "\\item[Name] 0\n",
       "\\item[Sex] 0\n",
       "\\item[Age] 177\n",
       "\\item[SibSp] 0\n",
       "\\item[Parch] 0\n",
       "\\item[Ticket] 0\n",
       "\\item[Fare] 0\n",
       "\\item[Cabin] 0\n",
       "\\item[Embarked] 0\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "PassengerId\n",
       ":   0Survived\n",
       ":   0Pclass\n",
       ":   0Name\n",
       ":   0Sex\n",
       ":   0Age\n",
       ":   177SibSp\n",
       ":   0Parch\n",
       ":   0Ticket\n",
       ":   0Fare\n",
       ":   0Cabin\n",
       ":   0Embarked\n",
       ":   0\n",
       "\n"
      ],
      "text/plain": [
       "PassengerId    Survived      Pclass        Name         Sex         Age \n",
       "          0           0           0           0           0         177 \n",
       "      SibSp       Parch      Ticket        Fare       Cabin    Embarked \n",
       "          0           0           0           0           0           0 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "  PassengerId       Survived          Pclass          Name          \n",
       " Min.   :  1.0   Min.   :0.0000   Min.   :1.000   Length:891        \n",
       " 1st Qu.:223.5   1st Qu.:0.0000   1st Qu.:2.000   Class :character  \n",
       " Median :446.0   Median :0.0000   Median :3.000   Mode  :character  \n",
       " Mean   :446.0   Mean   :0.3838   Mean   :2.309                     \n",
       " 3rd Qu.:668.5   3rd Qu.:1.0000   3rd Qu.:3.000                     \n",
       " Max.   :891.0   Max.   :1.0000   Max.   :3.000                     \n",
       "                                                                    \n",
       "     Sex                 Age            SibSp           Parch       \n",
       " Length:891         Min.   : 0.42   Min.   :0.000   Min.   :0.0000  \n",
       " Class :character   1st Qu.:20.12   1st Qu.:0.000   1st Qu.:0.0000  \n",
       " Mode  :character   Median :28.00   Median :0.000   Median :0.0000  \n",
       "                    Mean   :29.70   Mean   :0.523   Mean   :0.3816  \n",
       "                    3rd Qu.:38.00   3rd Qu.:1.000   3rd Qu.:0.0000  \n",
       "                    Max.   :80.00   Max.   :8.000   Max.   :6.0000  \n",
       "                    NA's   :177                                     \n",
       "    Ticket               Fare           Cabin             Embarked        \n",
       " Length:891         Min.   :  0.00   Length:891         Length:891        \n",
       " Class :character   1st Qu.:  7.91   Class :character   Class :character  \n",
       " Mode  :character   Median : 14.45   Mode  :character   Mode  :character  \n",
       "                    Mean   : 32.20                                        \n",
       "                    3rd Qu.: 31.00                                        \n",
       "                    Max.   :512.33                                        \n",
       "                                                                          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t891 obs. of  12 variables:\n",
      " $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...\n",
      " $ Survived   : int  0 1 1 1 0 0 0 0 1 1 ...\n",
      " $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...\n",
      " $ Name       : chr  \"Braund, Mr. Owen Harris\" \"Cumings, Mrs. John Bradley (Florence Briggs Thayer)\" \"Heikkinen, Miss. Laina\" \"Futrelle, Mrs. Jacques Heath (Lily May Peel)\" ...\n",
      " $ Sex        : chr  \"male\" \"female\" \"female\" \"female\" ...\n",
      " $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...\n",
      " $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...\n",
      " $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...\n",
      " $ Ticket     : chr  \"A/5 21171\" \"PC 17599\" \"STON/O2. 3101282\" \"113803\" ...\n",
      " $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...\n",
      " $ Cabin      : chr  \"\" \"C85\" \"\" \"C123\" ...\n",
      " $ Embarked   : chr  \"S\" \"C\" \"S\" \"S\" ...\n"
     ]
    }
   ],
   "source": [
    "colSums(is.na(df)) #age컬럼에 결측값 있음\n",
    "summary(df)\n",
    "str(df)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "80cd44c2",
   "metadata": {
    "papermill": {
     "duration": 0.032487,
     "end_time": "2022-12-18T11:53:45.232326",
     "exception": false,
     "start_time": "2022-12-18T11:53:45.199839",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Start"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "e1176399",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:45.303205Z",
     "iopub.status.busy": "2022-12-18T11:53:45.302639Z",
     "iopub.status.idle": "2022-12-18T11:53:45.329857Z",
     "shell.execute_reply": "2022-12-18T11:53:45.329037Z"
    },
    "papermill": {
     "duration": 0.064967,
     "end_time": "2022-12-18T11:53:45.329996",
     "exception": false,
     "start_time": "2022-12-18T11:53:45.265029",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#전처리\n",
    "\n",
    "df$Sex<-as.factor(df$Sex)\n",
    "df$Embarked<-as.factor(df$Embarked)\n",
    "df$Survived<-as.factor(df$Survived)\n",
    "df$Pclass<-as.factor(df$Pclass)\n",
    "\n",
    "test$Sex<-as.factor(test$Sex)\n",
    "test$Embarked<-as.factor(test$Embarked)\n",
    "test$Pclass<-as.factor(test$Pclass)\n",
    "\n",
    "df$Age<-coalesce(df$Age,median(df$Age,na.rm=T))\n",
    "test$Age<-coalesce(test$Age,median(test$Age,na.rm=T))\n",
    "\n",
    "#age 결측값 중앙값으로대체\n",
    "df<-df[,-c(4,9,11)]\n",
    "test<-test[,-c(3,8,10)]\n",
    "\n",
    "idx<-sample((1:nrow(df)),nrow(df)*0.7)\n",
    "x_train<-df[idx,]\n",
    "x_test<-df[-idx,]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "32e371b4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:45.402808Z",
     "iopub.status.busy": "2022-12-18T11:53:45.401733Z",
     "iopub.status.idle": "2022-12-18T11:53:45.469296Z",
     "shell.execute_reply": "2022-12-18T11:53:45.468437Z"
    },
    "papermill": {
     "duration": 0.106664,
     "end_time": "2022-12-18T11:53:45.469405",
     "exception": false,
     "start_time": "2022-12-18T11:53:45.362741",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#모델링, 예측\n",
    "m<-randomForest(Survived~.-(PassengerId),data=x_train, ntree=100)\n",
    "p=predict(m,x_test)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f5279672",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:45.538385Z",
     "iopub.status.busy": "2022-12-18T11:53:45.537269Z",
     "iopub.status.idle": "2022-12-18T11:53:47.509153Z",
     "shell.execute_reply": "2022-12-18T11:53:47.508285Z"
    },
    "papermill": {
     "duration": 2.007368,
     "end_time": "2022-12-18T11:53:47.509261",
     "exception": false,
     "start_time": "2022-12-18T11:53:45.501893",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>Accuracy:</strong> 0.82089552238806"
      ],
      "text/latex": [
       "\\textbf{Accuracy:} 0.82089552238806"
      ],
      "text/markdown": [
       "**Accuracy:** 0.82089552238806"
      ],
      "text/plain": [
       " Accuracy \n",
       "0.8208955 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#평가 \n",
    "#str(p)\n",
    "#str(x_test)\n",
    "result<-caret::confusionMatrix(p,x_test$Survived)$overall[1]\n",
    "result\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "563a987c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:47.583083Z",
     "iopub.status.busy": "2022-12-18T11:53:47.582041Z",
     "iopub.status.idle": "2022-12-18T11:53:47.660012Z",
     "shell.execute_reply": "2022-12-18T11:53:47.659277Z"
    },
    "papermill": {
     "duration": 0.115747,
     "end_time": "2022-12-18T11:53:47.660129",
     "exception": false,
     "start_time": "2022-12-18T11:53:47.544382",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#최종 데이터 예측\n",
    "\n",
    "levels(test$Embarked)<-levels(df$Embarked)\n",
    "m1<-randomForest(Survived~.-(PassengerId),data=df, ntree=100)\n",
    "p1=predict(m1,test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "1bf5d1e1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:47.734375Z",
     "iopub.status.busy": "2022-12-18T11:53:47.733281Z",
     "iopub.status.idle": "2022-12-18T11:53:47.749155Z",
     "shell.execute_reply": "2022-12-18T11:53:47.748120Z"
    },
    "papermill": {
     "duration": 0.053872,
     "end_time": "2022-12-18T11:53:47.749268",
     "exception": false,
     "start_time": "2022-12-18T11:53:47.695396",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>Accuracy:</strong> 0.932853717026379"
      ],
      "text/latex": [
       "\\textbf{Accuracy:} 0.932853717026379"
      ],
      "text/markdown": [
       "**Accuracy:** 0.932853717026379"
      ],
      "text/plain": [
       " Accuracy \n",
       "0.9328537 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#평가\n",
    "result<-caret::confusionMatrix(p1, as.factor(y_test$Survived))$overall[1]\n",
    "result"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "e7583531",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-12-18T11:53:47.827452Z",
     "iopub.status.busy": "2022-12-18T11:53:47.826345Z",
     "iopub.status.idle": "2022-12-18T11:53:47.850242Z",
     "shell.execute_reply": "2022-12-18T11:53:47.849518Z"
    },
    "papermill": {
     "duration": 0.064076,
     "end_time": "2022-12-18T11:53:47.850365",
     "exception": false,
     "start_time": "2022-12-18T11:53:47.786289",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>PassengerId</th><th scope=col>Survived</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>892</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>893</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>894</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>895</td><td>1</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>896</td><td>2</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>897</td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & PassengerId & Survived\\\\\n",
       "  & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 892 & 1\\\\\n",
       "\t2 & 893 & 1\\\\\n",
       "\t3 & 894 & 1\\\\\n",
       "\t4 & 895 & 1\\\\\n",
       "\t5 & 896 & 2\\\\\n",
       "\t6 & 897 & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | PassengerId &lt;int&gt; | Survived &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 892 | 1 |\n",
       "| 2 | 893 | 1 |\n",
       "| 3 | 894 | 1 |\n",
       "| 4 | 895 | 1 |\n",
       "| 5 | 896 | 2 |\n",
       "| 6 | 897 | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "  PassengerId Survived\n",
       "1 892         1       \n",
       "2 893         1       \n",
       "3 894         1       \n",
       "4 895         1       \n",
       "5 896         2       \n",
       "6 897         1       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ans<-cbind('PassengerId'=test$PassengerId,'Survived'=p1)\n",
    "write.csv(ans,\"result.csv\",row.names=F)\n",
    "confirm<-read.csv(\"result.csv\")\n",
    "head(confirm)"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 5.969592,
   "end_time": "2022-12-18T11:53:47.996770",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-12-18T11:53:42.027178",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
