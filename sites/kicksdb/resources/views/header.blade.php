<header class="header">
    <div class="nav">
      <div class="container-fluid">
        <div class="row align-items-center">
          <div class="col-1 col-sm-1 col-md-1 col-lg-3">
            <button class="menu">
              <svg viewBox="0 0 32 32" fill="none" width="32" height="32" xlmns="http://www.w3.org/2000/svg"><path d="M5.05366 12.0074H26.9346C27.52 12.0074 28 11.5527 28 10.9982C28 10.4436 27.52 10 26.9346 10H5.05366C4.46829 10 4 10.4436 4 10.9982C4 11.5416 4.46829 12.0074 5.05366 12.0074ZM5.05366 16.9982H26.9346C27.52 16.9982 28 16.5434 28 16C28 15.4344 27.52 14.9797 26.9346 14.9797H5.05366C4.46829 14.9797 4 15.4344 4 16C4 16.5434 4.46829 16.9982 5.05366 16.9982ZM5.05366 22H26.9346C27.52 22 28 21.5453 28 20.9797C28 20.4251 27.52 19.9815 26.9346 19.9815H5.05366C4.46829 19.9815 4 20.4362 4 20.9797C4 21.5342 4.46829 22 5.05366 22Z" fill="black"></path></svg>
            </button>
          </div>
          <div class="col-10 col-sm-10 col-md-10 col-lg-5">
            <div class="logo d-flex justify-content-center">
              <span>Kicks DB</span>
            </div>
          </div>
          <div class="col-1 col-sm-1 col-md-1 col-lg-4">
            <div class='search justify-content-end'>
              {{-- Mobile --}}
              <button  type="button" class="btn search__button-mobile d-lg-none" data-bs-toggle="modal" data-bs-target="#searchModal">
                <i>
                  <svg viewBox="0 0 25 24" fill="none" width="34" height="34" xlmns="http://www.w3.org/2000/svg"><path d="M7.74658 11.125C7.74658 8.70875 9.70534 6.75 12.1216 6.75C14.5378 6.75 16.4966 8.70875 16.4966 11.125C16.4966 13.5412 14.5378 15.5 12.1216 15.5C9.70534 15.5 7.74658 13.5412 7.74658 11.125ZM12.1216 5C8.73884 5 5.99658 7.74226 5.99658 11.125C5.99658 14.5077 8.73884 17.25 12.1216 17.25C13.5005 17.25 14.773 16.7943 15.7967 16.0253C15.8212 16.0579 15.8482 16.0891 15.8779 16.1187L18.5029 18.7437C18.8446 19.0854 19.3986 19.0854 19.7403 18.7437C20.082 18.402 20.082 17.848 19.7403 17.5063L17.1153 14.8813C17.0857 14.8516 17.0545 14.8246 17.0219 14.8001C17.7909 13.7764 18.2466 12.5039 18.2466 11.125C18.2466 7.74226 15.5043 5 12.1216 5Z" fill="black"></path></svg>
                </i>
              </button>
              <!-- Modal -->
              <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="Search" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-body d-flex p-2 align-items-center">
                      <input class="search__input" type="text" placeholder="search" autofocus>
                      <button class="search__button-desktop" type="button"> 
                        <i>
                          <svg viewBox="0 0 25 24" fill="none" width="28" height="28" xlmns="http://www.w3.org/2000/svg"><path d="M7.74658 11.125C7.74658 8.70875 9.70534 6.75 12.1216 6.75C14.5378 6.75 16.4966 8.70875 16.4966 11.125C16.4966 13.5412 14.5378 15.5 12.1216 15.5C9.70534 15.5 7.74658 13.5412 7.74658 11.125ZM12.1216 5C8.73884 5 5.99658 7.74226 5.99658 11.125C5.99658 14.5077 8.73884 17.25 12.1216 17.25C13.5005 17.25 14.773 16.7943 15.7967 16.0253C15.8212 16.0579 15.8482 16.0891 15.8779 16.1187L18.5029 18.7437C18.8446 19.0854 19.3986 19.0854 19.7403 18.7437C20.082 18.402 20.082 17.848 19.7403 17.5063L17.1153 14.8813C17.0857 14.8516 17.0545 14.8246 17.0219 14.8001C17.7909 13.7764 18.2466 12.5039 18.2466 11.125C18.2466 7.74226 15.5043 5 12.1216 5Z" fill="#646464"></path></svg>
                        </i>
                      </button>
                      <button type="button" class="btn-close ms-2" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                  </div>
                </div>
              </div>
              {{-- Desktop --}}
              <input class="search__input d-none d-lg-block" type="text" placeholder="search">
              <button class="search__button-desktop d-none d-lg-block" type="button"> 
                <i>
                  <svg viewBox="0 0 25 24" fill="none" width="28" height="28" xlmns="http://www.w3.org/2000/svg"><path d="M7.74658 11.125C7.74658 8.70875 9.70534 6.75 12.1216 6.75C14.5378 6.75 16.4966 8.70875 16.4966 11.125C16.4966 13.5412 14.5378 15.5 12.1216 15.5C9.70534 15.5 7.74658 13.5412 7.74658 11.125ZM12.1216 5C8.73884 5 5.99658 7.74226 5.99658 11.125C5.99658 14.5077 8.73884 17.25 12.1216 17.25C13.5005 17.25 14.773 16.7943 15.7967 16.0253C15.8212 16.0579 15.8482 16.0891 15.8779 16.1187L18.5029 18.7437C18.8446 19.0854 19.3986 19.0854 19.7403 18.7437C20.082 18.402 20.082 17.848 19.7403 17.5063L17.1153 14.8813C17.0857 14.8516 17.0545 14.8246 17.0219 14.8001C17.7909 13.7764 18.2466 12.5039 18.2466 11.125C18.2466 7.74226 15.5043 5 12.1216 5Z" fill="#646464"></path></svg>
                </i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
