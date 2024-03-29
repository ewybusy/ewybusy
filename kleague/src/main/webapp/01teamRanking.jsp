<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- 파비콘(타이틀 왼쪽 그림) -->
<link href="https://media.cdnandroid.com/item_images/920521/imagen-k-league-k-ee-e-0thumb.jpeg" rel="shortcut icon" type="image/x-icon">

        <title>팀 순 위</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="resources/css/styles.css" rel="stylesheet"/>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        
        <!-- 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
	      <style>
      p {
        font-family: 'Nanum Gothic', sans-serif;
        font-size: 20px;
      }
      </style>
      
    </head>
   <main>
                    <div class="container-fluid px-4">
                    
                        <h1 class="mt-4" style="text-align:center;">팀순위</h1> 
                        <ol class="breadcrumb mb-4">
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body" style=" text-align:center;">
                               2022년 08월 03일(수) 현재 팀순위입니다.
                            </div>
                        </div>
                        <div class="card mb-4">
          
          </div></div><div class="dataTable-container"><table id="datatablesSimple" class="dataTable-table">
                                    <thead>
                                   
                                        <tr>
                                        <th data-sortable="" style="width: 5%; text-align:center;">
                                        <class="dataTable-sorter">순위</a></th>

                                        <th data-sortable="" style="width: 15%; text-align:center;">
                                        <class="dataTable-sorter">클럽</a></th>

                                        <th data-sortable="" style="width: 10%; text-align:center;">
		                                <class="dataTable-sorter">경기</a></th>
		                                
                                        <th data-sortable="" style="width: 10%; text-align:center;">                                       
                                        <class="dataTable-sorter">승점</a></th>
                                        
                                        <th data-sortable="" style="width: 10%; text-align:center;">                                        
                                        <class="dataTable-sorter">승</a></th>
                                        
                                        <th data-sortable="" style="width: 10%; text-align:center;">
                                        <class="dataTable-sorter">무</a></th>
                                        
                                        <th data-sortable="" style="width: 10%; text-align:center;">
                                        <class="dataTable-sorter">패</a></th>
                                        
                                        <th data-sortable="" style="width: 10%; text-align:center;">
                                  		<class="dataTable-sorter">득점</a></th>
                                  		
                                        <th data-sortable="" style="width: 10%; text-align:center;">
                                        <class="dataTable-sorter">실점</a></th>
                                        
                                        <th data-sortable="" style="width: 10%; text-align:center;">
                                        <class="dataTable-sorter">득실</a></th>
                                        </tr>
                                        
                                    </thead>
                                    
                                    <tbody style="text-align:center;">
                               		<tr><td>1</td><td style="text-align:left;">울산현대</td><td>24</td><td>51</td><td>15</td><td>6</td><td>3</td><td>36</td><td>21</td><td>15</td></tr>
                                    <tr><td>2</td><td style="text-align:left;">전북현대</td><td>23</td><td>45</td><td>13</td><td>6</td><td>4</td><td>30</td><td>19</td><td>11</td></tr>
                                    <tr><td>3</td><td style="text-align:left;">포항스틸러스</td><td>24</td><td>40</td><td>11</td><td>7</td><td>6</td><td>33</td><td>21</td><td>12</td></tr>
                                    <tr><td>4</td><td style="text-align:left;">제주유나이티드</td><td>24</td><td>34</td><td>9</td><td>7</td><td>8</td><td>29</td><td>30</td><td>-1</td></tr>
                                    <tr><td>5</td><td style="text-align:left;">인천유나이티드</td><td>23</td><td>33</td><td>8</td><td>9</td><td>6</td><td>27</td><td>25</td><td>2</td></tr>
                                    <tr><td>6</td><td style="text-align:left;">FC서울</td><td>24</td><td>30</td><td>7</td><td>9</td><td>8</td><td>30</td><td>29</td><td>1</td></tr>
                                    <tr><td>7</td><td style="text-align:left;">수원FC</td><td>23</td><td>29</td><td>8</td><td>5</td><td>10</td><td>35</td><td>38</td><td>-3</td></tr>
                                    <tr><td>8</td><td style="text-align:left;">강원FC</td><td>23</td><td>27</td><td>7</td><td>6</td><td>10</td><td>31</td><td>36</td><td>-5</td></tr>
                                    <tr><td>9</td><td style="text-align:left;">대구FC</td><td>23</td><td>27</td><td>5</td><td>12</td><td>6</td><td>30</td><td>29</td><td>1</td></tr>
                                    <tr><td>10</td><td style="text-align:left;">김천상무</td><td>24</td><td>23</td><td>5</td><td>8</td><td>11</td><td>27</td><td>29</td><td>-2</td></tr>
                                    <tr><td>11</td><td style="text-align:left;">수원삼성</td><td>23</td><td>21</td><td>4</td><td>9</td><td>10</td><td>15</td><td>26</td><td>-11</td></tr>
                                    <tr><td>12</td><td style="text-align:left;">성남FC</td><td>24</td><td>18</td><td>4</td><td>6</td><td>14</td><td>23</td><td>43</td><td>-20</td></tr>
                                    
                                    </tbody>
                                </table></div>
                                
                                </div></div>
                            </div>
                        </div>
                    </div>
                </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="resources/js/scripts.js"></script>
        
    </body>
</html>
