<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Master Layout
 * Loads Header, Sidebar, Topbar, Dynamic Content and Footer.
 * Passes all available view variables to child layout files.
 */

// Pass all variables received from MY_Controller to child views.
$layout_data = get_defined_vars();

// Header
$this->load->view('layouts/header', $layout_data);

// Sidebar
$this->load->view('layouts/sidebar', $layout_data);
?>

<!-- Main Content Wrapper -->
<div id="main-wrapper" class="flex-1 flex flex-col bg-slate-50 min-h-screen">

    <!-- Global Floating Toast Container -->
    <div id="toast-container" aria-live="polite" aria-atomic="true"></div>

    <!-- Hidden Flash Notification Trigger for app.js Toast System -->
    <?php if ($this->session->flashdata('success') || $this->session->flashdata('error')): ?>
        <div id="flash-toast-trigger" class="hidden" 
             data-success="<?php echo html_escape($this->session->flashdata('success')); ?>" 
             data-error="<?php echo html_escape($this->session->flashdata('error')); ?>"></div>
    <?php endif; ?>

    <!-- Top Navigation -->
    <?php $this->load->view('layouts/topbar', $layout_data); ?>

    <!-- Main Page Content -->
    <main class="flex-1 p-4 sm:p-6 lg:p-8">
        <div class="max-w-7xl mx-auto w-full">

            <!-- Dynamic Content View -->
            <?php
            if (!empty($content_view)) {
                $this->load->view($content_view, $layout_data);
            } else {
                echo '<div class="alert alert-warning rounded-2xl">No content view specified.</div>';
            }
            ?>

        </div>
    </main>

    <!-- Footer -->
    <?php $this->load->view('layouts/footer', $layout_data); ?>

</div>